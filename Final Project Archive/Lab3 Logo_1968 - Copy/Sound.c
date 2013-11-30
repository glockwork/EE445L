
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

unsigned int soundPlaying = 0;

void soundInit(){
	soundPlaying =0 ;
}


void playSound(){
	soundPlaying = 1;
	PWM_Play(25000, 12500);	
}

void stopSound(){
	soundPlaying = 0;
  PWM_1_CTL_R &= ~PWM_X_CTL_ENABLE;
  PWM_ENABLE_R &= ~PWM_ENABLE_PWM2EN;
}

void soundTimerHandler(){
	//TODO Flip bit that to which sound is being outputted. 	
}