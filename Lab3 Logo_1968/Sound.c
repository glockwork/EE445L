
#include "hw_types.h"
#include "sysctl.h"
#include "lm3s1968.h"
#include "rit128x96x4.h"
#include "logo.h"
#include "Output.h"
#include "SysTick.h"
#include "globals.h"
#include "helper.h"
//#include "OLEDdraw.h"
#include "sound.h"
#include "pwm.h"

int soundPlaying = 0;

void soundInit(){
	soundPlaying =0 ;
	//TODO
	
}


void playSound(){
	soundPlaying = 1;
	  PWM_Play(25000, 12500);	
}

void stopSound(){
	soundPlaying = 0;
  PWM_0_CTL_R &= ~PWM_X_CTL_ENABLE; // 7) start PWM0
  PWM_ENABLE_R &= ~PWM_ENABLE_PWM0EN;    // enable PWM0
}

void soundTimerHandler(){
	//TODO Flip bit that to which sound is being outputted. 	
}