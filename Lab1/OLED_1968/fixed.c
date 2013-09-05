#include <stdio.h>
#include "fixed.h"
// const will place these structures in ROM
const struct outTestCase{       // used to test routines
  unsigned long InNumber;       // test input number
  char OutBuffer[10];           // Output String  
};
typedef const struct outTestCase outTestCaseType;
outTestCaseType outTests3[16]={ 
{     0,  "  0.00" }, //      0/256 = 0.00  
{     4,  "  0.01" }, //      4/256 = 0.01  
{    10,  "  0.03" }, //     10/256 = 0.03
{   200,  "  0.78" }, //    200/256 = 0.78
{   254,  "  0.99" }, //    254/256 = 0.99
{   505,  "  1.97" }, //    505/256 = 1.97
{  1070,  "  4.17" }, //   1070/256 = 4.17
{  5120,  " 20.00" }, //   5120/256 = 20.00
{ 12184,  " 47.59" }, //  12184/256 = 47.59
{ 26000,  "101.56" }, //  26000/256 = 101.56
{ 32767,  "127.99" }, //  32767/256 = 127.99
{ 32768,  "128.00" }, //  32768/256 = 128
{ 34567,  "135.02" }, //  34567/256 = 135.02
{123456,  "482.25" }, // 123456/256 = 482.25
{255998,  "999.99" }, // 255998/256 = 999.99
{256000,  "***.**" }  // error
};
unsigned int Errors,AnError;
char Buffer[10];
void main(void){ // possible main program that tests your functions
unsigned int i;
  Errors = 0;
  for(i=0; i<16; i++){
    Fixed_uBinOut8s(outTests3[i].InNumber,Buffer);
    if(strcmp(Buffer, outTests3[i].OutBuffer)){
      Errors++;
      AnError = i;
    }
  }
  for(;;) {} /* wait forever */
}

void Fixed_uDecOut2s(unsigned long n,  char *string)
{
	if (n >= 100000)
		sprintf(string, "***.**");
	else{
		int rem = n%100;
		int div = n/100;
		char * pre;
		if (div < 1000)
			pre = "  ";
		else if (div < 10000)
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
		sprintf(string, "***.**");
	else{
		sprintf(string, "%1.3d", n);
	}
}

void Fixed_uBinOut8s(unsigned long n,  char *string){
	unsigned long d = n/256;
	if(d < 10)
		sprintf(string, "  %1.2d", d);
	else if(d<100)
		sprintf(string, " %2.2d", d);
	else if(d<1000)
		sprintf(string, "%3.2d", d);
	else 
		sprintf(string, "***.**");
}