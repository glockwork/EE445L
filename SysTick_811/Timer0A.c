#include "Globals.h"
#include "Timer0A.h"
#include "Switch.h"
#include "XBeeOut.h"

#define NVIC_EN0_INT19          0x00080000  // Interrupt 19 enable
#define NVIC_EN0_R              (*((volatile unsigned long *)0xE000E100))  // IRQ 0 to 31 Set Enable Register
#define NVIC_PRI4_R             (*((volatile unsigned long *)0xE000E410))  // IRQ 16 to 19 Priority Register
#define TIMER0_CFG_R            (*((volatile unsigned long *)0x40030000))
#define TIMER0_TAMR_R           (*((volatile unsigned long *)0x40030004))
#define TIMER0_CTL_R            (*((volatile unsigned long *)0x4003000C))
#define TIMER0_IMR_R            (*((volatile unsigned long *)0x40030018))
#define TIMER0_MIS_R            (*((volatile unsigned long *)0x40030020))
#define TIMER0_ICR_R            (*((volatile unsigned long *)0x40030024))
#define TIMER0_TAILR_R          (*((volatile unsigned long *)0x40030028))
#define TIMER0_TAPR_R           (*((volatile unsigned long *)0x40030038))
#define TIMER0_TAR_R            (*((volatile unsigned long *)0x40030048))
#define TIMER_CFG_16_BIT        0x00000004  // 16-bit timer configuration,
                                            // function is controlled by bits
                                            // 1:0 of GPTMTAMR and GPTMTBMR
#define TIMER_TAMR_TAMR_PERIOD  0x00000002  // Periodic Timer mode
#define TIMER_CTL_TAEN          0x00000001  // GPTM TimerA Enable
#define TIMER_IMR_TATOIM        0x00000001  // GPTM TimerA Time-Out Interrupt
                                            // Mask
#define TIMER_ICR_TATOCINT      0x00000001  // GPTM TimerA Time-Out Raw
                                            // Interrupt
#define TIMER_TAILR_TAILRL_M    0x0000FFFF  // GPTM TimerA Interval Load
                                            // Register Low
#define SYSCTL_RCGC1_R          (*((volatile unsigned long *)0x400FE104))
#define SYSCTL_RCGC1_TIMER0     0x00010000  // timer 0 Clock Gating Control

void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode
void (*PeriodicTask)(void);  // user function
// ***************** Timer0A_Init ****************
// Activate Timer0A interrupts to run user task periodically
// Inputs:  task is a pointer to a user function
//          period in usec
// Outputs: none

unsigned short interrupt_cycles_a;
unsigned short interrupt_cycles_b;

void Timer0A_Init(unsigned short period){ 
  SYSCTL_RCGC1_R |= SYSCTL_RCGC1_TIMER0; // 0) activate timer0
	interrupt_cycles_a = period;
  TIMER0_CTL_R &= ~0x00000001;     // 1) disable timer0A during setup
  TIMER0_CFG_R = 0x00000004;       // 2) configure for 16-bit timer mode
  TIMER0_TAMR_R = 0x00000002;      // 3) configure for periodic mode
  TIMER0_TAILR_R = period;         // 4) reload value
  TIMER0_TAPR_R = 5;               // 5) 1us timer0A
  TIMER0_ICR_R = 0x00000001;       // 6) clear timer0A timeout flag
  TIMER0_IMR_R |= 0x00000001;      // 7) arm timeout interrupt
  NVIC_PRI4_R = (NVIC_PRI4_R&0x00FFFFFF)|0x40000000; // 8) priority 2
  NVIC_EN0_R |= NVIC_EN0_INT19;    // 9) enable interrupt 19 in NVIC
  TIMER0_CTL_R |= 0x00000001;      // 10) enable timer0A
  EnableInterrupts();
}

//void Timer0B_Init(unsigned short period){ 
//  SYSCTL_RCGC1_R |= SYSCTL_RCGC1_TIMER0; // 0) activate timer0
//	interrupt_cycles_b = period;
//	TIMER0_CFG_R = 0x00000004;       // 2) configure for 16-bit timer mode
//  TIMER0_CTL_R &= ~0x00000010;     // 1) disable timer0A during setup
//	TIMER0_TBMR_R = TIMER_TBMR_TBMR_PERIOD;
//	TIMER0_TBPR_R = 5;               // 5) 1us timer0A

//  TIMER0_TBILR_R = period;           // start value for 1000 Hz interrupts
//  TIMER0_IMR_R |= TIMER_IMR_TBTOIM;// enable timeout (rollover) interrupt
//  TIMER0_ICR_R = TIMER_ICR_TBTOCINT;// clear timer0B timeout flag
//  TIMER0_CTL_R |= TIMER_CTL_TBEN;  // enable timer0A 16-b, +edge, interrupts
//	
//  NVIC_PRI5_R = (NVIC_PRI5_R&0xFFFFFF00)|0x00000040; // bits 5-7
//                                   // enable interrupts 19 and 20 in NVIC
//  NVIC_EN0_R |= NVIC_EN0_INT20;
//  EnableInterrupts();
//}

unsigned int portDValues = 0;
unsigned int portBValues = 0;

void Timer0A_Handler(void){
	unsigned int newPortDValues;
  unsigned int newPortBValues;
	char portBsend [1];
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;// acknowledge timer0A timeout

	TIMER0_TAILR_R = interrupt_cycles_a - 1; //TIMER0_TAILR_R + periodShift;
	
	newPortDValues = readD();
	newPortBValues = readB();
	portBValues = newPortBValues;
	portDValues = newPortDValues;
	
	//look at portB bit corresponding to hit
	portBsend[0] = (char)portBValues;
	XBee_sendDataFrame(portBsend);	//if hit, then send all buttons through Zigbee
	
	
	//read ports
	//for each bit, if the value is different, send through zigbee 
}

unsigned long countb = 0;

//void Timer0B_Handler(void){

//  TIMER0_ICR_R = TIMER_ICR_TBTOCINT;// acknowledge timer0A timeout
//	TIMER0_TAILR_R = interrupt_cycles_b - 1; //TIMER0_TAILR_R + periodShift;
//	countb++;
//}


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

//void Timer0B_Handler(void){
//  TIMER0_ICR_R = TIMER_ICR_TBTOCINT;// acknowledge timer0B timeout
//	TIMER0_TBILR_R = interrupt_cycles_b - 1; //TIMER0_TAILR_R + periodShift;
//			
//}
	
