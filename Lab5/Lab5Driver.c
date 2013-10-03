#include "Globals.h"


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
