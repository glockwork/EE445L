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
#include "pll.h"

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
	SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_OSC_MAIN | 
	SYSCTL_XTAL_8MHZ); // 50 MHz 
	DisableInterrupts();
  SYSCTL_RCGC1_R |= SYSCTL_RCGC1_TIMER0;// activate timer0
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOF+SYSCTL_RCGC2_GPIOG; // activate ports F and G
	Output_Init(); 
SysTick_InitSeconds(1);
	EnableInterrupts();
	while(1);
}
