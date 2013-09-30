
#include "lm3s1968.h"
#include "inc/hw_memmap.h"
#include "SysTick.h"

void stepper_init(){
	volatile unsigned long delay;
	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOD; // activate port D
	delay = 0x01; //just set it do have a delay;
 	GPIO_PORTD_DIR_R |= 0x07;
	GPIO_PORTD_AFSEL_R &= ~0x07;
	//GPIO_PORTD_AMSEL_R &= ~0x07;
	GPIO_PORTD_DEN_R |= 0x07;   // enable digital I/O on PD5-4
}

void stepper_output(unsigned long out){
	GPIO_PORTD_DATA_R =  out;
}