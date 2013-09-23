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

unsigned long oldPressTime;


int count = 0;
volatile unsigned long pressTime = 0;
volatile unsigned long elapsedTime = 0;

void GPIOPortG_Handler(void){
	pressTime = Counta;
	elapsedTime = (pressTime - oldPressTime);
	
//	//button bouncing delay 10ms
	if (elapsedTime < 100){
    GPIO_PORTG_ICR_R = 0x40;  // acknowledge flag4
    GPIO_PORTG_ICR_R = 0x20;  // acknowledge flag4
    GPIO_PORTG_ICR_R = 0x10;  // acknowledge flag4
    GPIO_PORTG_ICR_R = 0x08;  // acknowledge flag4
		return;
	}
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
		else if(setMode ==1)//set alarm
			a_hours24_temp = incrementHours(a_hours24_temp);
		else if(setMode ==2)
			countMin_temp = incrementMinutes(countMin);
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
		else if(setMode ==1) //set alarm
			a_hours24_temp = decrementHours(a_hours24_temp); 
		else if(setMode ==2) //set countdown
			countMin_temp = decrementMinutes(countMin);
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
		else if(setMode==1) //set alarm
				a_minutes_temp = decrementMinutes(a_minutes_temp);
		else if(setMode==2)
				countSec_temp = decrementMinutes(countSec);
			
	}
}

//handler for SW6 (right button)
// decrements minutes in set mode
// go to set alarm when in display mode
void handlerSW6 ()
{
	char debugmode[20];
	//printf("right");
	if (displayMode ==0) //displaying time 
	{
		//go to digital clock mode
		timeMode = (timeMode+1)%4;
		RIT128x96x4Clear();
		
		switch(timeMode){
		case 0:
			sprintf(debugmode, "Analog Mode");
			break;
		case 1:
			sprintf(debugmode, "Digital Mode");
			break;
		case 2:
			sprintf(debugmode, "Timer Mode");
			break;
		case 3:
			sprintf(debugmode, "Countdown Mode");
			break;
		}
		
		RIT128x96x4StringDraw(debugmode, 10, 10, 15);
	}
	else{ //setting time or alarm
		inacTimer = 0;
		if (setMode == 0) //set time
				minutes_temp = incrementMinutes(minutes_temp);
		else if(setMode ==1)//set alarm
				a_minutes_temp = incrementMinutes(a_minutes_temp);
		else if(setMode ==2)
				countSec_temp = incrementMinutes(countSec);
		}
}