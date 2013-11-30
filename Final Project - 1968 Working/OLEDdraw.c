#include "globals.h"
#include "RIT128x96x4.h"
#include "OLEDdraw.h"
#define NVIC_ST_CURRENT_R       (*((volatile unsigned long *)0xE000E018))
#define NVIC_ST_CTRL_R          (*((volatile unsigned long *)0xE000E010))
#define NVIC_ST_RELOAD_R        (*((volatile unsigned long *)0xE000E014))
#define NVIC_ST_CURRENT_R       (*((volatile unsigned long *)0xE000E018))
#define NVIC_ST_CTRL_COUNT      0x00010000  // Count flag
#define NVIC_ST_CTRL_CLK_SRC    0x00000004  // Clock Source
#define NVIC_ST_CTRL_INTEN      0x00000002  // Interrupt enable
#define NVIC_ST_CTRL_ENABLE     0x00000001  // Counter mode
#define NVIC_ST_RELOAD_M        0x00FFFFFF  // Counter load value


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
