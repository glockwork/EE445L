#include "Globals.h"
#include "Timer0A.h"

void Timer0A_Init(){ 
	INTPERIOD = timer_period;
  TIMER0_CFG_R = TIMER_CFG_16_BIT; // configure for 16-bit timer mode
	
	
	//TIMER 1 - Frequency
  TIMER0_TAMR_R = TIMER_TAMR_TAMR_PERIOD;// configure for periodic mode
 
	//***** WORK WITH THE NUMBERS HERE ********** //
	TIMER0_TAILR_R = 50000;  // start value to count down from
  TIMER0_IMR_R |= TIMER_IMR_TATOIM;// enable timeout (rollover) interrupt
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  
	// **** interrupt initialization **** // Timer0A=priority 2
  NVIC_PRI4_R = (NVIC_PRI4_R&0x00FFFFFF)|0x40000000; // top 3 bits
  NVIC_EN0_R |= NVIC_EN0_INT19;    // enable interrupt 19 in NVIC
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  TIMER0_CTL_R |= TIMER_CTL_TAEN;  // enable timer0A 16-b, periodic, interrupts
	

  NVIC_PRI5_R = (NVIC_PRI5_R&0xFFFFFF00)|0x00000040; // bits 5-7
	NVIC_EN0_R |= NVIC_EN0_INT19+NVIC_EN0_INT20;
	
  EnableInterrupts();
}


//Timer A: Interrupts on Frequency
//**This method needs to be fixed
void Timer0A_Handler(void){
	
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;// acknowledge timer0A timeout
		
	//this is broken:
	//if(++Count%wave_freq != 0){
	//	return;
	//}
	
	DAC_Out(1024); //0, 512, 
	wave_loc = (wave_loc + 1) % 32;
}



//Timer B: Interrupts on Notes
//**This method needs to be fixed
void Timer0B_Handler(void){
  TIMER0_ICR_R = TIMER_ICR_TBTOCINT;// acknowledge timer0B timeout
	
//	//broken, do maths
//	if(++CountB%note_length != 0){
//		return;
//	}
//	
//	wave_loc = (wave_loc+1)%wave_len;

}
	
