#include "Globals.h"
#include "Timer0A.h"
#include "Music.h"

int interrupt_cycles_a = 200;
int interrupt_cycles_b = 50000;

volatile unsigned long countb_overall = 0; //used for debouncing
long count_a1 = 0; //count for interrupt a
long count_a2 = 0; //count for interrupt a

long count_b1 = 0; //count for interrupt b
long count_b2 = 0; //count for interrupt b

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
unsigned short viewshit2=0;

unsigned int cyclesLeft1 =0;
unsigned int cyclesLeft2 =0;

unsigned int cyclesCount1 = 0;
unsigned int cyclesCount2 = 0;

unsigned int noteToChange = 0; //1 for note1, 2 for note2, and 3 for both

//Timer A: Outputs the 2 sin waves (1 for each instrument)
void Timer0A_Handler(void){

	int ret = 0;
	unsigned int minleft =0;
	count_a1++;
	count_a2++;
	if (cyclesLeft1 < cyclesLeft2){
			minleft = cyclesLeft1;
			cyclesLeft1 = songname1[note_index1];
			cyclesLeft2 -= cyclesLeft1;
			noteToChange = 1;
			cyclesCount1 = 0;
	}
	else 	if (cyclesLeft2 < cyclesLeft1){
			minleft = cyclesLeft2;
			cyclesLeft2 = songname2[note_index2];
			cyclesLeft1 -= cyclesLeft2;
			noteToChange = 2;
			cyclesCount2 = 0;
	} 
	else {
			minleft = cyclesLeft2;
			cyclesLeft2 = songname2[note_index2];
			cyclesLeft1 = songname1[note_index1];
			noteToChange = 3;
			cyclesCount1 = 0;
			cyclesCount2 = 0;

	}
		
	TIMER0_ICR_R = TIMER_ICR_TATOCINT;// acknowledge timer0A timeout
	TIMER0_TAILR_R = minleft - 1; //TIMER0_TAILR_R + periodShift;
	
		if (note_index2 == -1 || note_index1 == -1 || note_index1 >= song_len){
		playing = 0;
		note_index2 = 0;
		note_index1 = 0;
		count_b1 = 0;
		count_b2 = 0;
		cyclesLeft1 = 0;
		cyclesLeft2 = 0;
		TIMER0_CTL_R &= ~TIMER_CTL_TAEN;
		TIMER0_CTL_R &= ~TIMER_CTL_TBEN;
		return;
	}

	if (noteToChange == 1 || noteToChange == 3){
		wave_loc_1+=1;
		if (wave_loc_1>=wave_len)wave_loc_1 = 0;
		ret=1;
		count_a1 =0;
	}
	
	//checks if time to output next value in second waveform
	//if(count_a2*interrupt_cycles_a / songname2[note_index2] >= 1){
	if (noteToChange == 2 || noteToChange == 3){
		wave_loc_2+=1;
		if (wave_loc_2>=wave_len)wave_loc_2 = 0;
		ret = 1;
		count_a2 = 0;
	}
	
	DAC_Out((short)(((long)(wavename1[wave_loc_1]))*note_mag_mult1_per/100 + ((long)(wavename2[wave_loc_2]))*note_mag_mult2_per/100)/2);

		cyclesCount1 += minleft;
		cyclesCount2 += minleft;
}


void Timer0B_Handler(void){
  TIMER0_ICR_R = TIMER_ICR_TBTOCINT;// acknowledge timer0B timeout
	TIMER0_TBILR_R = interrupt_cycles_b - 1; //TIMER0_TAILR_R + periodShift;
	
	if (note_index2 == -1 || note_index1 == -1 || note_index1 >= song_len){
		playing = 0;
		note_index2 = 0;
		note_index1 = 0;
		count_b1 = 0;
		count_b2 = 0;
		cyclesLeft1 = 0;
		cyclesLeft2 = 0;
		TIMER0_CTL_R &= ~TIMER_CTL_TAEN;
		TIMER0_CTL_R &= ~TIMER_CTL_TBEN;
		return;
	}

	countb_overall ++;
	count_b1 ++ ;
	count_b2 ++;
	
	//time to change note of instrument 1
	if((count_b1*interrupt_cycles_b)/(note_len*songname_t1[note_index1]/note_len_divider) >= 1){
		note_index1 += note_inc;
		count_b1 = 0;
		cyclesLeft1 = songname1[note_index1];

	}
	
	//time to change note of instrument 2
	if((count_b2*interrupt_cycles_b)/(note_len*songname_t2[note_index2]/note_len_divider) >= 1){
		note_index2 += note_inc;
		count_b2 = 0;
		cyclesLeft2 = songname1[note_index2];

	}
	
	if (note_index2 == -1 || note_index1 == -1 || note_index1 >= song_len)
	{
		playing = 0;
		note_index2 = 0;
		note_index1 = 0;
		count_b1 = 0;
		count_b2 = 0;
		cyclesLeft1 = 0;
		cyclesLeft2 = 0;
		TIMER0_CTL_R &= ~TIMER_CTL_TAEN;
		TIMER0_CTL_R &= ~TIMER_CTL_TBEN;
	}		
}
	
