// Performance.c
// Runs on LM3S1968
// Use the SysTick timer to measure approximately how long it takes to
// calculate a square root.  Also, toggle PG2 to use an oscilloscope
// or logic analyzer to measure the execution time as the high pulse
// time of the LED.
// Daniel Valvano
// March 6, 2012

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to the Arm Cortex M3",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2011
   Program 3.17

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

// oscilloscope connected to PG2

#include "hw_types.h"
#include "sysctl.h"
#include "lm3s1968.h"

#include "FIFO.h"
#include "SysTick.h"
#include "Output.h"

#define NVIC_EN0_INT19          0x00080000  // Interrupt 19 enable
#define NVIC_EN0_R              (*((volatile unsigned long *)0xE000E100))  // IRQ 0 to 31 Set Enable Register
#define NVIC_PRI4_R             (*((volatile unsigned long *)0xE000E410))  // IRQ 16 to 19 Priority Register
#define TIMER0_CFG_R            (*((volatile unsigned long *)0x40030000))
#define TIMER0_TAMR_R           (*((volatile unsigned long *)0x40030004))
#define TIMER0_CTL_R            (*((volatile unsigned long *)0x4003000C))
#define TIMER0_IMR_R            (*((volatile unsigned long *)0x40030018))
#define TIMER0_MIS_R            (*((volatile unsigned long *)0x40030020))
#define TIMER0_ICR_R            (*((volatile unsigned long *)0x40030024))
#define TIMER0_TAILR_R          (*((volatile unsigned long *)0x40030028))
#define TIMER0_TAR_R            (*((volatile unsigned long *)0x40030048))
#define TIMER_CFG_16_BIT        0x00000004  // 16-bit timer configuration,
                                            // function is controlled by bits
                                            // 1:0 of GPTMTAMR and GPTMTBMR
#define TIMER_TAMR_TAMR_PERIOD  0x00000002  // Periodic Timer mode
#define TIMER_CTL_TAEN          0x00000001  // GPTM TimerA Enable
#define TIMER_IMR_TATOIM        0x00000001  // GPTM TimerA Time-Out Interrupt
                                            // Mask
#define TIMER_ICR_TATOCINT      0x00000001  // GPTM TimerA Time-Out Raw
                                            // Interrupt
#define TIMER_TAILR_TAILRL_M    0x0000FFFF  // GPTM TimerA Interval Load
                                            // Register Low
#define GPIO_PORTF_DATA_R       (*((volatile unsigned long *)0x400253FC))
#define GPIO_PORTF_DIR_R        (*((volatile unsigned long *)0x40025400))
#define GPIO_PORTF_DEN_R        (*((volatile unsigned long *)0x4002551C))
#define GPIO_PORTF0             (*((volatile unsigned long *)0x40025004))
#define GPIO_PORTF1             (*((volatile unsigned long *)0x40025008))
#define GPIO_PORTF2             (*((volatile unsigned long *)0x40025010))
#define GPIO_PORTF3             (*((volatile unsigned long *)0x40025020))
#define GPIO_PORTG_DATA_R       (*((volatile unsigned long *)0x400263FC))
#define GPIO_PORTG_DIR_R        (*((volatile unsigned long *)0x40026400))
#define GPIO_PORTG_DEN_R        (*((volatile unsigned long *)0x4002651C))
#define GPIO_PORTG2             (*((volatile unsigned long *)0x40026010))

#define SYSCTL_RCGC1_R          (*((volatile unsigned long *)0x400FE104))
#define SYSCTL_RCGC2_R          (*((volatile unsigned long *)0x400FE108))
#define SYSCTL_RCGC1_TIMER0     0x00010000  // timer 0 Clock Gating Control
#define SYSCTL_RCGC2_GPIOG      0x00000040  // Port G Clock Gating Control
#define SYSCTL_RCGC2_GPIOF      0x00000020  // Port F Clock Gating Control
#define TX2FIFOSIZE             32
#define RX2FIFOSIZE             27
#define HISTOGRAMSIZE           32          // > 2*# instructions in get()
#define INTPERIOD               750         // interrupt period (50MHz cycles)
#define INTVARIATION            500         // maximum interrupt period variation from "INTPERIOD" (50MHz cycles)


// Newton's method
// s is an integer
// sqrt(s) is an integer
/*unsigned long sqrt(unsigned long s){
unsigned long t;         // t*t will become s
int n;                   // loop counter to make sure it stops running
  t = s/16+1;            // initial guess 
  for(n = 16; n; --n){   // guaranteed to finish
    t = ((t*t+s)/t)/2;  
  }
  return t; 
}*/

/*
volatile unsigned long before, elapsed, ss, tt;
int main(void){ volatile unsigned long delay;
  SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_OSC_MAIN |
                 SYSCTL_XTAL_8MHZ);     // 50 MHz
  SysTick_Init(); // initialize SysTick timer, see SysTick.c
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOG; // activate clock for Port G
  delay = SYSCTL_RCGC2_R;               // allow time to finish activating
  GPIO_PORTG_DIR_R |= 0x04;             // make PG2 output (PG2 built-in LED)
  GPIO_PORTG_AFSEL_R &= ~0x04;          // disable alt funct on PG2 (default setting)
  GPIO_PORTG_DEN_R |= 0x04;             // enable digital I/O on PG2 (default setting on LM3S811, not default on other microcontrollers)
  ss = 100;
  before = NVIC_ST_CURRENT_R;
  tt = sqrt(ss);
  elapsed = (before-NVIC_ST_CURRENT_R)&0x00FFFFFF;
  while(1){
    GPIO_PORTG2 = 0x04;                 // turn on LED
    tt = sqrt(ss);
    GPIO_PORTG2 = 0x00;                 // turn off LED
    // anything can go here, after the LED goes off before the repeat
    // use the oscilloscope/logic analyzer to measure high pulse time
    // this can be easier to see if there is also some low pulse time
    tt = sqrt(ss);
  }*/
	
	volatile unsigned long before, elapsed; 
int main(void){ rxDataType data; int volatile result; 
	SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_OSC_MAIN | 
	SYSCTL_XTAL_8MHZ); // 50 MHz 
	SysTick_Init(); // initialize SysTick timer, see SysTick.c 
	RxFifo_Init(); 
	Output_Init(); 
 Output_Color(15); 
 RxFifo_Put(12); 
 before = NVIC_ST_CURRENT_R; 
 result = RxFifo_Get(&data); 
 elapsed = (before-NVIC_ST_CURRENT_R)&0x00FFFFFF; 
 printf("Time is %u bus cycles.\n", elapsed); 
 while(1){}; 
} 
