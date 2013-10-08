#include "Globals.h"
#include "Switch.h"
#include "Music.h"


int rewind_mode; //0 for not rewinding, 1 for rewinding at single speed, 2 for rewinding at 3 speed


void Switch_Init(void){
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
	rewind_mode = 0;
}
unsigned long oldPressTime;

volatile unsigned long pressTime = 0;
volatile unsigned long elapsedTime = 0;

void GPIOPortG_Handler(void){
//	pressTime = countb_overall;
//	elapsedTime = (pressTime - oldPressTime);
//	
//	//button bouncing delay 10ms
//	if (elapsedTime < 100){
//	    GPIO_PORTG_ICR_R = 0x40;  // acknowledge flag4
//	    GPIO_PORTG_ICR_R = 0x20;  // acknowledge flag4
//	    GPIO_PORTG_ICR_R = 0x10;  // acknowledge flag4
//	    GPIO_PORTG_ICR_R = 0x08;  // acknowledge flag4
//		return;
//	}
//	
//	oldPressTime = pressTime;

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
}

//top button
//play/pause functionality
void handlerSW3 (void){
	if (playing ==0){//if not playing, re-enable interrupts
		TIMER0_CTL_R |= TIMER_CTL_TAEN;
		TIMER0_CTL_R |= TIMER_CTL_TBEN;

	}
	else {		//if playing, disable interrupts
		TIMER0_CTL_R &= ~TIMER_CTL_TAEN;
		TIMER0_CTL_R &= ~TIMER_CTL_TBEN;
	}
	rewind_mode = 0; //reset to not rewinding if paused (such as if paused a rewind)
	note_inc = 1;
	note_len_divider = 1;
	playing ^= 0x01;
}

//bottom button
//rewind
	//1 press - play song backward
	//2 press - play song backward speed * 3
	//3 press - put song at beginning, stop playing
void handlerSW4 (void){
	rewind_mode ++;
	if (rewind_mode==1){
		note_inc = -1;
		note_len_divider = 1;
	}
	else if (rewind_mode == 2){
		note_inc = -1;
		note_len_divider = 3;
	}
	else if (rewind_mode == 3){
		playing = 0;
		note_index1 = 0;
		note_index2 = 0;
		note_inc = 1;
		note_len_divider = 1;
		rewind_mode = 0;
		TIMER0_CTL_R &= ~TIMER_CTL_TAEN;
		TIMER0_CTL_R &= ~TIMER_CTL_TBEN;

	}
	
}

//switch mode (switch instruments/mode and whatnot)
void handlerSW5 (void){
	if (note_len == 7000000)
		note_len = 3500000;
	else
		note_len = 7000000;
}

void handlerSW6 (void){
}
