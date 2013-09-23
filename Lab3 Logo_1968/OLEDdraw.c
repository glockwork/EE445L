#include "globals.h"
#include "RIT128x96x4.h"
#include "OLEDdraw.h"


void drawCircle(int x, int y, int radius);

int miniteRadius = 35;
int secondRadius = 40;
int hourRadius = 25;
unsigned char color  = 15;

void analogClockDraw(){
	int x_s = (int)(coslut[seconds]*secondRadius + 64);
	int y_s = (int)(sinlut[seconds]*secondRadius + 48);
	int x_m = (int)(coslut[minutes]*miniteRadius + 64);
	int y_m = (int)(sinlut[minutes]*miniteRadius + 48);
	int x_h = (int)(coslut[hours*5 + minutes/12]*hourRadius + 64);
	int y_h = (int)(sinlut[hours*5 + minutes/12]*hourRadius + 48);
		
	RIT128x96x4_ClearImage();
	drawCircle(64, 48, 45);
	

	//draws clock hands
	RIT128x96x4_Line(64, 48, x_s, y_s, color);
	RIT128x96x4_Line(64, 48, x_m, y_m, color);
	RIT128x96x4_Line(64, 48, x_h, y_h, color);
	RIT128x96x4_ShowImage();
}

//hh:mm:ss
void digitalClockDraw(){
	char time[20];	
	sprintf(time, "%02.d:%02.d:%02.d\n", hours, minutes, seconds);
 	RIT128x96x4StringDraw(time, 52, 44, color);
}

void timerDraw(){
}

void countdownDraw(){
}


//draws circle with radius r centered at (x,y)
void drawCircle(int x, int y, int r) {
	int i;
	int x_1 = r*coslut[0]+x;
	int y_1 = r*sinlut[0]+y;

	for(i = 1; i < 60; i++){
		int x_2 = r*coslut[i]+x;
		int y_2 = r*sinlut[i]+y;
		RIT128x96x4_Line(x_1, y_1, x_2, y_2, color);
		x_1 = x_2;
		y_1 = y_2;
	}
}