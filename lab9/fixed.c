#include <stdio.h>
#include "fixed.h"
// const will place these structures in ROM
void Fixed_uDecOut2s(unsigned long n,  char *string)
{
	if (n >= 100000)
		sprintf(string, "***.**");
	else{
		int rem = n%100;
		int div = n/100;
		char * pre;
		if (n < 1000)
			pre = "  ";
		else if (n < 10000)
			pre = " ";
		else pre = "";
		
		if (rem < 10)
			sprintf(string, "%s%d.0%d",pre, div, rem);
		else
			sprintf(string, "%s%d.%d",pre, div, rem);
			}
}

void Fixed_sDecOut3s(long n, char *string)
{
	if( n >= 10000 || n <= -10000)
		sprintf(string, " *.***");
	else{
		int pre = n/1000;
		int post = n%1000;
  	if (post < 0) post = -post;
		if(n<0)
			sprintf(string, "-%1d.%03d", -pre, post);
		else
			sprintf(string, " %1d.%03d", pre, post);
	}
}

void Fixed_uBinOut8s(unsigned long n,  char *string){
	int d = n*100/256;
	if (d%100 < 10){
		if (d < 10)
			sprintf(string, "  %d.0%d", d/100, d%100);
		else if(d < 1000)
			sprintf(string, "  %d.0%d", d/100, d%100);
		else if(d<10000)
			sprintf(string, " %d.0%d", d/100, d%100);
		else if(d<100000)
			sprintf(string, "%d.0%d", d/100, d%100);
		else 
			sprintf(string, "***.**");
	}
	else{

		if(d < 1000)
			sprintf(string, "  %d.%d", d/100, d%100);
		else if(d<10000)
			sprintf(string, " %d.%d", d/100, d%100);
		else if(d<100000)
			sprintf(string, "%d.%d", d/100, d%100);
		else 
			sprintf(string, "***.**");
		
		
	}
}