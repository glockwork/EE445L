#include "Globals.h"
#include "Timer0A.h"
#include "Music.h"

int interrupt_cycles_a = 500;
int interrupt_cycles_b = 50000;


int count_a = 0; //count for interrupt a
int count_b = 0; //count for interrupt b

void Timer0A_Init(){ 
	INTPERIOD = timer_period;
  TIMER0_CFG_R = TIMER_CFG_16_BIT; // configure for 16-bit timer mode
	
	
	//TIMER 1 - Frequency
  TIMER0_TAMR_R = TIMER_TAMR_TAMR_PERIOD;// configure for periodic mode
 
	//***** WORK WITH THE NUMBERS HERE ********** //
	TIMER0_TAILR_R = interrupt_cycles_a;  // start value to count down from
  TIMER0_IMR_R |= TIMER_IMR_TATOIM;// enable timeout (rollover) interrupt
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  
	// **** interrupt initialization **** // Timer0A=priority 2
  NVIC_PRI4_R = (NVIC_PRI4_R&0x00FFFFFF)|0x40000000; // top 3 bits
  NVIC_EN0_R |= NVIC_EN0_INT19;    // enable interrupt 19 in NVIC
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  //TIMER0_CTL_R |= TIMER_CTL_TAEN;  // enable timer0A 16-b, periodic, interrupts
	
	
	//TIMER 2 - note length
                                   // configure for periodic mode
  TIMER0_TBMR_R = TIMER_TBMR_TBMR_PERIOD;
  TIMER0_TBILR_R = interrupt_cycles_b;           //
  TIMER0_IMR_R |= TIMER_IMR_TBTOIM;// enable timeout (rollover) interrupt
  TIMER0_ICR_R = TIMER_ICR_TBTOCINT;// clear timer0B timeout flag



  NVIC_PRI5_R = (NVIC_PRI5_R&0xFFFFFF00)|0x00000040; // bits 5-7
	NVIC_EN0_R |= NVIC_EN0_INT19+NVIC_EN0_INT20;
	
  EnableInterrupts();
}


//Timer A: Outputs the 2 sin waves (1 for each instrument)
void Timer0A_Handler(void){
	
	TIMER0_ICR_R = TIMER_ICR_TATOCINT;// acknowledge timer0A timeout
	
	//if its been the proper number of cycles (for the frequency of the note), incrememnt the index to the table output
		

}

//	//Interrupts will constantly update note_index 
//	while(note_index < 60 && playing){
//		wave_freq = EyesofTexas[note_index];
//		note_length = EyesofTexas_t[note_index] / note_len_divider;
//	}

//Timer B: Changes the Notes of each instrument at the certain time

void Timer0B_Handler(void){
  TIMER0_ICR_R = TIMER_ICR_TBTOCINT;// acknowledge timer0B timeout

	//time to change note of instrument 1
	if((count_b*interrupt_cycles_b)/(note_len*songname_t1[note_index1]) >= 1){
		note_index1 += note_inc;
	}
	
	//time to change note of instrument 2
	if((count_b*interrupt_cycles_b)/(note_len*songname_t2[note_index2]) >= 1){
		note_index2 += note_inc;
	}
	
	if (note_index2 == -1 || note_index1 == -1 || note_index1 == song_len)
	{
		playing = 0;
		note_index2 = 0;
		note_index1 = 0;
		count_b = 0;
		TIMER0_CTL_R &= ~TIMER_CTL_TAEN;
		TIMER0_CTL_R &= ~TIMER_CTL_TBEN;
	}		
}
	
