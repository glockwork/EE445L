// Switch.c
// Runs on LM3S1968
// Provide functions that initialize a GPIO as an input pin and
// allow reading of a positive logic switch.
// Use bit-banded I/O.
// Jonathan Valvano
// February 16, 2012

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to the Arm Cortex M3",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2011
   Example 2.3, Program 2.9, Figure 2.33

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

// positive logic switch connected to PD3

#define PD3                     (*((volatile unsigned long *)0x40007020))
#define GPIO_PORTD_DIR_R        (*((volatile unsigned long *)0x40007400))
#define GPIO_PORTD_AFSEL_R      (*((volatile unsigned long *)0x40007420))
#define GPIO_PORTD_DEN_R        (*((volatile unsigned long *)0x4000751C))
#define SYSCTL_RCGC2_R          (*((volatile unsigned long *)0x400FE108))
#define SYSCTL_RCGC2_GPIOD      0x00000008  // port D Clock Gating Control

void Switch_Init(void){ volatile unsigned long delay;
  SYSCTL_RCGC2_R |= 0x00000008;  // 1) activate clock for Port D
  delay = SYSCTL_RCGC2_R;        // allow time for clock to settle
  GPIO_PORTD_DIR_R &= ~0x08;     // 2) set direction register
  GPIO_PORTD_AFSEL_R &= ~0x08;   // 3) regular port function
  GPIO_PORTD_DEN_R |= 0x08;      // 4) enable digital port
}

unsigned char pdwatch = 0;

unsigned long Switch_Input(void){
	pdwatch = PD3;
  return PD3;      // 0x08 if pressed, 0x00 if not pressed
}

//debug code
// debug hardware, LED on PG2
#define GPIO_PORTG_DIR_R        (*((volatile unsigned long *)0x40026400))
#define GPIO_PORTG_AFSEL_R      (*((volatile unsigned long *)0x40026420))
#define GPIO_PORTG_DEN_R        (*((volatile unsigned long *)0x4002651C))
#define SYSCTL_RCGC2_GPIOG      0x00000040  // port G Clock Gating Control
#define PG2 (*((volatile unsigned long *)0x40026010))
int main(void){
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOG;// activate port G
  Switch_Init();              // initialize PD3 and make it input
  GPIO_PORTG_DIR_R |= 0x04;   // make PG2 output (PG2 built-in LED)
  GPIO_PORTG_AFSEL_R &= ~0x04;// disable alt funct on PG2
  GPIO_PORTG_DEN_R |= 0x04;   // enable digital I/O on PG2
  while(1){
    if(Switch_Input()){
      PG2 = 0x04;  // turn on LED if switch pressed
    } else{
      PG2 = 0x00;  // turn off LED if switch not pressed
    }
  }
}
