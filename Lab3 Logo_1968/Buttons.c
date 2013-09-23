#include "rit128x96x4.h"
#include "hw_types.h"
#include "sysctl.h"
#include "lm3s1968.h"
#include "gpio.h"
#include "inc/hw_memmap.h"
#include "globals.h"
#include "helper.h"
#include "sound.h"
#include "Output.h"
#include "Buttons.h"
#include "SysTick.h"
void PolledButtons_Init(void){
  volatile unsigned long delay;
	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOG; // activate port G
	delay = 0x01; //just set it do have a delay;
 GPIO_PORTG_PUR_R = 0x78;
  GPIO_PORTG_DIR_R &= ~0x78;  // make PD5-4 in (PD5-4 buttons)
  GPIO_PORTG_DEN_R |= 0x78;   // enable digital I/O on PD5-4
  GPIO_PORTG_IS_R &= ~0x78;   // PD5-4 is edge-sensitive (default setting)
  GPIO_PORTG_IBE_R &= ~0x78;  // PD5-4 is not both edges (default setting)
  GPIO_PORTG_IEV_R &= ~0x78;  // PD5-4 falling edge event (default setting)
  GPIO_PORTG_ICR_R = 0x78;    // clear flag5-4
  GPIO_PORTG_IM_R |= 0x78;    // enable interrupt on PD5-4
                              // GPIO PortD=priority 2
  NVIC_PRI0_R = (NVIC_PRI0_R&0x00FFFFFF)|0x40000000; // bits 29-31
  NVIC_EN0_R |= 0x80000000;// enable interrupt 3 in NVIC
}
//void GPIOPortG_Handler(void){
//  if(GPIO_PORTG_RIS_R&0x10){  // poll PD4
//    GPIO_PORTG_ICR_R = 0x10;  // acknowledge flag4
//    SW1 = 1;                  // signal SW1 occurred
//  }
//  if(GPIO_PORTG_RIS_R&0x20){  // poll PD5
//    GPIO_PORTG_ICR_R = 0x20;  // acknowledge flag5
//    SW2 = 1;                  // signal SW2 occurred
//  }
//}

unsigned long oldPressTime;


//void initButtons (){
//	//TODO
//	oldPressTime = 0;
//	GPIO_PORTG_PUR_R = 0x78;
//	GPIO_PORTG_DIR_R &=~ 0x78;
//	GPIO_PORTF_DEN_R |= 0x78;
//	GPIO_PORTG_IS_R &= ~0x78;
//  GPIO_PORTG_IBE_R &= ~0x78;
//	GPIO_PORTG_IEV_R &= ~0x78;
//	GPIO_PORTG_ICR_R &= 0x78;
//	GPIO_PORTG_IM_R &= 0x78;

//	GPIODirModeSet(GPIO_PORTG_BASE, 0x78, GPIO_DIR_MODE_HW);
//	GPIOPinIntEnable(GPIO_PORTG_BASE, 0x78);
//	GPIOIntTypeSet(GPIO_PORTG_BASE, 0x78,GPIO_FALLING_EDGE);
//	GPIOPortIntRegister(GPIO_PORTG_BASE, &switchHandler);

//}
//int hours24 =0;
//int minutes =0;
//int seconds =0;


//int a_hours24 =0;
//int a_minutes =0;
//int a_seconds =0;

//int hours24_temp =0;
//int minutes_temp =0;
//int seconds_temp =0;


//int a_hours24_temp =0;
//int a_minutes_temp =0;
//int a_seconds_temp =0;

//int ringAlarms = 0;

////inactivity timer
//int inacTimer =0;
//int displayMode =0;
//int timeMode = 0;
//int setMode = 0;

//void main(void){
//	SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_OSC_MAIN | 
//	SYSCTL_XTAL_8MHZ); // 50 MHz 
//	DisableInterrupts();
//	Output_Init(); 
//	displayMode = 0;
//	ringAlarms = 0;
//	timeMode = 1;
//	printf("here");
//	PolledButtons_Init();
//	EnableInterrupts();
////	initButtons();
//	while(1);
//}

int count = 0;
volatile unsigned long pressTime = 0;
volatile unsigned long elapsedTime = 0;

void GPIOPortG_Handler(void){
	pressTime = NVIC_ST_CURRENT_R;
	elapsedTime = (pressTime - oldPressTime)&0x00FFFFFF;
	
//	//button bouncing delay 10ms
//	if (elapsedTime < 500000){
//    GPIO_PORTG_ICR_R = 0x40;  // acknowledge flag4
//    GPIO_PORTG_ICR_R = 0x20;  // acknowledge flag4
//    GPIO_PORTG_ICR_R = 0x10;  // acknowledge flag4
//    GPIO_PORTG_ICR_R = 0x08;  // acknowledge flag4
//		return;
//	}
	//TODO switch debouncing
	
	oldPressTime = pressTime;

	if(GPIO_PORTG_RIS_R&0x40){  // poll PD4
    GPIO_PORTG_ICR_R = 0x40;  // acknowledge flag4
		handlerSW6();
  }
	if(GPIO_PORTG_RIS_R&0x20){  // poll PD4
    GPIO_PORTG_ICR_R = 0x20;  // acknowledge flag4
		handlerSW5();
  }
	if(GPIO_PORTG_RIS_R&0x10){  // poll PD4
    GPIO_PORTG_ICR_R = 0x10;  // acknowledge flag4
		handlerSW4();
  }
	if(GPIO_PORTG_RIS_R&0x08){  // poll PD4
    GPIO_PORTG_ICR_R = 0x08;  // acknowledge flag4
		handlerSW3();
  }
//	printf("%d\n", count++);
//	printf("%x", values);
}

//handler for SW3 (top button)
// increments hours in set mode
// goes to setTime in display mode

void handlerSW3 ()
{
	if (displayMode ==0) //currently displaying time 
	{
		//go to display time set mode
			displayMode = 1;
			setMode = 0;
			inacTimer = 0;
			hours24_temp = hours24;
			minutes_temp = minutes;
			seconds_temp = seconds;
	}
	else{
		inacTimer = 0;
		if (setMode == 0) //set time
			hours24_temp = incrementHours(hours24_temp);
		else //set alarm
			a_hours24_temp = incrementHours(a_hours24_temp);
	}
}
//handler for SW4 (bottom button)
// decrements hours in set mode
// turns alarm on/off when in display mode

void handlerSW4 ()
{
//	printf("bottom");
	if (displayMode ==0) //displaying time 
	{
		//if sound is playing, simply turn sound off.
		
		if (soundPlaying)
			stopSound();
		
		//if sound is not playing, then toggle alarm on/off
		//TODO
	}
	else{ //setting time or alarm
				inacTimer = 0;

		if (setMode == 0) //set time
			hours24_temp = decrementHours(hours24_temp);
		else //set alarm
			a_hours24_temp = decrementHours(a_hours24_temp); 
	}
}

//handler for SW5 (left button)
// decrements minutes in set mode
// go to set alarm when in display mode

void handlerSW5 ()
{
	//printf("left");
	if (displayMode ==0) //displaying time 
	{
		//go to display alarm set mode
			displayMode = 1;
			setMode = 1;
			a_hours24_temp = a_hours24;
			a_minutes_temp = a_minutes;
			a_seconds_temp = a_seconds;
	}
	else{ //setting time or alarm
		inacTimer = 0;
		if (setMode == 0) //set time
				minutes_temp = decrementMinutes(minutes_temp);
		else //set alarm
				a_minutes_temp = decrementMinutes(a_minutes_temp);
			
		}
}

//handler for SW5 (left button)
// decrements minutes in set mode
// go to set alarm when in display mode

void handlerSW6 ()
{
	//printf("right");
	if (displayMode ==0) //displaying time 
	{
		//go to digital clock mode
		timeMode = 1;
	}
	else{ //setting time or alarm
		if (setMode == 0) //set time
				minutes_temp = incrementMinutes(minutes_temp);
		else //set alarm
				a_minutes_temp = incrementMinutes(a_minutes_temp);
			
		}
}