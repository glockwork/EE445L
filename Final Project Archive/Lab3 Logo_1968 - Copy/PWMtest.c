// PWMtest.c
// Runs on LM3S1968
// Use PWM0/PG2 to generate a 1000 Hz square wave with 50% duty cycle.
// Daniel Valvano
// June 27, 2011

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to the Arm Cortex M3",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2011
  Program 6.7, section 6.3.2

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
#include "PWM.h"
#include "hw_types.h"
#include "sysctl.h"


void WaitForInterrupt(void);  // low power mode


//debug code, bus clock is 50 MHz
int main(void){
  SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_OSC_MAIN |
                 SYSCTL_XTAL_8MHZ);
  PWM0_Init(25000, 12500);         // initialize PWM0, 1000 Hz, 50% duty
  PWM0_Duty(2500);    // %10
//  PWM0_Duty(20000);   // %80

//  PWM0_Init(2500, 1250);         // initialize PWM0, 10000 Hz, 80% duty
//  PWM0_Init(1000, 900);          // initialize PWM0, 25000 Hz, 90% duty
//  PWM0_Init(1000, 100);          // initialize PWM0, 25000 Hz, 90% duty
//  PWM0_Init(3, 2);               // initialize PWM0, 8.333 MHz, 66% duty
  while(1){
//    WaitForInterrupt();
  }
}
