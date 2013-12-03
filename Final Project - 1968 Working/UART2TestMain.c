// UART2TestMain.c
// Runs on LM3S1968
// Tests the UART0 to implement bidirectional data transfer to and from a
// computer running HyperTerminal.  This time, interrupts and FIFOs
// are used.
// Daniel Valvano
// October 9, 2011

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to the Arm Cortex M3",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2011

 Copyright 2011 by Jonathan W. Valvano, valvano@mail.utexas.edu
    You may use, edit, run or distribute this file
    as long as the above copyright notice remains
 THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 VALVANO SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 For more information about my classes, my research, and my books, see
 http://users.ece.utexas.edu/~valvano/
 */

// U0Rx (VCP receive) connected to PA0
// U0Tx (VCP transmit) connected to PA1

#include "UART2.h"
#include "lm3s1968.h"
#include "Xbee.h"
#include "inc/hw_types.h"
#include "driverlib/sysctl.h"
#include "Output.h"
#include "SysTick.h"
void EnableInterrupts(void);
void WaitForInterrupt(void);
//---------------------OutCRLF---------------------
// Output a CR,LF to UART to go to a new line
// Input: none
// Output: none
void OutCRLF(void){
  UART_OutChar(CR);
  UART_OutChar(LF);
}
//debug code
int main(void){
  unsigned char i;
//  char string[20];  // global to assist in debugging
//  unsigned long n;

  //
  // Set the clocking to run at 50MHz from the PLL.
  //
  SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_OSC_MAIN |
                 SYSCTL_XTAL_8MHZ);
	SysTick_Init();
	Output_Init();
	Output_Color(15);
  UART_Init();              // initialize UART
	Xbee_Init(12);
	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOG;
	i = 0;
	i += 1;
	GPIO_PORTG_DEN_R |= 0x04;
	GPIO_PORTG_DIR_R |= 0x04;
	GPIO_PORTG_DATA_R &= ~0x04;
//  OutCRLF();
//  for(i='A'; i<='Z'; i=i+1){// print the uppercase alphabet
//    UART_OutChar(i);
//  }
//  OutCRLF();
//  UART_OutChar(' ');
//  for(i='a'; i<='z'; i=i+1){// print the lowercase alphabet
//    UART_OutChar(i);
//  }
//  OutCRLF();
//  UART_OutChar('-');
//  UART_OutChar('-');
//  UART_OutChar('>');
//	EnableInterrupts();
  while(1){
//    UART_OutString("InString: ");
//    UART_InString(string,19);
//    UART_OutString(" OutString="); UART_OutString(string); OutCRLF();

//    UART_OutString("InUDec: ");  n=UART_InUDec();
//    UART_OutString(" OutUDec="); UART_OutUDec(n); OutCRLF();

//    UART_OutString("InUHex: ");  n=UART_InUHex();
//    UART_OutString(" OutUHex="); UART_OutUHex(n); OutCRLF();
//		WaitForInterrupt();
		GPIO_PORTG_DATA_R ^= 0x04;
		XBee_RecieveRxFrame();
//		XBee_TxStatus();
//		XBee_Display();
  }
}
