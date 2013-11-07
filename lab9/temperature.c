
#include "temperature.h"


unsigned long TLUT [129]; //TODO create look up table 


unsigned long convertToTemperature(unsigned long adcValue){
	
	unsigned long tableValue1 = TLUT[adcValue/8];
	unsigned long tableValue2 = TLUT[adcValue/8 + 1];
	return tableValue1 + (tableValue2 - tableValue1)*(adcValue%8)/8; //linear interpolation
}