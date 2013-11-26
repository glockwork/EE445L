#include "lm3s1968.h"
#include "UART2.h"
#include "FIFO.h"
#include "Systick.h" 
#include "Output.h"
#include <stdio.h>

char ATCMD1[8] = {'A','T','D','L','6','9',0x0D,0};
char ATCMD2[7] = {'A','T','D','H','0',0x0D,0};
char ATCMD3[8] = {'A','T','M','Y','6','6',0x0D,0};
char ATCMD4[7] = {'A','T','A','P','1',0x0D,0};
char ATCMD5[6] = {'A','T','C','N',0x0D,0};

void Xbee_Init(unsigned char ChannelNum){
	unsigned char nextStep = 0;
	printf("Initializing...%c",NEWLINE);
	while(nextStep == 0){
		UART_OutChar('x');
		SysTick_Wait10ms(110);//wait 1.1ms
		UART_OutChar('+');
		UART_OutChar('+');
		UART_OutChar('+');
		SysTick_Wait10ms(110);//wait 1.1ms
		nextStep = lookforCR();
	}
	printf("okay1%c",NEWLINE);
	nextStep = 0;
	while(nextStep == 0){
		UART_OutString(ATCMD1);
		SysTick_Wait10ms(2);
		nextStep = lookforCR();
	}
	printf("okay2%c",NEWLINE);
	nextStep = 0;
	while(nextStep == 0){
		UART_OutString(ATCMD2);
		SysTick_Wait10ms(2);
		nextStep = lookforCR();
	}
	printf("okay3%c",NEWLINE);
	nextStep = 0;
	while(nextStep == 0){
		UART_OutString(ATCMD3);
		SysTick_Wait10ms(2);
		nextStep = lookforCR();
	}
	printf("okay4%c",NEWLINE);
	nextStep = 0;
	while(nextStep == 0){
		UART_OutString(ATCMD4);
		SysTick_Wait10ms(2);
		nextStep = lookforCR();
	}
	printf("okay5%c",NEWLINE);
	nextStep = 0;
	while(nextStep == 0){
		UART_OutString(ATCMD5);
		SysTick_Wait10ms(2);
		nextStep = lookforCR();
	}
	printf("okay6%c",NEWLINE);
}

unsigned char frameCheckSum = 0;
unsigned char RxCheckSum = 0;
unsigned long RxFrameLength = 0;
unsigned char newMessage = 0;
unsigned char RxFrameType;
unsigned char RxFrameId;
unsigned short TxAdrs;
unsigned char decryptionStage = 0;
unsigned char successfulDecryption = 0;
unsigned char messageBuffer[1024];

void XBee_RecieveRxFrame(void){
	unsigned char byte = UART_InChar();
	unsigned short tempNum = 0;
	unsigned short messageLength = 0;
	unsigned short bufferIdx = 0;
	if(decryptionStage == 0){
		if(byte == 0x7E){
			decryptionStage += 1;
			RxCheckSum = 0;
			//printf("%c",byte);
		}
	}
	else if(decryptionStage == 1){
		tempNum = byte;
		tempNum = tempNum << 8;
		byte = UART_InChar();
		tempNum = tempNum + byte;
		RxFrameLength = tempNum;
		decryptionStage += 1;
	}
	else if(decryptionStage == 2){
		RxFrameType = byte;
		RxCheckSum += byte;
		decryptionStage += 1;
	}
	else if(decryptionStage == 3){
		RxFrameId = byte;
		RxCheckSum += byte;
		decryptionStage += 1;
	}
	else if(decryptionStage == 4){
		tempNum = byte;
		RxCheckSum += byte;
		tempNum = tempNum << 8;
		byte = UART_InChar();
		RxCheckSum += byte;
		tempNum = tempNum + byte;
		TxAdrs= tempNum;
		decryptionStage += 1;
	}
	else if(decryptionStage == 5){
		RxCheckSum += byte;
		decryptionStage += 1;
	}
	else if(decryptionStage == 6){
		messageLength = RxFrameLength - 5;
//		messageBuffer[bufferIdx] = byte;
//		bufferIdx += 1;
//		messageLength -= 1;
		RxCheckSum += byte;
		messageBuffer[bufferIdx] = byte;
		for(bufferIdx = 1; bufferIdx <messageLength; bufferIdx++){
		  messageBuffer[bufferIdx] = UART_InChar();
			RxCheckSum += messageBuffer[bufferIdx];
		}
		newMessage = 1;
		messageBuffer[bufferIdx] = 0;
		printf("%s",messageBuffer);
		decryptionStage += 1;
	}
	else if(decryptionStage == 7){
		decryptionStage = 0;
		frameCheckSum = byte;
		if((RxCheckSum + frameCheckSum) == 0xFF){
			successfulDecryption = 1;
		}
		else{
			successfulDecryption = 0;
		}
	}
}

void XBee_TxStatus(void){
	UART_OutChar(0x7E);
	UART_OutChar(0x00);
	UART_OutChar(0x03);
	UART_OutChar(0x89);
	UART_OutChar(RxFrameId);
	if(successfulDecryption == 1){
		UART_OutChar(0x01);
		UART_OutChar(0x84);
	}
	else{
		UART_OutChar(0x00);
		UART_OutChar(0xB5);
	}
}

//void XBee_Display(void){
//	if(newMessage == 1){
//		printf("%s",messageBuffer);
//	  newMessage = 0;
//	}
//}
