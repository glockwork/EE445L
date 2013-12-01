#include "globals.h"
#include "RIT128x96x4.h"
#include "OLEDdraw.h"

int width = 128;
int buffer_1=0;
int buffer_counter = 0;

//start times in MS
long start_times[5] = {
	1000, 2000, 4000, 8000, 16000
};

long start_locs[5] = {
	1,2,3,4,1
};

int location_pointer = 0;

#define BUFFER_SIZE 10
int buffer_y[BUFFER_SIZE];
int buffer_col[BUFFER_SIZE];
int buffer_pointer=0;

float coslut[60] = {
	0.000, 0.105, 0.208, 0.309, 0.407, 0.500, 0.588, 0.669, 0.743, 0.809, 0.866, 0.914, 0.951, 0.978, 0.995, 1.000, 0.995, 0.978, 0.951, 0.914, 0.866, 0.809, 0.743, 0.669, 0.588, 0.500, 0.407, 0.309, 0.208, 0.105, 0.000, -0.105, -0.208, -0.309, -0.407, -0.500, -0.588, -0.669, -0.743, -0.809, -0.866, -0.914, -0.951, -0.978, -0.995, -1.000, -0.995, -0.978, -0.951, -0.914, -0.866, -0.809, -0.743, -0.669, -0.588, -0.500, -0.407, -0.309, -0.208, -0.105
};

float sinlut[60] = {
	-1.000, -0.995, -0.978, -0.951, -0.914, -0.866, -0.809, -0.743, -0.669, -0.588, -0.500, -0.407, -0.309, -0.208, -0.105, 0.000, 0.105, 0.208, 0.309, 0.407, 0.500, 0.588, 0.669, 0.743, 0.809, 0.866, 0.914, 0.951, 0.978, 0.995, 1.000, 0.995, 0.978, 0.951, 0.914, 0.866, 0.809, 0.743, 0.669, 0.588, 0.500, 0.407, 0.309, 0.208, 0.105, 0.000, -0.105, -0.208, -0.309, -0.407, -0.500, -0.588, -0.669, -0.743, -0.809, -0.866, -0.914, -0.951, -0.978, -0.995
};

unsigned char color  = 15;

void BufferDraw(){
	/*if(buffer_1 >= 80) {
		drawCircle(width/8, 80, width/8);
		return;
	}
	drawCircle(width/8, buffer_1, width/8);
	buffer_1+=4;*/
	int i = 0;
	for(i = buffer_pointer; i < buffer_pointer; i = (i+1)%BUFFER_SIZE){
		if(buffer_y[i]>0 && buffer_y[i] <= 80){
			drawCircle(width*buffer_col[buffer_pointer]/8, buffer_y[buffer_pointer], width/8);
			buffer_y[buffer_pointer]+=4;
		}
		else if(buffer_y[i] <= 80){
			drawCircle(width*buffer_col[buffer_pointer]/8, 80, width/8);
		}
	}
}


void OLEDTimerInit(){ 
	//TIMER 2 - note length
                                   // configure for periodic mode
  TIMER1_TBMR_R = TIMER_TBMR_TBMR_PERIOD;
  TIMER1_TBILR_R = 50000;           //
  TIMER1_IMR_R |= TIMER_IMR_TBTOIM;// enable timeout (rollover) interrupt
  TIMER1_ICR_R = TIMER_ICR_TBTOCINT;// clear timer0B timeout flag

  NVIC_PRI5_R = (NVIC_PRI5_R&0xFF00FFFF)|0x00400000; // bits 5-7
	NVIC_EN0_R |= NVIC_EN0_INT22;
	
  EnableInterrupts();
}


//this timer handles LCD shit
void Timer1B_Handler(void){
	TIMER1_ICR_R = TIMER_ICR_TBTOCINT;
	buffer_counter++;
	if(buffer_counter < start_times[location_pointer])
		return;
	else{
		buffer_y[buffer_pointer] = 1;
		buffer_col[buffer_pointer] = start_locs[location_pointer];
		buffer_pointer = (buffer_pointer+1)%BUFFER_SIZE;
		//buffer_1=0;
		//buffer_counter = 5000;
	}
}



//draws circle with radius r centered at (x,y)
void drawCircle(int x, int y, int r) {
	int i;
	int x_1 = r*coslut[0]+x;
	int y_1 = r*sinlut[0]+y;

	for(i = 1; i < 61; i++){
		int x_2 = r*coslut[i%60]+x;
		int y_2 = r*sinlut[i%60]+y;
		RIT128x96x4_Line(x_1, y_1, x_2, y_2, color);
		x_1 = x_2;
		y_1 = y_2;
	}
}
