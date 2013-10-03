
#include "lm3s1968.h"
#include "inc/hw_memmap.h"
#include "SysTick.h"
#include "../inc/hw_types.h"
#include "../driverlib/sysctl.h"
#include "../inc/lm3s1968.h"
#include "../inc/hw_memmap.h"
#include "../driverlib/debug.h"
#include "../driverlib/gpio.h"
#include "../driverlib/pwm.h"

#define GPIO_PORTD_DATA_R       (*((volatile unsigned long *)0x400073FC))
#define GPIO_PORTD_DIR_R        (*((volatile unsigned long *)0x40007400))
#define GPIO_PORTD_AFSEL_R      (*((volatile unsigned long *)0x40007420))
#define GPIO_PORTD_DEN_R        (*((volatile unsigned long *)0x4000751C))
#define SYSCTL_RCGC2_R          (*((volatile unsigned long *)0x400FE108))
#define SYSCTL_RCGC2_GPIOD      0x00000008  // port D Clock Gating Control
#define LEDS 										(*((volatile unsigned long *)0x4000703C))

void stepper_init(){
	volatile unsigned long delay;
/*	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOD; // activate port D
	delay = 0x01; //just set it do have a delay;
 	GPIO_PORTD_DIR_R |= 0x0F;
	GPIO_PORTD_AFSEL_R &= ~0x0F;
//	GPIO_PORTD_AMSEL_R &= ~0x0F;
	GPIO_PORTD_DEN_R |= 0x0F;   // enable digital I/O on PD5-4*/
	
		SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOF; // activate port A
	delay = 0x01; //just set it do have a delay;
 	GPIO_PORTF_DIR_R |= 0x0F;
	GPIO_PORTF_AFSEL_R &= ~0x0F;
//	GPIO_PORTD_AMSEL_R &= ~0x0F;
	GPIO_PORTF_DEN_R |= 0x0F;   // enable digital I/O on PD5-4
	GPIO_PORTF_DATA_R &= ~0X0F;
//	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOA;						// activate port A
//	delay = SYSCTL_RCGC2_R;										// allow time for clock to start
//	GPIO_PORTA_DIR_R |= 0x0F;									// make PA0, PA2, PA4, PA6 out
//	GPIO_PORTA_AFSEL_R &= ~0x0F;								// disable alt funct on PA0, PA2, PA4, PA6
//	GPIO_PORTA_DEN_R |= 0x0F;									// enable digital I/O on PA0, PA2, PA4, PA6
//	GPIO_PORTA_DATA_R &= ~0x0F;									// clear data
	
//	 SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOD);
//  GPIOPinTypeGPIOOutput( GPIO_PORTD_BASE, GPIO_PIN_3 | GPIO_PIN_2 | GPIO_PIN_1 | GPIO_PIN_0 );
//   GPIOPadConfigSet( GPIO_PORTD_BASE, GPIO_PIN_3 | GPIO_PIN_2 | GPIO_PIN_1 | GPIO_PIN_0, GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPD );
}
unsigned int watch = 0;
void stepper_output(char out){
	//LEDS = out;
	GPIO_PORTG_DATA_R ^= 0x04;								// heartbeat
	GPIO_PORTF_DATA_R = ~out;
	//GPIO_PORTA_DATA_R ^= 0x0F;
	watch = GPIO_PORTF_DATA_R;
	watch = watch+0;
}
