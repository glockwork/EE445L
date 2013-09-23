// SysTick.c
// Runs on LM3S1968
// Provide functions that initialize the SysTick module, wait at least a
// designated number of clock cycles, and wait approximately a multiple
// of 10 milliseconds using busy wait.  After a power-on-reset, the
// LM3S1968 gets its clock from the 12 MHz internal oscillator, which
// can vary by +/- 30%.  If you are using this module, you probably need
// more precise timing, so it is assumed that you are using the PLL to
// set the system clock to 50 MHz.  This matters for the function
// SysTick_Wait10ms(), which will wait longer than 10 ms if the clock is
// slower.
// Daniel Valvano
// February 22, 2012

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to the Arm Cortex M3",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2011
   Program 2.11, Section 2.6

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

#define NVIC_ST_CTRL_R          (*((volatile unsigned long *)0xE000E010))
#define NVIC_ST_RELOAD_R        (*((volatile unsigned long *)0xE000E014))
#define NVIC_ST_CURRENT_R       (*((volatile unsigned long *)0xE000E018))
#define NVIC_ST_CTRL_COUNT      0x00010000  // Count flag
#define NVIC_ST_CTRL_CLK_SRC    0x00000004  // Clock Source
#define NVIC_ST_CTRL_INTEN      0x00000002  // Interrupt enable
#define NVIC_ST_CTRL_ENABLE     0x00000001  // Counter mode
#define NVIC_ST_RELOAD_M        0x00FFFFFF  // Counter load value
#define NVIC_SYS_PRI3_R					(*((volatile unsigned long *) 0xE000ED20))
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

#define PD0 (*((volatile unsigned long *) 0x40007004))

#include "Output.h"
#include "Globals.h"
#include "helper.h"
#include "systick.h"
#include "RIT128x96x4.h"

volatile unsigned long Counts;
unsigned int alarmPlayTime = 0;

unsigned long Counta = 0;
int num;
unsigned long INTPERIOD;
#define INTVARIATION 0

// Initialize SysTick with interrupt
//period is in units of 20ns
void SysTick_Init(unsigned long period){
	INTPERIOD = period;
	TIMER0_CTL_R &= ~TIMER_CTL_TAEN; // disable timer0A during setup
  TIMER0_CFG_R = TIMER_CFG_16_BIT; // configure for 16-bit timer mode
  // **** timer0A initialization ****
  TIMER0_TAMR_R = TIMER_TAMR_TAMR_PERIOD;// configure for periodic mode
  TIMER0_TAILR_R = period - 1;  // start value to count down from
  TIMER0_IMR_R |= TIMER_IMR_TATOIM;// enable timeout (rollover) interrupt
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  // **** interrupt initialization ****
                                   // Timer0A=priority 2
  NVIC_PRI4_R = (NVIC_PRI4_R&0x00FFFFFF)|0x40000000; // top 3 bits
  NVIC_EN0_R |= NVIC_EN0_INT19;    // enable interrupt 19 in NVIC
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  TIMER0_CTL_R |= TIMER_CTL_TAEN;  // enable timer0A 16-b, periodic, interrupts
	ringAlarms = 0;
  EnableInterrupts();
	
//	NVIC_ST_CTRL_R = 0;                   // disable SysTick during setup
//  NVIC_ST_RELOAD_R = 10*period - 1; //NVIC_ST_RELOAD_M;  // maximum reload value
//	NVIC_ST_CURRENT_R = 0;                // any write to current clears it
//  NVIC_ST_CTRL_R = 0x00000007;           // enable SysTick with core clock and interrupts
//	NVIC_SYS_PRI3_R = (NVIC_SYS_PRI3_R & 0x00FFFFFF) | 0x40000000; //priority 2
//  //NVIC_ST_CTRL_R = 0x00000007; //NVIC_ST_CTRL_ENABLE+NVIC_ST_CTRL_CLK_SRC;
//		num = 0;

//	EnableInterrupts();
}

void Timer0A_Handler(void){
	static char periodShift = 1;
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;// acknowledge timer0A timeout
	if (++Counta % 1000 != 0) return;
	//Counta = 1;
	inacTimer++;
	
    TIMER0_TAILR_R = INTPERIOD; //TIMER0_TAILR_R + periodShift;
                                    // check upper bound
    if(((TIMER0_TAILR_R + periodShift) > (INTPERIOD + INTVARIATION - 1)) ||
                                    // check lower bound
     ((TIMER0_TAILR_R + periodShift) < (INTPERIOD - INTVARIATION - 1))){
      periodShift = -periodShift; // start counting in other direction
    }
		
	timeUpdate(); //incrementing time

	alarmPlayTime ++ ;
	if (alarmPlayTime == 5){ //play alarm for 5 seconds
		ringAlarms = 0;
	}
	if (alarmActive && (hours24 == a_hours24 && minutes == a_minutes && seconds == a_seconds)){
		alarmPlayTime = 0;
		ringAlarms = 1;	
	}
	
	if (countSec == 0 && countMin == 0 && countStart == 1){
		alarmPlayTime = 0;
		ringAlarms = 1;
		countStart = 0;
	}
	
	if (inacTimer == 10){
		RIT128x96x4Clear();
		RIT128x96x4_ClearImage();
		if(displayMode == 1){
			displayMode = 0;
			if (setMode==0){ // for time set
				hours24 = hours24_temp;
				minutes = minutes_temp;
				seconds = seconds_temp;
			}
			else if(setMode ==1) { //for alarm
				a_hours24 = a_hours24_temp;
				a_minutes = a_minutes_temp;
				a_seconds = a_seconds_temp;
			}
			else if(setMode ==2) { // for countdown
				countSec = countSec_temp;
				countMin = countMin_temp;
			}
		}
	}
}

void timeUpdate(){
	if (seconds == 59){
		if (minutes == 59)
			hours24 = incrementHours(hours24);
		
		minutes = incrementMinutes(minutes); 
	}
	seconds = incrementMinutes(seconds);
		
	if(timeMode == 3 && countStart == 1){ //if in countdown mode we need to count down
		if(countSec == 0){
				countMin = (countMin + 59) % 60;
		}
		countSec = (countSec + 59) % 60;
	}
}
	
void SysTick_InitSeconds(unsigned long seconds){
	SysTick_Init(50000);
}

// Time delay using busy wait.
// The delay parameter is in units of the core clock. (units of 20 nsec for 50 MHz clock)
void SysTick_Wait(unsigned long delay){
  volatile unsigned long elapsedTime;
  unsigned long startTime = NVIC_ST_CURRENT_R;
  do{
    elapsedTime = (startTime-NVIC_ST_CURRENT_R)&0x00FFFFFF;
  }
  while(elapsedTime <= delay);
}
// Time delay using busy wait.
// This assumes 50 MHz system clock.
void SysTick_Wait10ms(unsigned long delay){
  unsigned long i;
  for(i=0; i<delay; i++){
    SysTick_Wait(500000);  // wait 10ms (assumes 50 MHz clock)
  }
}
