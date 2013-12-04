// GPIO.c
// Runs on LM3S811
// Initialize four GPIO pins as outputs.  Continually generate output to
// drive simulated stepper motor.
// Daniel Valvano
// July 11, 2011

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to the Arm Cortex M3",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2011
   Example 2.2, Program 2.8, Figure 2.27

 Copyright 2011z by Jonathan W. Valvano, valvano@mail.utexas.edu
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

// PD3 is an output to LED3, negative logic
// PD2 is an output to LED2, negative logic
// PD1 is an output to LED1, negative logic
// PD0 is an output to LED0, negative logic



#define GPIO_PORTD_DATA_R       (*((volatile unsigned long *)0x400073FC))
#define GPIO_PORTD_DIR_R        (*((volatile unsigned long *)0x40007400))
#define GPIO_PORTD_AFSEL_R      (*((volatile unsigned long *)0x40007420))
#define GPIO_PORTD_DEN_R        (*((volatile unsigned long *)0x4000751C))
#define SYSCTL_RCGC2_R          (*((volatile unsigned long *)0x400FE108))
#define SYSCTL_RCGC2_GPIOD      0x00000008  // port D Clock Gating Control
#define LEDS                    (*((volatile unsigned long *)0x4000703C))
// access PD3-PD0

#include "globals.h"
//---------------------OutCRLF---------------------
// Output a CR,LF to UART to go to a new line
// Input: none
// Output: none
void OutCRLF(void){
  UART_OutChar(CR);
  UART_OutChar(LF);
}

char testData = 0;

int main(void){  volatile unsigned long delay;
	
	unsigned char i;
  char string[20];  // global to assist in debugging
  unsigned long n;
	char inp [1];
	char testggg [3];

	
  SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_OSC_MAIN |
                 SYSCTL_XTAL_6MHZ);
	testData = 0;
	PLL_Init();
	testData = 0;
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOD | SYSCTL_RCGC2_GPIOB;; // activate port D
	testData = 0;
//	SysTick_Init();
//  UART_Init();              // initialize UART
//  OutCRLF();
	testData = 0;
	Switch_Init();
	XBeeInit();
	//DisableInterrupts();
	Timer0A_Init(16000);
	EnableInterrupts();
//	testggg[0] = '2';
//	testggg[1] = '\n';
//	testggg[2] = 0;
	XBee_sendDataFrame(testggg);
//  while(1){
//    LEDS = 10; // 1010, LED is 0101
//    LEDS = 9;  // 1001, LED is 0110
//    LEDS = 5;  // 0101, LED is 1010
//    LEDS = 6;  // 0110, LED is 1001
//  }  
//
	while(1){
//		testData = readB();
//			XBee_sendDataFrame(testggg);

//		SysTick_Wait10ms(10);
//				SysTick_Wait10ms(10);
//		SysTick_Wait10ms(10);
//		SysTick_Wait10ms(10);
//		SysTick_Wait10ms(10);
//		SysTick_Wait10ms(10);


	//	inp[0] = '1';
	//	XBee_sendDataFrame(inp);
	}

}
