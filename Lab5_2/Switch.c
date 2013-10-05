#include "Globals.h"
#include "Switch.h"

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
}

void GPIOPortG_Handler(void){
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


void handlerSW3 (void){
}

void handlerSW4 (void){
}

void handlerSW5 (void){
}

void handlerSW6 (void){
}
