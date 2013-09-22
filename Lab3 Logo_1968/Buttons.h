#include "rit128x96x4.h"
#include "hw_types.h"
#include "sysctl.h"
#include "lm3s1968.h"
#include "gpio.h"
#include "inc/hw_memmap.h"
#include "globals.h"
#include "helper.h"
#include "sound.h"
#include "Output.h"

void switchHandler();

void initButtons ();


void switchHandler(void);
void GPIOPortG_Handler(void);

void handlerSW3 ();

void handlerSW4 ();

void handlerSW5 ();

void handlerSW6 ();