#include "lm3s1968.h"
#include "inc/hw_memmap.h"
#include "SysTick.h"
#include "../inc/hw_types.h"
#include "../driverlib/sysctl.h"
#include "../inc/lm3s1968.h"
#include "../inc/hw_memmap.h"
#include "../driverlib/debug.h"
#include "../driverlib/gpio.h"
#include "../driverlib/pwm.h"

#include "UART2.h"
#include "Switch.h"

void main(){
	
	SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_OSC_MAIN | SYSCTL_XTAL_8MHZ); //pll init
  UART_Init();              // initialize UART
	Switch_Init(); 						// initialize switch
	XBeeInit();
	XBee_CreateTxFrame("hi");
	//enable timer interrupts
}