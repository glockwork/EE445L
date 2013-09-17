// FIFO.c
// Runs on any LM3Sxxx
// Provide functions that initialize a FIFO, put data in, get data out,
// and return the current size.  The file includes a transmit FIFO
// using index implementation and a receive FIFO using pointer
// implementation.  Other index or pointer implementation FIFOs can be
// created using the macros supplied at the end of the file.
// Daniel Valvano
// June 16, 2011

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to the Arm Cortex M3",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2011
   Programs 3.7, 3.8., 3.9 and 3.10 in Section 3.7

 Copyright 2011 by Jonathan W. Valvano, valvano@mail.utexas.edu
    You may use, edit, run or distribute this file
    as long as the above copyright notice remains
 THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 VALVANO SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 For more information about my classes, my research, and my books, see
 http://users.ece.utexas.edu/~valvano/
 */

#include "FIFO.h"
#define GPIO_PORTF_DIR_R        (*((volatile unsigned long *)0x40025400))
#define GPIO_PORTF_DEN_R        (*((volatile unsigned long *)0x4002551C))
#define GPIO_PORTF0             (*((volatile unsigned long *)0x40025004))
#define GPIO_PORTF1             (*((volatile unsigned long *)0x40025008))
#define GPIO_PORTF3             (*((volatile unsigned long *)0x40025020))

// Two-index implementation of the transmit FIFO
// can hold 0 to TXFIFOSIZE elements
unsigned long volatile TxPutI;// put next
unsigned long volatile TxGetI;// get next
txDataType static TxFifo[TXFIFOSIZE];

// initialize index FIFO
void TxFifo_Init(void){ long sr;
  sr = StartCritical(); // make atomic
  TxPutI = TxGetI = 0;  // Empty
  EndCritical(sr);
}
// add element to end of index FIFO
// return TXFIFOSUCCESS if successful
//int TxFifo_Put(txDataType data){
//  if((TxPutI-TxGetI) & ~(TXFIFOSIZE-1)){
//    return(TXFIFOFAIL); // Failed, fifo full
//  }
//  TxFifo[TxPutI&(TXFIFOSIZE-1)] = data; // put
//  TxPutI++;  // Success, update
//  return(TXFIFOSUCCESS);
//}

//part H
int TxFifo_Put(txDataType data){ 
  GPIO_PORTF3 = 0x08; 
  if((TxPutI-TxGetI) & ~(TXFIFOSIZE-1)){ 
		GPIO_PORTF3 = 0x00; 
    return(TXFIFOFAIL); // fifo full 
  } 
  TxFifo[TxPutI&(TXFIFOSIZE-1)] = data;  
  TxPutI++;  // Success, update 
  GPIO_PORTF3 = 0x00; 
  return(TXFIFOSUCCESS); 
} 


// remove element from front of index FIFO
// return TXFIFOSUCCESS if successful
//int TxFifo_Get(txDataType *datapt){
//  if(TxPutI == TxGetI ){
//    return(TXFIFOFAIL); // Empty if TxPutI=TxGetI
//  }
//  *datapt = TxFifo[TxGetI&(TXFIFOSIZE-1)];
//  TxGetI++;  // Success, update
//  return(TXFIFOSUCCESS);
//}

//part H
int TxFifo_Get(txDataType *datapt){ 
	GPIO_PORTF1 = 0x00;
  GPIO_PORTF0 = 0x01; 
  if(TxPutI == TxGetI ){ 
    GPIO_PORTF0 = 0x00; 
    GPIO_PORTF1 = 0x02; 

    return(TXFIFOFAIL); // Empty 
  } 
  *datapt = TxFifo[TxGetI&(TXFIFOSIZE-1)]; 
  TxGetI++;  // Success, update 
  GPIO_PORTF0 = 0x00; 
    GPIO_PORTF1 = 0x02; 

  return(TXFIFOSUCCESS); 
} 

// number of elements in index FIFO
// 0 to TXFIFOSIZE-1
unsigned short TxFifo_Size(void){
 return ((unsigned short)(TxPutI-TxGetI));
}

// Two-pointer implementation of the receive FIFO
// can hold 0 to RXFIFOSIZE-1 elements

rxDataType volatile *RxPutPt; // put next
rxDataType volatile *RxGetPt; // get next
rxDataType static RxFifo[RXFIFOSIZE];

// initialize pointer FIFO
void RxFifo_Init(void){ long sr;
  sr = StartCritical();      // make atomic
  RxPutPt = RxGetPt = &RxFifo[0]; // Empty
  EndCritical(sr);
}
// add element to end of pointer FIFO
// return RXFIFOSUCCESS if successful
int RxFifo_Put(rxDataType data){
  rxDataType volatile *nextPutPt;
  nextPutPt = RxPutPt+1;
  if(nextPutPt == &RxFifo[RXFIFOSIZE]){
    nextPutPt = &RxFifo[0];  // wrap
  }
  if(nextPutPt == RxGetPt){
    return(RXFIFOFAIL);      // Failed, fifo full
  }
  else{
    *(RxPutPt) = data;       // Put
    RxPutPt = nextPutPt;     // Success, update
    return(RXFIFOSUCCESS);
  }
}
// remove element from front of pointer FIFO
// return RXFIFOSUCCESS if successful
//Version 1
int RxFifo_Get(rxDataType *datapt){
  if(RxPutPt == RxGetPt ){
    return(RXFIFOFAIL);      // Empty if PutPt=GetPt
  }
  *datapt = *(RxGetPt++);
  if(RxGetPt == &RxFifo[RXFIFOSIZE]){
     RxGetPt = &RxFifo[0];   // wrap
  }
  return(RXFIFOSUCCESS);
}

//// Version 2) with debugging print  
//int RxFifo_Get(rxDataType *datapt){ 
//  if(RxPutPt == RxGetPt ){ 
//    return(RXFIFOFAIL);  // Empty  
//  } 
//  *datapt = *(RxGetPt++); 
//  if(RxGetPt == &RxFifo[RXFIFOSIZE]){ 
//     RxGetPt = &RxFifo[0];   // wrap 
//  } 
//  printf("RxGetPt = %x , data= %d\n", RxGetPt, *datapt); 
//  return(RXFIFOSUCCESS); 
//}  

// number of elements in pointer FIFO
// 0 to RXFIFOSIZE-1

// Version 3) with debugging dump 
//unsigned long ptBuf[10]; 
//rxDataType dataBuf[10]; 
//unsigned long Debug_n=0; 
//int RxFifo_Get(rxDataType *datapt){ 
//  if(RxPutPt == RxGetPt ){ 
//    return(RXFIFOFAIL);  // Empty  
//  } 
//  *datapt = *(RxGetPt++); 
//  if(RxGetPt == &RxFifo[RXFIFOSIZE]){ 
//     RxGetPt = &RxFifo[0];   // wrap 
//  } 
//  if(Debug_n<10){ 
//    ptBuf[Debug_n] = (unsigned long) RxGetPt; 
//    dataBuf[Debug_n] = *datapt; 
//    Debug_n++; 
//  } 
//  return(RXFIFOSUCCESS); 
//}   
unsigned short RxFifo_Size(void){
  if(RxPutPt < RxGetPt){
    return ((unsigned short)(RxPutPt-RxGetPt+(RXFIFOSIZE*sizeof(rxDataType)))/sizeof(rxDataType));
  }
  return ((unsigned short)(RxPutPt-RxGetPt)/sizeof(rxDataType));
}
