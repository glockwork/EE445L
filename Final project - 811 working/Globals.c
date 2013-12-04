#include "globals.h"

//int strlen2(char * str){
//	int len = 0;
//	while(*(str + len)!=0)
//		len++;
//	
//	return len;
//	
//}

void wait10ms(unsigned long delay){
	
	unsigned long i44 = 0;
	unsigned long j44 = 0;
//	volatile unsigned long dummy = 0;
	for (i44 = 0; i44 < delay; i44++)
		for (j44 = 0; j44 < 150000; j44++);
	//		dummy ++ ;
			
}