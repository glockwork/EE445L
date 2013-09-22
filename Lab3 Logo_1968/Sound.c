
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

int soundPlaying = 0;

void soundInit(){
	soundPlaying =0 ;
	//TODO
	
}


void playSound(){
	soundPlaying = 1;
	//TODO arm the soundTimerHandler
		
}

void stopSound(){
	soundPlaying = 0;
	//TODO unarm soundTimerHandler
}

void soundTimerHandler(){
	//TODO Flip bit that to which sound is being outputted. 	
}