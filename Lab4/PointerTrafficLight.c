// PointerTrafficLight.c
// Runs on LM3S1968
// Use a pointer implementation of a Moore finite state machine to operate
// a traffic light.
// Daniel Valvano
// June 15, 2011

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to the Arm Cortex M3",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2011
   Program 3.1, Example 3.1

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

// north facing car detector connected to PE1 (1=car present)
// east facing car detector connected to PE0 (1=car present)
// east facing red light connected to PF5
// east facing yellow light connected to PF4
// east facing green light connected to PF3
// north facing red light connected to PF2
// north facing yellow light connected to PF1
// north facing green light connected to PF0

#include "PLL.h"
#include "SysTick.h"

#define GPIO_PORTE_IN           (*((volatile unsigned long *)0x4002400C)) // bits 1-0
#define GPIO_PORTE_DIR_R        (*((volatile unsigned long *)0x40024400))
#define GPIO_PORTE_AFSEL_R      (*((volatile unsigned long *)0x40024420))
#define GPIO_PORTE_DEN_R        (*((volatile unsigned long *)0x4002451C))
#define GPIO_PORTF_OUT          (*((volatile unsigned long *)0x400250FC)) // bits 5-0
#define GPIO_PORTF_DIR_R        (*((volatile unsigned long *)0x40025400))
#define GPIO_PORTF_AFSEL_R      (*((volatile unsigned long *)0x40025420))
#define GPIO_PORTF_DEN_R        (*((volatile unsigned long *)0x4002551C))
#define SYSCTL_RCGC2_R          (*((volatile unsigned long *)0x400FE108))
#define SYSCTL_RCGC2_GPIOF      0x00000020  // port F Clock Gating Control
#define SYSCTL_RCGC2_GPIOE      0x00000010  // port E Clock Gating Control

struct State {
  unsigned long Out;            // 6-bit output
  unsigned long Time;           // 10 ms
  const struct State *Next[4];};// depends on 2-bit input
typedef const struct State STyp;
#define goN   &FSM[0]
#define waitN &FSM[1]
#define goE   &FSM[2]
#define waitE &FSM[3]
STyp FSM[4]={
 {0x21,300,{goN,waitN,goN,waitN}},
 {0x22, 50,{goE,goE,goE,goE}},
 {0x0C,300,{goE,goE,waitE,waitE}},
 {0x14, 50,{goN,goN,goN,goN}}};

int main(void){
  STyp *Pt;  // state pointer
  unsigned long Input;
  PLL_Init();                  // configure for 50 MHz clock
  // activate port F and port E
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOF+SYSCTL_RCGC2_GPIOE;
  SysTick_Init();              // initialize SysTick timer
  GPIO_PORTE_DIR_R &= ~0x03;   // make PE1-0 in
  GPIO_PORTE_AFSEL_R &= ~0x03; // disable alt func on PE1-0
  GPIO_PORTE_DEN_R |= 0x03;    // enable digital I/O on PE1-0
  GPIO_PORTF_DIR_R |= 0x3F;    // make PF5-0 out
  GPIO_PORTF_AFSEL_R &= ~0x3F; // disable alt func on PF5-0
  GPIO_PORTF_DEN_R |= 0x3F;    // enable digital I/O on PF5-0
  Pt = goN;                    // initial state: Green north; Red east
  while(1){
    GPIO_PORTF_OUT = Pt->Out;  // set lights to current state's Out value
    SysTick_Wait10ms(Pt->Time);// wait 10 ms * current state's Time value
    Input = GPIO_PORTE_IN;     // get new input from car detectors
    Pt = Pt->Next[Input];      // transition to next state
  }
}
