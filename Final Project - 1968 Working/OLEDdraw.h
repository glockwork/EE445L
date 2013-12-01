
extern float coslut[60];

extern float sinlut[60];

void drawDigitalValue(unsigned int h, unsigned int m, unsigned int s);
void drawInactiveTimer(void);

void drawCircle(int x, int y, int radius);

void OLEDTimerInit(void);

void Timer1B_Handler(void);

void BufferDraw(void);
