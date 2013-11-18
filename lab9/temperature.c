
#include "temperature.h"


unsigned long TLUT [129]; //TODO create look up table 
unsigned long tableValue1;
unsigned long tableValue2;
long offsetT = -64;
long offsetTemp = -600;
unsigned short const ADCdata[53]={0,1,13,30,48,65,83,101,119,137,155,		
     173,191,209,228,246,265,284,302,321,340,		
     359,378,398,417,436,456,476,495,515,535,		
     555,575,595,615,635,655,675,696,716,737,		
     757,778,798,819,840,861,882,902,923,944,965,1024};		

		
unsigned short const Tdata[53]={4000,4000,3950,3900,3850,3800,3750,3700,3650,3600,3550,		
     3500,3450,3400,3350,3300,3250,3200,3150,3100,3050,		
     3000,2950,2900,2850,2800,2750,2700,2650,2600,2550,		
     2500,2450,2400,2350,2300,2250,2200,2150,2100,2050,		
     2000,1950,1900,1850,1800,1750,1700,1650,1600,1550,1500,1500};		

unsigned short const Rdata[53]={638,638,646,655,663,672,680,689,698,708,717,
     726,736,746,756,766,776,786,797,808,819,
     830,841,853,865,877,889,901,914,927,940,
     953,966,980,994,1008,1023,1037,1052,1068,1083,
     1099,1115,1131,1148,1165,1182,1200,1218,1236,1255,1274,1274};

unsigned long convertToTemperature(unsigned long adcValue){
	int i = 0;
	adcValue += offsetT;
	if (adcValue == 1024) return Tdata[0] + offsetTemp;
	for (i=0;i<52;i++)
	{
		if (adcValue == ADCdata[i]) return Tdata[51 - i] + offsetTemp;
		else if (adcValue > ADCdata[i] && adcValue < ADCdata[i+1])
		{
			tableValue1 = Tdata[51 - i];
			tableValue2 = Tdata[51 - i - 1];
			return tableValue1 + (tableValue2 - tableValue1)*(adcValue%19)/19 + offsetTemp;
		}
		
	}
	return 0;
}

