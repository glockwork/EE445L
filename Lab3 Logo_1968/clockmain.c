#include "hw_types.h"
#include "sysctl.h"
#include "lm3s1968.h"
#include "rit128x96x4.h"
#include "logo.h"
#include "Output.h"
#include "SysTick.h"
#include "globals.h"
#include "helper.h"
#include "OLEDdraw.h"
#include "sound.h"

// which delays 3*ulCount cycles
#ifdef __TI_COMPILER_VERSION__
	//Code Composer Studio Code
	void Delay(unsigned long ulCount){
	__asm (	"    subs    r0, #1\n"
			"    bne     Delay\n"
			"    bx      lr\n");
}

#else
	//Keil uVision Code
	__asm void
	Delay(unsigned long ulCount)
	{
    subs    r0, #1
    bne     Delay
    bx      lr
	}

#endif

void timerHandler();	
	
int hours24 =0;
int minutes =0;
int seconds =0;


int a_hours24 =0;
int a_minutes =0;
int a_seconds =0;

int hours24_temp =0;
int minutes_temp =0;
int seconds_temp =0;


int a_hours24_temp =0;
int a_minutes_temp =0;
int a_seconds_temp =0;

int ringAlarms = 0;

//inactivity timer
int inacTimer =0;

//flags for current mode

//displayMode = 0 for display time
//displayMode = 1 for set time

//timeMode = 0 for analog
//timeMode = 1 for digital

//setMode = 0 for time
//setMode = 1 for alarm

int displayMode =0;
int timeMode = 0;
int setMode = 0;

void displayClock();
void displaySet();

int main(){
	while(1){
		if (ringAlarms)
			playSound();
		if(displayMode==0)
			displayClock();
		else if(displayMode==1){
			//TODO write some sort of time choosing mechanism
		}
	}
}

void displayClock(){
	if(timeMode==0){
				analogClockDraw();
			}
			else if(timeMode==1){
					digitalClockDraw();
			}
}

void displaySet(){
	
	while(inacTimer < 10){
	
		//TODO
		//display some sort of header (setting time or alarm)
		//display the time currently setting

	}
	if (setMode ==0) // set time
	{
		hours24 = hours24_temp;
		minutes = minutes_temp;
		seconds = seconds_temp;
	}
	else if (setMode ==1) //set alarm
	{
		a_hours24 = a_hours24_temp;
		a_minutes = a_minutes_temp;
		a_seconds = a_seconds_temp;
	}
		
}

void timerHandler(){
	ringAlarms = 0;
	//incrementing time
	if (seconds == 59){
		if (minutes == 59)
			hours24 = incrementHours(hours24);
		minutes = incrementMinutes(minutes); 
	}
  seconds = incrementMinutes(seconds);
	
	if (hours24 == a_hours24 && minutes == a_minutes && seconds == a_seconds)
		ringAlarms = 1;
}