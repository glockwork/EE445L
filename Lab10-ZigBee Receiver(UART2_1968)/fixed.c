#include <stdio.h>
#include "fixed.h"
#include "Output.h"

char chrBuffer[10];
char sChrBuffer[10];
void Fixed_uDecOut2s(unsigned long n,  char *string){
// 	Fixed_uDecOut2(n);
// 	sprintf(string,"%s",chrBuffer);
	unsigned char idx = 0;
	unsigned char numStart = 0;
	unsigned long temp, divisor = 10000;
	if ( n > 99999){         //too  large
		chrBuffer[0] = '*';
		chrBuffer[1] = '*';
		chrBuffer[2] = '*';
		chrBuffer[3] = '.';
		chrBuffer[4] = '*';
		chrBuffer[5] = '*';
		chrBuffer[6] = 0;
 		sprintf(string,"%s",chrBuffer);
		return;
	}
	while (idx < 3){       //before decimal
		temp = n / divisor;
		if (temp == 0 && numStart == 0){
			chrBuffer[idx] = ' ';
		}
		else{
			numStart = 1;
			chrBuffer[idx] = temp + 48;
		}
		if (idx == 2 && temp == 0){
			chrBuffer[idx] = 48;
		}
		n = n % divisor;
		divisor = divisor / 10;
		idx += 1;
	}
	chrBuffer[idx] = '.';   //decimal
	idx = idx + 1;
	while (idx < 6){        //after decimal
		chrBuffer[idx] = n / divisor + 48;
		n = n % divisor;
		divisor = divisor / 10;
		idx += 1;
	}
	chrBuffer[idx] = 0;
  sprintf(string,"%s",chrBuffer);
	return;
}

void Fixed_uDecOut2(unsigned long n){ // OLED code
	unsigned char idx = 0;
	unsigned char numStart = 0;
	unsigned long temp, divisor = 10000;
	if ( n > 99999){         //too  large
		chrBuffer[0] = '*';
		chrBuffer[1] = '*';
		chrBuffer[2] = '*';
		chrBuffer[3] = '.';
		chrBuffer[4] = '*';
		chrBuffer[5] = '*';
		chrBuffer[6] = 0;
// 		printf("%s",chrBuffer);
 		printf("%c",NEWLINE);
		return;
	}
	while (idx < 3){       //before decimal
		temp = n / divisor;
		if (temp == 0 && numStart == 0){
			chrBuffer[idx] = ' ';
		}
		else{
			numStart = 1;
			chrBuffer[idx] = temp + 48;
		}
		if (idx == 2 && temp == 0){
			chrBuffer[idx] = 48;
		}
		n = n % divisor;
		divisor = divisor / 10;
		idx += 1;
	}
	chrBuffer[idx] = '.';   //decimal
	idx = idx + 1;
	while (idx < 6){        //after decimal
		chrBuffer[idx] = n / divisor + 48;
		n = n % divisor;
		divisor = divisor / 10;
		idx += 1;
	}
	chrBuffer[idx] = 0;
//	printf("%s",chrBuffer);
	printf("%c",NEWLINE);
	return;
}

void Fixed_sDecOut3s(long n, char *string){
	char idx = 0;
	long temp = n, divisor = 1000;
	if (temp > 9999 || temp < -9999){  //out of range
		chrBuffer[0] = ' ';
		chrBuffer[1] = '*';
		chrBuffer[2] = '.';
		chrBuffer[3] = '*';
		chrBuffer[4] = '*';
		chrBuffer[5] = '*';
		chrBuffer[6] = 0;
		sprintf(string, "%s",chrBuffer);
//		printf("%c",NEWLINE);
		return;
	}
	if (n < 0){           //negative sign
		chrBuffer[idx] = '-';
		temp = temp * -1;
	}
	else{                 //positive sign
		chrBuffer[idx] = ' ';
	}
	idx = idx + 1;
	while (idx < 6){      
		if (idx == 2){
			chrBuffer[idx] = '.';  
		}
		else{
			chrBuffer[idx] = temp / divisor + 48;
			temp = temp % divisor;
			divisor = divisor / 10;
		}
		idx = idx + 1;
	}
	chrBuffer[idx] = 0;
	sprintf(string, "%s",chrBuffer);
//	printf("%c",NEWLINE);
	return;
}

void Fixed_sDecOut3(long n){  // OLED code
	char idx = 0;
	long temp = n, divisor = 1000;
	if (temp > 9999 || temp < -9999){  //out of range
		chrBuffer[0] = ' ';
		chrBuffer[1] = '*';
		chrBuffer[2] = '.';
		chrBuffer[3] = '*';
		chrBuffer[4] = '*';
		chrBuffer[5] = '*';
		chrBuffer[6] = 0;
//		printf("%s",chrBuffer);
		printf("%c",NEWLINE);
		return;
	}
	if (n < 0){
		chrBuffer[idx] = '-';
		temp = temp * -1;
	}
	else{
		chrBuffer[idx] = ' ';
	}
	idx = idx + 1;
	while (idx < 6){
		if (idx == 2){
			chrBuffer[idx] = '.';
		}
		else{
			chrBuffer[idx] = temp / divisor + 48;
			temp = temp % divisor;
			divisor = divisor / 10;
		}
		idx = idx + 1;
	}
	chrBuffer[idx] = 0;
//	printf("%s",chrBuffer);
	printf("%c",NEWLINE);
	return;
}

void Fixed_uBinOut8s(unsigned long n,  char *string){
	char idx = 0, numStart = 0;
	unsigned long temp, divisor = 100;
	if (n >= 256000){
		chrBuffer[0] = '*';
		chrBuffer[1] = '*';
		chrBuffer[2] = '*';
		chrBuffer[3] = '.';
		chrBuffer[4] = '*';
		chrBuffer[5] = '*';
		chrBuffer[6] = 0;
 		sprintf(string, "%s",chrBuffer);
// 		printf("%c",NEWLINE);
		return;
	}
	temp = n / 256;
	while(idx < 3){
		if (temp / divisor == 0 && numStart == 0){
			chrBuffer[idx] = ' ';
		}
		else{
			chrBuffer[idx] = temp / divisor + 48;
			numStart = 1;
		}
		if (idx == 2 && numStart == 0){
			chrBuffer[idx] = 48;
		}
		temp = temp % divisor;
		divisor = divisor / 10;
		idx = idx + 1;
	}
	chrBuffer[idx] = '.';
	idx = idx + 1;
	temp = (n % 256) * 100;
	temp = temp / 256;
	divisor = 10;
	while (idx < 6){
		chrBuffer[idx] = temp / divisor + 48;
		temp = temp % divisor;
		divisor = divisor / 10;
		idx = idx + 1;
	}
	chrBuffer[idx] = 0;
  sprintf(string,"%s",chrBuffer);
// 	printf("%c",NEWLINE);
	return;
}

void Fixed_uBinOut8(unsigned long n){  // OLED code
	char idx = 0, numStart = 0;
	unsigned long temp, divisor = 100;
	if (n >= 256000){
		chrBuffer[0] = '*';
		chrBuffer[1] = '*';
		chrBuffer[2] = '*';
		chrBuffer[3] = '.';
		chrBuffer[4] = '*';
		chrBuffer[5] = '*';
		chrBuffer[6] = 0;
// 		printf("%s",chrBuffer);
 		printf("%c",NEWLINE);
		return;
	}
	temp = n / 256;
	while(idx < 3){
		if (temp / divisor == 0 && numStart == 0){
			chrBuffer[idx] = ' ';
		}
		else{
			chrBuffer[idx] = temp / divisor + 48;
			numStart = 1;
		}
		if (idx == 2 && numStart == 0){
			chrBuffer[idx] = 48;
		}
		temp = temp % divisor;
		divisor = divisor / 10;
		idx = idx + 1;
	}
	chrBuffer[idx] = '.';
	idx = idx + 1;
	temp = (n % 256) * 100;
	temp = temp / 256;
	divisor = 10;
	while (idx < 6){
		chrBuffer[idx] = temp / divisor + 48;
		temp = temp % divisor;
		divisor = divisor / 10;
		idx = idx + 1;
	}
	chrBuffer[idx] = 0;
//  printf("%s",chrBuffer);
 	printf("%c",NEWLINE);
	return;
}
