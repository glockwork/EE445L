#include "Globals.h"
#include "Switch.h"

/*
	TODO: RST not pinned!
*/

unsigned char SED1335_A0 = 0x01;
unsigned char SED1335_WR =	0x02;
unsigned char SED1335_RD =	0x04;
unsigned char SED1335_CS =	0x08;

unsigned char SED1335_RES =	0x80;

#define SED1335_D0   0

//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
void GLCD_InitializePorts(void)
{
	volatile unsigned long delay;
	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOF; // activate port G
	delay = 0x01; //just set it do have a delay;

	//PORT F
	//PORT F = DB0-7
	GPIO_PORTF_DIR_R |= 0xFF;  // port F direction = out
	GPIO_PORTF_DEN_R |= 0xFF;   // enable digital I/O on Port F
	GPIO_PORTF_AFSEL_R &= ~0xFF; // disable alt fnc for port F
	
	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOE; // activate port E
	delay = 0x01; //just set it do have a delay;

	//PORT E
	//PE0 = A0
	//PE1 = R/W (R)
	//PE2 = W (E)
	//PE3 = C/S
	GPIO_PORTE_DIR_R |= 0x0F;  // port E direction = out
	GPIO_PORTE_DEN_R |= 0x0F;   // enable digital I/O on Port E
	GPIO_PORTE_AFSEL_R &= ~0x0F; // disable alt fnc for port E	

	/*
	//PORT C
	//PC7 = RST
	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GP1IOC; // activate port G
	delay = 0x01; //just set it do have a delay;

	GPIO_PORTC_DIR_R |= 0x80;  // port C[7] direction = out
	GPIO_PORTC_DEN_R |= 0x80;   // enable digital I/O on Port C
	GPIO_PORTC_AFSEL_R &= ~0x80; // disable alt fnc for port C
	*/
}
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
void GLCD_WriteData(unsigned char dataToWrite)
{
	/*GPIO_SetBits(SED1335_PORT, (dataToWrite << SED1335_D0));
	dataToWrite ^= 0xFF;
	GPIO_ResetBits(SED1335_PORT, (dataToWrite << SED1335_D0));

	GPIO_ResetBits(SED1335_PORT, (SED1335_CS | SED1335_A0 | SED1335_WR));
	asm("nop");asm("nop");asm("nop");
	GPIO_SetBits(SED1335_PORT, (SED1335_CS | SED1335_A0 | SED1335_WR));*/
	
	volatile unsigned long delay;
	
	//writes data
	GPIO_PORTF_DIR_R |= 0xFF; //set port F = output
	GPIO_PORTF_DATA_R = dataToWrite;
	
	GPIO_PORTE_DATA_R &= ~(SED1335_CS | SED1335_A0 | SED1335_WR); 
	delay = 0x01;
	
	GPIO_PORTE_DATA_R |= (SED1335_CS | SED1335_A0 | SED1335_WR);
		
}
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
void GLCD_WriteCommand(unsigned char commandToWrite)
{
	/*
GPIO_SetBits(SED1335_PORT, (commandToWrite << SED1335_D0));
commandToWrite ^= 0xFF;
GPIO_ResetBits(SED1335_PORT, (commandToWrite << SED1335_D0));

GPIO_ResetBits(SED1335_PORT, (SED1335_CS | SED1335_WR));
asm("nop");asm("nop");asm("nop");
GPIO_SetBits(SED1335_PORT, (SED1335_CS | SED1335_WR));*/

	
	volatile unsigned long delay;
	
	//writes data
	GPIO_PORTF_DIR_R |= 0xFF; //set port F = output
	GPIO_PORTF_DATA_R = commandToWrite;
	
	GPIO_PORTE_DATA_R &= ~(SED1335_CS | SED1335_WR); 
	delay = 0x01;
	
	GPIO_PORTE_DATA_R |= (SED1335_CS | SED1335_WR);
		
}
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
unsigned char GLCD_ReadData(void)
{
/*GPIO_StructInit(&GPIO_InitStructure);  
GPIO_InitStructure.GPIO_Pin = 0xFF << SED1335_D0;
GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
GPIO_Init(SED1335_PORT, &GPIO_InitStructure);

GPIO_ResetBits(SED1335_PORT, (SED1335_CS | SED1335_RD));
asm("nop");
tmp = ((GPIO_ReadInputData(SED1335_PORT) >> SED1335_D0) & 0xFF);
GPIO_SetBits(SED1335_PORT, (SED1335_CS | SED1335_RD));

GPIO_StructInit(&GPIO_InitStructure);
GPIO_InitStructure.GPIO_Pin = (0xFF << SED1335_D0);
GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
GPIO_Init(SED1335_PORT, &GPIO_InitStructure);

return tmp;*/
	unsigned char tmp;

	volatile unsigned long delay;
	GPIO_PORTE_DATA_R &= ~(SED1335_CS | SED1335_RD);
	delay = 0x01;
	//read from port F
	GPIO_PORTF_DIR_R &=0x00;
	delay = 0x01;
	tmp = GPIO_PORTF_DATA_R;
	GPIO_PORTE_DATA_R |= (SED1335_CS | SED1335_RD);
	
	return tmp;
}
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
unsigned char GLCD_ReadByteFromROMMemory(unsigned char * ptr)
{
	return *(ptr);
}
//









