#ifndef __GLOBALS_H__
#define __GLOBALS_H__

#include "inc/hw_types.h"
#include "driverlib/sysctl.h"
#include "../inc/lm3s1968.h"
#include "../driverlib/gpio.h"


#define GPIO_PORTC_DATA_R       (*((volatile unsigned long *)0x400063FC))
#define GPIO_PORTC_DIR_R        (*((volatile unsigned long *)0x40006400))
#define GPIO_PORTC_DEN_R        (*((volatile unsigned long *)0x4000651C))
#define GPIO_PORTC5             (*((volatile unsigned long *)0x40006080))

extern volatile unsigned long countb_overall;

#endif
