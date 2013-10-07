#include "Globals.h"
#include "Music.h"

const unsigned short Wave[32]= { 
 2048,2438,2813,3159,3462,3711,3896,4010,4048,4010,3896, 
 3711,3462,3159,2813,2438,2048,1658,1283,937,634,385, 
 200,86,48,86,200,385,634,937,1283,1658
}; 

const unsigned short EyesofTexas[60] = {   
  G, D, G, D, G, A, B, G, C, G, A, B, G, D, G, D,G,A,B,G,B,A,B,A,A,D,A, AF,A, AF,A,B,G,D,C,G,A,B,E, EF,G, EF,G,E,D,G,B,C,B,A,G,0
};


const unsigned short EyesofTexas_t[60] = {
  DottedQ,Eighth,DottedE,Sixteenth,DottedE,Sixteenth,DottedE, Quarter ,Half,Quarter,Quarter,Whole,DottedQ,Eighth,DottedE,Sixteenth,DottedE,Sixteenth,Half,Half,Quarter,Half,Quarter,Half,Quarter,Quarter,DottedQ,Eighth,DottedE,Sixteenth,DottedE,Sixteenth,Half,Half,Half,Quarter,Quarter,Whole,DottedQ,Eighth,DottedE,Sixteenth,DottedE,Sixteenth,Half,Half,Quarter,Quarter,Quarter,Quarter,Whole,0
};   

int wave_freq = 1000;
int wave_loc = 0;
int note_length = 100;
int note_index = 0;

void PlaySong(){
	
	//Enables note and frequency timers
	TIMER0_CTL_R |= TIMER_CTL_TAEN;
	TIMER0_CTL_R |= TIMER_CTL_TBEN;
	
	//Interrupts will constantly update note_index 
	while(note_index < 60 && playing){
		wave_freq = EyesofTexas[note_index];
		note_length = EyesofTexas_t[note_index];
	}
	
	//done with song, disable interrupts
	TIMER0_CTL_R &= ~TIMER_CTL_TAEN;
	TIMER0_CTL_R &= ~TIMER_CTL_TBEN;
}
