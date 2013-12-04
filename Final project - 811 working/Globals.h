#ifndef __GLOBALS_H__
#define __GLOBALS_H__

#include "inc/hw_types.h"
#include "driverlib/sysctl.h"
#include "../driverlib/gpio.h"
#include "UART2.h"
#include "inc/hw_types.h"
#include "driverlib/sysctl.h"
#include "pll.h"
#include "XBeeOut.h"
#include "SysTick.h"
#include "inc/hw_ssi.h"
#include "inc/hw_memmap.h"
#include "inc/hw_sysctl.h"
#include "inc/hw_types.h"
#include "driverlib/debug.h"
#include "driverlib/gpio.h"
#include "driverlib/ssi.h"
#include "driverlib/sysctl.h"
#include "../inc/lm3s811.h"
#include "../driverlib/gpio.h"
#include "Switch.h"
#include "Timer0A.h"
#include "string.h"

#define GPIO_PORTC_DATA_R       (*((volatile unsigned long *)0x400063FC))
#define GPIO_PORTC_DIR_R        (*((volatile unsigned long *)0x40006400))
#define GPIO_PORTC_DEN_R        (*((volatile unsigned long *)0x4000651C))
#define GPIO_PORTC5             (*((volatile unsigned long *)0x40006080))

extern volatile unsigned long countb_overall;
//int strlen2(char * str);
void wait10ms(unsigned long);
#endif


