//#include "hw_types.h"
//#include "sysctl.h"
#include "lm3s1968.h"
#include "inc/hw_memmap.h"
#include "SysTick.h"

void switch_init()
{
	volatile unsigned long delay;
	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOG; // activate port G
	delay = 0x01; //just set it do have a delay;
 	GPIO_PORTG_PUR_R = 0x78;
	GPIO_PORTG_DIR_R &= ~0x78;  // make PD5-4 in (PD5-4 buttons)
	GPIO_PORTG_DEN_R |= 0x78;   // enable digital I/O on PD5-4
	GPIO_PORTG_IS_R &= ~0x78;   // PD5-4 is edge-sensitive (default setting)
	GPIO_PORTG_IBE_R &= ~0x78;  // PD5-4 is not both edges (default setting)
	GPIO_PORTG_IEV_R &= ~0x78;  // PD5-4 falling edge event (default setting)
	//GPIO_PORTG_ICR_R = 0x78;    // clear flag5-4
	//GPIO_PORTG_IM_R |= 0x78;    // enable interrupt on PD5-4
                            	// GPIO PortD=priority 2
	//NVIC_PRI0_R = (NVIC_PRI0_R&0x00FFFFFF)|0x40000000; // bits 29-31
	//NVIC_EN0_R |= 0x80000000;// enable interrupt 3 in NVIC
	
}

unsigned long switch_read(){
	int c = 0;
	int b = 0;
	int a = 0;
	
	if(GPIO_PORTG_RIS_R&0x20){  // poll PD4 -> sw5
    	c=1;
  }
	if(GPIO_PORTG_RIS_R&0x10){  // poll PD4 -> sw4
    	b=1;
  }
	if(GPIO_PORTG_RIS_R&0x08){  // poll PD4 -> sw3
    	a=1;
  }
//	return CBA (C*2^2 + B*2^1 + A)
	return c*4+b*2+a;
}