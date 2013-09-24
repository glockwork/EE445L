#include "hw_types.h"
#include "sysctl.h"
#include "lm3s1968.h"
#include "rit128x96x4.h"
#include "logo.h"
#include "Output.h"
#include "SysTick.h"
#include "globals.h"
#include "helper.h"
#include "sound.h"
#include "pll.h"
#include "pwm.h"
#include "OLEDdraw.h"

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


//timer variables
int timerSec=0;
int timerMin=0;
int timerStart = 0;


//countdown variables
int countSec=0;
int countMin=0;
int countSec_temp = 0;
int countMin_temp = 0;
int countStart = 0;

int ringAlarms = 0;
int alarmActive = 0;

//inactivity timer
int inacTimer =0;

//flags for current mode

//displayMode = 0 for display time
//displayMode = 1 for set time

//timeMode = 0 for analog
//timeMode = 1 for digital
//timeMode = 2 for timer
//timeMode = 3 for countdown

//setMode = 0 for time
//setMode = 1 for alarm
//setMode = 2 for countdown

int displayMode =0;
int timeMode = 3;
int setMode = 0;

int bpm = 60;

void displayClock();
void displaySet();

int main(){
	int i = 0;
	PLL_Init();
	SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_OSC_MAIN | 
	SYSCTL_XTAL_8MHZ); // 50 MHz 
	DisableInterrupts();
	SYSCTL_RCGC1_R |= SYSCTL_RCGC1_TIMER0;// activate timer0
	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOF+SYSCTL_RCGC2_GPIOG; // activate ports F and G
	Output_Init(); 
	SysTick_InitSeconds(1);
	PolledButtons_Init();
	EnableInterrupts();
	displayMode = 0;
	ringAlarms = 0;
	timeMode = 0;
		
	while(1){
		if (ringAlarms && !soundPlaying && (alarmActive || timeMode == 4))	{
			playSound();
		}
		else if ((ringAlarms==0 || !alarmActive) && soundPlaying) {
			stopSound();
		}
		if(displayMode==0) {
			displayClock();
		}
		else if(displayMode==1){
			displaySet();
		}
	}
}

char firstNotAnalog= 0;
char firstDigital = 0;
char firstCountDown = 0;
char firstStopWatch = 0;

void displayClock(){
	char debugmode[20];
	switch(timeMode){
		case 0:
			debugmode[0] = 0;
			break;
		case 1:
			sprintf(debugmode, "Digital Time");
			break;
		case 2:
			sprintf(debugmode, "Stopwatch");
			break;
		case 3:
			sprintf(debugmode, "Countdown Mode");
			break;
		case 4:
			sprintf(debugmode, "Metronome");
			break;
	}
	RIT128x96x4StringDraw(debugmode, 10, 10, 15);
	switch(timeMode){
		case 0:
			firstNotAnalog = 1;
			analogClockDraw();
			firstDigital=1;
			break;
		case 1:
			if (firstNotAnalog == 1 || firstDigital ==1)
				RIT128x96x4Clear(); 
			firstNotAnalog = 0;
			firstDigital=0;
			firstStopWatch = 1;
			digitalClockDraw();
			break;
		case 2:
			if (firstStopWatch==1)
				RIT128x96x4Clear(); 
			firstStopWatch=0;
			firstCountDown = 1;
			timerDraw();
			break;
		case 3:
			if (firstCountDown ==1)
				RIT128x96x4Clear(); 
			firstCountDown=0;
			countdownDraw();
			break;
		case 4:
			metronomeDraw();
			break;
	}
}

void displaySet(){
	char debugmode[20];
	firstDigital=1;
	firstCountDown = 1;
	firstStopWatch = 1;

	switch(setMode){
		case 0:
			if (firstNotAnalog == 1)
				RIT128x96x4Clear(); 
			firstNotAnalog = 0;
			sprintf(debugmode, "Set Time");
			break;
		case 1:
			if (firstNotAnalog == 1)
				RIT128x96x4Clear(); 
			firstNotAnalog = 0;
			sprintf(debugmode, "Set Alarm");
			break;
		case 2:
			sprintf(debugmode, "Set Countdown");
			break;
	}

	RIT128x96x4StringDraw(debugmode, 10, 10, 15);
	
	if (setMode ==0){ //set time
		drawInactiveTimer();
		drawDigitalValue(hours24_temp, minutes_temp, seconds_temp);
	}
	else if (setMode ==1){ //set alarm
		drawInactiveTimer();
		drawDigitalValue(a_hours24_temp, a_minutes_temp, a_seconds_temp);	
	}
	else if (setMode ==2) // set countdown
	{
			char time[20];	
							drawInactiveTimer();
			sprintf(time, "   %02d:%02d   ", countMin_temp, countSec_temp);
			RIT128x96x4StringDraw(time, 30, 44, 15);
	}
}