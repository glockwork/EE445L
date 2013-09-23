#include "globals.h"
#include "RIT128x96x4.h"
#include "OLEDdraw.h"
float coslut[60] = {
	0.000, 0.105, 0.208, 0.309, 0.407, 0.500, 0.588, 0.669, 0.743, 0.809, 0.866, 0.914, 0.951, 0.978, 0.995, 1.000, 0.995, 0.978, 0.951, 0.914, 0.866, 0.809, 0.743, 0.669, 0.588, 0.500, 0.407, 0.309, 0.208, 0.105, 0.000, -0.105, -0.208, -0.309, -0.407, -0.500, -0.588, -0.669, -0.743, -0.809, -0.866, -0.914, -0.951, -0.978, -0.995, -1.000, -0.995, -0.978, -0.951, -0.914, -0.866, -0.809, -0.743, -0.669, -0.588, -0.500, -0.407, -0.309, -0.208, -0.105
};

float sinlut[60] = {
	-1.000, -0.995, -0.978, -0.951, -0.914, -0.866, -0.809, -0.743, -0.669, -0.588, -0.500, -0.407, -0.309, -0.208, -0.105, 0.000, 0.105, 0.208, 0.309, 0.407, 0.500, 0.588, 0.669, 0.743, 0.809, 0.866, 0.914, 0.951, 0.978, 0.995, 1.000, 0.995, 0.978, 0.951, 0.914, 0.866, 0.809, 0.743, 0.669, 0.588, 0.500, 0.407, 0.309, 0.208, 0.105, 0.000, -0.105, -0.208, -0.309, -0.407, -0.500, -0.588, -0.669, -0.743, -0.809, -0.866, -0.914, -0.951, -0.978, -0.995
};

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
	RIT128x96x4StringDraw((hours24>=12)?"PM":"AM", 110, 80, color);
	RIT128x96x4StringDraw("Alarm", 0, 76, color);
	RIT128x96x4StringDraw((alarmActive)?"On":"Off", 0, 85, color);

	RIT128x96x4StringDraw("12", 58, 5, color);
	RIT128x96x4StringDraw("3", 100, 48, color);
	RIT128x96x4StringDraw("9", 23, 48, color);
	RIT128x96x4StringDraw("6", 62, 80, color);

}

//hh:mm:ss
void digitalClockDraw(){
		drawDigitalValue(hours, minutes, seconds);
}

void drawDigitalValue(unsigned int h, unsigned int m, unsigned int s){
	char time[20];	
	sprintf(time, "%02d:%02d:%02d %s\n", h%12, m, s, (h>=12)?"PM":"AM");
 	RIT128x96x4StringDraw(time, 40, 44, color);
}

void drawInactiveTimer(){
	char time[20];	
	sprintf(time, "Returning in...%d  ", 10-inacTimer);
 	RIT128x96x4StringDraw(time,  0, 80, color);
}


void timerDraw(){
	char time[20];	
	sprintf(time, "%02d:%02d\n", timerMin, timerSec);
 	RIT128x96x4StringDraw(time, 40, 44, color);
}

void countdownDraw(){
	char time[20];	
	sprintf(time, "%02d:%02d\n", countMin, countSec);
 	RIT128x96x4StringDraw(time, 40, 44, color);
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