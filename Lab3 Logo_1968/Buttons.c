#include "rit128x96x4.h"
#include "hw_types.h"
#include "sysctl.h"
#include "lm3s1968.h"
#include "gpio.h"
#include "inc/hw_memmap.h"
#include "globals.h"
#include "helper.h"
#include "sound.h"

void switchHandler();

void initButtons (){
	//TODO
	GPIO_PORTG_PUR_R = 0xF8;
	GPIODirModeSet(GPIO_PORTG_BASE, 0xF8, GPIO_DIR_MODE_HW);
	GPIOPinIntEnable(GPIO_PORTG_BASE, 0xF8);
	GPIOIntTypeSet(GPIO_PORTG_BASE, 0xF8,GPIO_FALLING_EDGE);
	GPIOPortIntRegister(GPIO_PORTG_BASE, &switchHandler);

}

void switchHandler(void){
	
	int values = GPIO_PORTG_DATA_R;
}

//handler for SW3 (top button)
// increments hours in set mode
// goes to setTime in display mode

void handlerSW3 ()
{
	if (displayMode ==0) //displaying time 
	{
		//go to display time set mode
			displayMode = 1;
			setMode = 0;
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
	if (displayMode ==0) //displaying time 
	{
		//go to display alarm set mode
			displayMode = 1;
			setMode = 1;
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
	if (displayMode ==0) //displaying time 
	{
		//go to display alarm set mode
			displayMode = 1;
			setMode = 1;
	}
	else{ //setting time or alarm
				inacTimer = 0;

		if (setMode == 0) //set time
				minutes_temp = decrementMinutes(minutes_temp);
		else //set alarm
				a_minutes_temp = decrementMinutes(a_minutes_temp);
			
		}
}