#include "Globals.h"
#include "Timer0A.h"
#include "Music.h"

int interrupt_cycles_a = 500;
int interrupt_cycles_b = 50000;

volatile unsigned long countb_overall = 0; //used for debouncing
int count_a1 = 0; //count for interrupt a
int count_a2 = 0; //count for interrupt a

int count_b1 = 0; //count for interrupt b
int count_b2 = 0; //count for interrupt b

void Timer0A_Init(){ 
	//INTPERIOD = interrupt_cycles_a;
  TIMER0_CFG_R = TIMER_CFG_16_BIT; // configure for 16-bit timer mode
	
	
	//TIMER 1 - Frequency
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
	
	
	//TIMER 2 - note length
                                   // configure for periodic mode
  TIMER0_TBMR_R = TIMER_TBMR_TBMR_PERIOD;
  TIMER0_TBILR_R = interrupt_cycles_b - 1;           //
  TIMER0_IMR_R |= TIMER_IMR_TBTOIM;// enable timeout (rollover) interrupt
  TIMER0_ICR_R = TIMER_ICR_TBTOCINT;// clear timer0B timeout flag



  NVIC_PRI5_R = (NVIC_PRI5_R&0xFFFFFF00)|0x00000040; // bits 5-7
	NVIC_EN0_R |= NVIC_EN0_INT19+NVIC_EN0_INT20;
	
  EnableInterrupts();
}

unsigned long viewshit = 0;

//Timer A: Outputs the 2 sin waves (1 for each instrument)
void Timer0A_Handler(void){
	int ret = 0;
	count_a1++;
	count_a2++;

	TIMER0_ICR_R = TIMER_ICR_TATOCINT;// acknowledge timer0A timeout
	TIMER0_TAILR_R = interrupt_cycles_a - 1; //TIMER0_TAILR_R + periodShift;

	//if its been the proper number of cycles (for the frequency of the note), incrememnt the index to the table output
	viewshit = EyesofTexas1[wave_loc_1] + 1;
	//checks if time to output next value in first waveform
	if(count_a1*interrupt_cycles_a / Wave[wave_loc_1] >= 1){
		wave_loc_1+=wave_inc;
		wave_loc_1 = (wave_loc_1+wave_len)%wave_len;
		ret=1;
		count_a1 =0;
	}
	
	//checks if time to output next value in second waveform
	if(count_a2*interrupt_cycles_a / Wave[wave_loc_2] >= 1){
		wave_loc_2+=wave_inc;
		wave_loc_2 = (wave_loc_2+wave_len)%wave_len;

		ret = 1;
		count_a2 = 0;
	}
	
//	if(!ret)
//		return;
	
	//outputs values
	DAC_Out((Wave[wave_loc_1] + Wave[wave_loc_2])/2);
	

}

//	//Interrupts will constantly update note_index 
//	while(note_index < 60 && playing){
//		wave_freq = EyesofTexas[note_index];
//		note_length = EyesofTexas_t[note_index] / note_len_divider;
//	}

//Timer B: Changes the Notes of each instrument at the certain time

void Timer0B_Handler(void){
  TIMER0_ICR_R = TIMER_ICR_TBTOCINT;// acknowledge timer0B timeout
	TIMER0_TBILR_R = interrupt_cycles_b - 1; //TIMER0_TAILR_R + periodShift;

	countb_overall ++;
	count_b1 ++ ;
	count_b2 ++;
	
	//multipliers
	//for the first .1s, increase from 0 to 100 %
			//for 100*count_b*intcycb/(note_len*Whole) < 10
			//multiplier = 1000*count_b*intcycb/(note_len*Whole)
	//after first .1s to 1s, decrease from 100 to 0
		//100 - t^2*100
		//multiplier = 100 - (count_b*intcycb*100/(note_len*Whole))^2/100

	//t = count_b*intcycb/(note_len*Whole)
	
		if (100*count_b1*interrupt_cycles_b/(note_len*Whole) < 10)
			note_mag_mult1_per = 1000*count_b1*interrupt_cycles_b/(note_len*Whole);
		else
			note_mag_mult1_per = 100 - (count_b1*interrupt_cycles_b*100/(note_len*Whole))^2/100;
		
		if (100*count_b2*interrupt_cycles_b/(note_len*Whole) < 10)
			note_mag_mult2_per = 1000*count_b2*interrupt_cycles_b/(note_len*Whole);
		else
			note_mag_mult2_per = 100 - (count_b2*interrupt_cycles_b*100/(note_len*Whole))^2/100;
	
	//time to change note of instrument 1
	if((count_b1*interrupt_cycles_b)/(note_len*songname_t1[note_index1]) >= 1){
		note_index1 += note_inc;
		count_b1 = 0;
	}
	
	//time to change note of instrument 2
	if((count_b2*interrupt_cycles_b)/(note_len*songname_t2[note_index2]) >= 1){
		note_index2 += note_inc;
		count_b2 = 0;
	}
	
	if (note_index2 == -1 || note_index1 == -1 || note_index1 == song_len)
	{
		playing = 0;
		note_index2 = 0;
		note_index1 = 0;
		count_b1 = 0;
		count_b2 = 0;
		TIMER0_CTL_R &= ~TIMER_CTL_TAEN;
		TIMER0_CTL_R &= ~TIMER_CTL_TBEN;
	}		
}
	
