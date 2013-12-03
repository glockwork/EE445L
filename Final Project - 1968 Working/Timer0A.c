#include "Globals.h"
#include "Timer0A.h"
#include "Music.h"

int interrupt_cycles_a = 200;
int interrupt_cycles_b = 50000;

volatile unsigned long countb_overall = 0; //used for debouncing
long count_a1 = 0; //count for interrupt a
long count_a2 = 0; //count for interrupt a


long count_b1 = 0; //count for interrupt b

int score_loc = 0;
int currently_playing_1;
int currently_playing_2;
int currently_playing_3;

int currently_left_1 = 0;
int currently_left_2 = 0;
int currently_left_3 = 0;

int interrupt_time = 0;

int wave_loc_1 = 0;
int wave_loc_2 = 0;
int wave_loc_3 = 0;

int num_playing = 0;
int magnitude_1;
int magnitude_2;
int magnitude_3;

void FrequencyTimersInit(){ 
	//INTPERIOD = interrupt_cycles_a;
  TIMER0_CFG_R = TIMER_CFG_16_BIT; // configure for 16-bit timer mode
	
	
	//TIMER0A - Frequency
  TIMER0_TAMR_R = TIMER_TAMR_TAMR_PERIOD;// configure for periodic mode
 
	//***** WORK WITH THE NUMBERS HERE ********** //
	TIMER0_TAILR_R = interrupt_cycles_a - 1;  // start value to count down from
  TIMER0_IMR_R |= TIMER_IMR_TATOIM;// enable timeout (rollover) interrupt
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  
	// **** interrupt initialization **** // Timer0A=priority 2
  NVIC_PRI4_R = (NVIC_PRI4_R&0x00FFFFFF)|0x40000000; // top 3 bits
  NVIC_EN0_R |= NVIC_EN0_INT19;    // enable interrupt 19 in NVIC
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  //TIMER0_CTL_R |= TIMER_CTL_TAEN;  // enable timer0A 16-b, periodic, interrupts
	
	
	
	/***********/
	//TONE GEN 2/
	/***********/
	//INTPERIOD = interrupt_cycles_a;
  TIMER1_CFG_R = TIMER_CFG_16_BIT; // configure for 16-bit timer mode
	
	
	//TIMER 1 - Frequency
  TIMER1_TAMR_R = TIMER_TAMR_TAMR_PERIOD;// configure for periodic mode
 
	//***** WORK WITH THE NUMBERS HERE ********** //
	TIMER1_TAILR_R = interrupt_cycles_a - 1;  // start value to count down from
  TIMER1_IMR_R |= TIMER_IMR_TATOIM;// enable timeout (rollover) interrupt
  TIMER1_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  
	// **** interrupt initialization **** // Timer0A=priority 2
  NVIC_PRI5_R = (NVIC_PRI4_R&0xFFFF00FF)|0x00004000; // top 3 bits
  NVIC_EN0_R |= NVIC_EN0_INT21;    // enable interrupt 21 in NVIC
  TIMER1_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  //TIMER1_CTL_R |= TIMER_CTL_TAEN;  // enable timer0A 16-b, periodic, interrupts
	
	
	
	
	/***********/
	//TONE GEN 3/
	/***********/
	//INTPERIOD = interrupt_cycles_a;
  TIMER2_CFG_R = TIMER_CFG_16_BIT; // configure for 16-bit timer mode
	
	
	//TIMER 1 - Frequency
  TIMER2_TAMR_R = TIMER_TAMR_TAMR_PERIOD;// configure for periodic mode
 
	//***** WORK WITH THE NUMBERS HERE ********** //
	TIMER2_TAILR_R = interrupt_cycles_a - 1;  // start value to count down from
  TIMER2_IMR_R |= TIMER_IMR_TATOIM;// enable timeout (rollover) interrupt
  TIMER2_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  
	// **** interrupt initialization **** // Timer0A=priority 2
  NVIC_PRI5_R = (NVIC_PRI4_R&0x00FFFFFF)|0x40000000; // top 3 bits
  NVIC_EN0_R |= NVIC_EN0_INT23;    // enable interrupt 21 in NVIC
  TIMER2_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  //TIMER1_CTL_R |= TIMER_CTL_TAEN;  // enable timer0A 16-b, periodic, interrupts
	
  EnableInterrupts();
}

void MIDIParserInit(){
	//TIMER 2 - note length
                                   // configure for periodic mode
  TIMER0_TBMR_R = TIMER_TBMR_TBMR_PERIOD;
  TIMER0_TBILR_R = interrupt_cycles_b - 1;         //
  TIMER0_IMR_R |= TIMER_IMR_TBTOIM;// enable timeout (rollover) interrupt
  TIMER0_ICR_R = TIMER_ICR_TBTOCINT;// clear timer0B timeout flag

  NVIC_PRI5_R = (NVIC_PRI5_R&0xFFFFFF00)|0x00000040; // bits 5-7
	NVIC_EN0_R |= NVIC_EN0_INT19+NVIC_EN0_INT20;
	
  EnableInterrupts();
}

//Timer A: Outputs the 2 sin waves (1 for each instrument)
void Timer0A_Handler(void){
	TIMER0_ICR_R = TIMER_ICR_TATOCINT;// acknowledge timer0A timeout
	
	if(currently_playing_1 <= 0)
		return;
	wave_loc_1 = (wave_loc_1+1)%wave_len;
	magnitude_1 = wavename1[wave_loc_1];
	
	DAC_Out((magnitude_1+magnitude_2+magnitude_3));
		
	TIMER0_TAILR_R = currently_playing_1;
}

//handles 2nd half of sound wave
void Timer1A_Handler(void){
	TIMER1_ICR_R = TIMER_ICR_TATOCINT;
	
	if(currently_playing_2 <= 0)
		return;
	wave_loc_2 = (wave_loc_2+1)%wave_len;
	//DAC_Out(wavename2[wave_loc_2]);
	
	DAC_Out((magnitude_1+magnitude_2+magnitude_3));
	
	TIMER1_TAILR_R = currently_playing_2;

}


//handles 3rd of sound wave
void Timer2A_Handler(void){
	TIMER2_ICR_R = TIMER_ICR_TATOCINT;
	
	if(currently_playing_3 <= 0)
		return;
	wave_loc_3 = (wave_loc_3+1)%wave_len;
	//DAC_Out(wavename2[wave_loc_2]);
	
	magnitude_3 = wavename3[wave_loc_3];
	
	DAC_Out((magnitude_1+magnitude_2+magnitude_3));
	
	TIMER2_TAILR_R = currently_playing_2;

}

void Timer0B_Handler(void){
  TIMER0_ICR_R = TIMER_ICR_TBTOCINT;// acknowledge timer0B timeout
	count_b1--;
	
	if(count_b1 > 0)
		return;
	
	while(score[score_loc]!=0 && score[score_loc]!=0xF0 && score[score_loc] != 1){
		switch(score[score_loc]){
			case 0x90:
				currently_playing_1 = NoteFrequency[score[score_loc+1]];
				currently_left_1 = currently_playing_1;
				num_playing++;
				score_loc+=2;
				break;
			case 0x91:
				currently_playing_2 = NoteFrequency[score[score_loc+1]];
				currently_left_2 = currently_playing_2;
				num_playing++;
				score_loc+=2;
				break;
			case 0x92:
				currently_playing_3 = NoteFrequency[score[score_loc+1]];
				currently_left_3 = currently_playing_3;
				num_playing++;
				score_loc+=2;
				break;
			case 0x80:
				currently_playing_1 = -1;
				score_loc++;
				num_playing--;
				magnitude_1 = 0;
				break;
			case 0x81:
				currently_playing_2 = -1;
				score_loc++;
				num_playing--;
				magnitude_2 = 0;
				break;
			case 0x82:
				currently_playing_3 = -1;
				score_loc++;
				num_playing--;
				magnitude_3 = 0;
				break;
			default:
				score_loc++;
				
		}
	}
	
	//we want to set Timer0B to be interrupted after n MS
	if(score[score_loc]==0xF0){
		TIMER0_CTL_R &= ~TIMER_CTL_TAEN;
		TIMER1_CTL_R &= ~TIMER_CTL_TAEN;
		TIMER2_CTL_R &= ~TIMER_CTL_TAEN;
	}
	
	if(score[score_loc]==0 || score[score_loc] == 1){
		count_b1 = score[score_loc+1];
		score_loc+=2;
	}
	
}
	
