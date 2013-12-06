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

void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode

extern char playMode;
extern long FMNote1;
extern long FMNote2;
extern char game_running;

extern long FMcount_a1; //free mode count for interrupt a
extern long FMcount_a2; //freemode  count for interrupt a
extern long FMcountNoteLength;
extern long FMcyclesLeft1;
extern long FMcyclesLeft2;

extern int corrects;
extern int errors;

#define FMNOTELENGTH 100000
#define SONG_SIZE 74

#endif
