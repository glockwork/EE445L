#include "Globals.h"
#include "Music.h"
#include "Switch.h"
#include "Output.h"
#include "OLEDdraw.h"
#include "rit128x96x4.h"
#include "Timer0A.h"

int playing = 0;

//debug code
int main(void){ volatile unsigned long delay;
	int watch = 0;
	SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_OSC_MAIN | SYSCTL_XTAL_8MHZ);
	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOC;  // activate port C
	delay = SYSCTL_RCGC2_R;          // allow time to finish activating
	GPIO_PORTC_DIR_R |= 0x20;        // make PC5 out (PC5 built-in LED)
	GPIO_PORTC_DEN_R |= 0x20;        // enable digital I/O on PC5
	
	SYSCTL_RCGC1_R |= SYSCTL_RCGC1_TIMER0;// activate timer0
	SYSCTL_RCGC1_R |= SYSCTL_RCGC1_TIMER1;// activate timer0
	SYSCTL_RCGC1_R |= SYSCTL_RCGC1_TIMER2;// activate timer0
	
	DAC_Init(2048);
	//Timer0A_Init();       // initialize timer0A (~20,000 Hz)
	//Timer1A_Init();       // initialize timer0A (~20,000 Hz)
	
	FrequencyTimersInit();
	MIDIParserInit();
	OLEDTimerInit();
	
	//Switch_Init();
	Output_Init();
	EnableInterrupts();
	
	
	RIT128x96x4DisplayOn();
	//RIT128x96x4_ClearImage();
	
	//RIT128x96x4_Line(0,0,50,50,15);
	//drawCircle(50,50,10)
	RIT128x96x4_ShowImage();
	
	//frequency timers
	TIMER0_CTL_R |= TIMER_CTL_TAEN;
	TIMER1_CTL_R |= TIMER_CTL_TAEN;
	TIMER2_CTL_R |= TIMER_CTL_TAEN;
	
	TIMER0_CTL_R |= TIMER_CTL_TBEN;
	TIMER1_CTL_R |= TIMER_CTL_TBEN;
		
  while(1){
		RIT128x96x4_ClearImage();
		//drawCircle(20, watch, 10);
		//watch = (watch+5)%100;
		BufferDraw();
		RIT128x96x4_ShowImage();
		
  }
	
}
