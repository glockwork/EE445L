#include "PLL.h"
#include "SysTick.h"
#include "switch.h"
#include "stepper.h"
#include "hw_types.h" 
#include "sysctl.h" 
#include "lm3s1968.h" 

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

#include "Globals.h"

int mainState = 0;
int motorState = 0;


STyp MainFSM[21]={
	 {CW, slowDelay, {init, held1, held2, startOscillate, pressed3, held1,held1,held1}}, //held1
	 {CCW, slowDelay, {init, held1, held2, startOscillate, pressed3, held2, held2, held2}},//held2
	 {STILL, slowDelay, {down3, held1, held2, startOscillate, pressed3, pressed3, pressed3, pressed3}}, //pressed 3
		{CW, fastDelay, {init, held1, held2, oscillate2, pressed3, startOscillate, startOscillate, startOscillate}}, // oscillation stage 1
		{CW, fastDelay, {init, held1, held2, oscillate3, pressed3, oscillate2,oscillate2,oscillate2}}, // oscillation stage 2
		{CW, fastDelay, {init, held1, held2, oscillate4, pressed3, oscillate3, oscillate3, oscillate3}}, // oscillation stage 3
		{CW, fastDelay, {init, held1, held2, oscillate5, pressed3, oscillate4, oscillate4, oscillate4}}, // oscillation stage 4
		{CW, fastDelay, {init, held1, held2, oscillate6, pressed3, oscillate5, oscillate5, oscillate5}}, // oscillation stage 5
		{CW, fastDelay, {init, held1, held2, oscillate7, pressed3, oscillate6, oscillate6, oscillate6}}, // oscillation stage 6
		{CW, fastDelay, {init, held1, held2, oscillate8, pressed3, oscillate7, oscillate7, oscillate7}}, // oscillation stage 7
		{CW, fastDelay, {init, held1, held2, oscillate9, pressed3, oscillate8, oscillate8, oscillate8}}, // oscillation stage 8
		{CCW, fastDelay, {init, held1, held2, oscillate10, pressed3, oscillate9, oscillate9, oscillate9}}, // oscillation stage 9
		{CCW, fastDelay, {init, held1, held2, oscillate11, pressed3, oscillate10, oscillate10, oscillate10}}, // oscillation stage 10
		{CCW, fastDelay, {init, held1, held2, oscillate12, pressed3, oscillate11, oscillate11, oscillate11}}, // oscillation stage 11
		{CCW, fastDelay, {init, held1, held2, oscillate13, pressed3, oscillate12, oscillate12, oscillate12}}, // oscillation stage 12
		{CCW, fastDelay, {init, held1, held2, oscillate14, pressed3, oscillate13, oscillate13, oscillate13}}, // oscillation stage 13
		{CCW, fastDelay, {init, held1, held2, oscillate15, pressed3, oscillate14, oscillate14, oscillate14}}, // oscillation stage 14
		{CCW, fastDelay, {init, held1, held2, oscillate16, pressed3, oscillate15, oscillate15, oscillate15}}, // oscillation stage 15
		{CCW, fastDelay, {init, held1, held2, startOscillate, pressed3, oscillate16, oscillate16, oscillate16}}, // oscillation stage 16
		{STILL, fastDelay, {init, held1, held2, startOscillate, pressed3, init, init, init}}, // Init stage
		{CW, fastDelay, {init, held1, held2, startOscillate, pressed3, down3, down3, down3}} // stage to force 3 to go down
};

STyp MotorFSM[4]={
	 {5, motorDelay, {motor5, motor6, motor9}},
	 {6, motorDelay, {motor6, motor10, motor5}},
	 {10, motorDelay, {motor10, motor9, motor6}},
	 {9, motorDelay, {motor9, motor5, motor10}}
};

//initial values
STyp *MotorPt = motor5;
STyp *Pt = held1;

int main(void){
  //STyp *Pt;  // state pointer
  unsigned long Input;
	int i = 0;
  PLL_Init();                  // configure for 50 MHz clock

	SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_OSC_MAIN | 
	SYSCTL_XTAL_8MHZ); // 50 MHz 
	DisableInterrupts();
	SYSCTL_RCGC1_R |= SYSCTL_RCGC1_TIMER0;// activate timer0
	for(i = 0; i < 10000; i++)
		//printf("mad");
	
	
	
  // activate port F and port E
 // SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOD+SYSCTL_RCGC2_GPIO;

	
	//Pt = held1;
	//MotorPt = init;
	
	
	stepper_init();
	switch_init();
	  SysTick_Init();              // initialize SysTick timer

	/*stepper_output(1);
	stepper_output(2);
	stepper_output(4);
	stepper_output(8);
#*/
	
	while(1);
	
	/*
  while(1){
		FSMMotor(Pt-> Out); //call FSM motor for output
    SysTick_Wait10ms(Pt->Time);// wait 10 ms * current state's Time value
		Input = switch_read();
    Pt = Pt->Next[Input];      // transition to next state
  }
	*/
}


//Sub-FSM for stepper motor
//takes in dir (CW, CCW, or STILL) and outputs correct value to stepper
void FSMMotor(unsigned long dir){
	stepper_output(MotorPt -> Out);
  //No delay, because master FSM takes care of that
	motorState = &(MotorPt->Next[dir]) - &(MotorPt->Next[0]);
	MotorPt = MotorPt->Next[dir]; //depending on dir, transition to next state	

}
