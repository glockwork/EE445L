#include "inc/hw_types.h"
#include "driverlib/sysctl.h"
#include "timer0A.h"
#include "DAC.h"
#include "Switch.h"
#include "Music.h"

#define GPIO_PORTC_DATA_R       (*((volatile unsigned long *)0x400063FC))
#define GPIO_PORTC_DIR_R        (*((volatile unsigned long *)0x40006400))
#define GPIO_PORTC_DEN_R        (*((volatile unsigned long *)0x4000651C))
#define GPIO_PORTC5             (*((volatile unsigned long *)0x40006080))
#define SYSCTL_RCGC2_R          (*((volatile unsigned long *)0x400FE108))
#define SYSCTL_RCGC2_GPIOC      0x00000004  // port C Clock Gating Control

void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode

void UserTask(void){
  GPIO_PORTC5 ^= 0x20;
}

//debug code
int main(void){ volatile unsigned long delay;
  SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_OSC_MAIN |
                 SYSCTL_XTAL_8MHZ);
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOC;  // activate port C
  delay = SYSCTL_RCGC2_R;          // allow time to finish activating
  GPIO_PORTC_DIR_R |= 0x20;        // make PC5 out (PC5 built-in LED)
  GPIO_PORTC_DEN_R |= 0x20;        // enable digital I/O on PC5
  Timer0A_Init(&UserTask,50);       // initialize timer0A (~20,000 Hz)
  while(1){
    WaitForInterrupt();
  }
}
