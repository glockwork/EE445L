#include "Globals.h"
#include "Timer0A.h"
#include "Switch.h"
#include "XBeeOut.h"
int interrupt_cycles_a = 50000; //TODO figure out correct interrupts for 20 ms
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


unsigned int portDValues = 0;
unsigned int portBValues = 0;

//Timer A: Outputs the 2 sin waves (1 for each instrument)
void Timer0A_Handler(void){
	unsigned int newPortDValues;
  unsigned int newPortBValues;

	TIMER0_ICR_R = TIMER_ICR_TATOCINT;// acknowledge timer0A timeout
	TIMER0_TAILR_R = interrupt_cycles_a - 1; //TIMER0_TAILR_R + periodShift;
	
	newPortDValues = readD();
	newPortBValues = readB();

	//read ports
	//for each bit, if the value is different, send through zigbee 

}

void checkChange (unsigned int oldValue, unsigned int newValue, unsigned char port)
{
	int change = oldValue ^ newValue;
	int i;
	for (i = 0; i<8;i++){
		if ((change & 0x01) == 1)
			portChanged(port, i);
		change >>= 1; 
	}
}

void portChanged(unsigned char port, unsigned char num){
	char data[2];
	data[0] = port;
	data[1] = num;
	XBee_sendDataFrame(data);
}

void Timer0B_Handler(void){
  TIMER0_ICR_R = TIMER_ICR_TBTOCINT;// acknowledge timer0B timeout
	TIMER0_TBILR_R = interrupt_cycles_b - 1; //TIMER0_TAILR_R + periodShift;
			
}
	
