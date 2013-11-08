#include "Globals.h"
#include "Switch.h"

#define SED1335_PORT GPIOE

#define SED1335_A0	GPIO_Pin_10
#define SED1335_WR	GPIO_Pin_8
#define SED1335_RD	GPIO_Pin_9
#define SED1335_CS	GPIO_Pin_11
#define SED1335_RES	GPIO_Pin_12

#define SED1335_D0   0

GPIO_InitTypeDef GPIO_InitStructure;

void GPIO_SetBits(volatile unsigned char port, unsigned char data){
	port = data;
}

void GPIO_ResetBits(volatile unsigned char port, unsigned char data){
	
}

//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
void GLCD_InitPorts(void)
{
	volatile unsigned long delay;
	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOG; // activate port G
	delay = 0x01; //just set it do have a delay;
 	GPIO_PORTE_PUR_R = 0xFF;
	GPIO_PORTE_DIR_R &= 0xFF;  // make PD5-4 in (PD5-4 buttons)
	GPIO_PORTE_DEN_R |= 0xFF;   // enable digital I/O on PD5-4
	GPIO_PORTE_IS_R &= ~0xFF;   // PD5-4 is edge-sensitive (default setting)
	GPIO_PORTE_IBE_R &= ~0xFF;  // PD5-4 is not both edges (default setting)
	GPIO_PORTE_IEV_R &= ~0xFF;  // PD5-4 falling edge event (default setting)
	GPIO_PORTE_ICR_R = 0xFF;    // clear flag5-4
	GPIO_PORTE_IM_R |= 0xFF;    // enable interrupt on PD5-4
                            	// GPIO PortD=priority 2
}
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
void GLCD_WriteData(unsigned char dataToWrite)
{
GPIO_SetBits(SED1335_PORT, (dataToWrite << SED1335_D0));
dataToWrite ^= 0xFF;
GPIO_ResetBits(SED1335_PORT, (dataToWrite << SED1335_D0));

GPIO_ResetBits(SED1335_PORT, (SED1335_CS | SED1335_A0 | SED1335_WR));
asm("nop");asm("nop");asm("nop");
GPIO_SetBits(SED1335_PORT, (SED1335_CS | SED1335_A0 | SED1335_WR));
}
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
void GLCD_WriteCommand(unsigned char commandToWrite)
{
GPIO_SetBits(SED1335_PORT, (commandToWrite << SED1335_D0));
commandToWrite ^= 0xFF;
GPIO_ResetBits(SED1335_PORT, (commandToWrite << SED1335_D0));

GPIO_ResetBits(SED1335_PORT, (SED1335_CS | SED1335_WR));
asm("nop");asm("nop");asm("nop");
GPIO_SetBits(SED1335_PORT, (SED1335_CS | SED1335_WR));
}
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
unsigned char GLCD_ReadData(void)
{
unsigned char tmp;
GPIO_StructInit(&GPIO_InitStructure);  
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

return tmp;
}
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
unsigned char GLCD_ReadByteFromROMMemory(unsigned char * ptr)
{
return *(ptr);
}
//









