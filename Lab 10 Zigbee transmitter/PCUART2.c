// UART2.c
// Runs on LM3S1968
// Use UART0 to implement bidirectional data transfer to and from a
// computer running HyperTerminal.  This time, interrupts and FIFOs
// are used.
// Daniel Valvano
// October 9, 2011
// Modified by EE345L students Charlie Gough && Matt Hawk
// Modified by EE345M students Agustinus Darmawan && Mingjie Qiu

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to the Arm Cortex M3",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2011

   Program 5.11 Section 5.6, Program 3.10

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

// U0Rx1 (VCP receive) connected to PA0
// U0Tx1 (VCP transmit) connected to PA1

#include "FIFO.h"
#include "PCUART2.h"

#define NVIC_EN0_INT5           0x00000020  // Interrupt 5 enable
#define NVIC_EN0_R              (*((volatile unsigned long *)0xE000E100))  // IRQ 0 to 31 Set Enable Register
#define NVIC_PRI1_R             (*((volatile unsigned long *)0xE000E404))  // IRQ 4 to 7 Priority Register
#define GPIO_PORTA_AFSEL_R      (*((volatile unsigned long *)0x40004420))
#define GPIO_PORTA_DEN_R        (*((volatile unsigned long *)0x4000451C))
#define UART0_DR_R              (*((volatile unsigned long *)0x4000C000))
#define UART0_FR_R              (*((volatile unsigned long *)0x4000C018))
#define UART0_IBRD_R            (*((volatile unsigned long *)0x4000C024))
#define UART0_FBRD_R            (*((volatile unsigned long *)0x4000C028))
#define UART0_LCRH_R            (*((volatile unsigned long *)0x4000C02C))
#define UART0_CTL_R             (*((volatile unsigned long *)0x4000C030))
#define UART0_IFLS_R            (*((volatile unsigned long *)0x4000C034))
#define UART0_IM_R              (*((volatile unsigned long *)0x4000C038))
#define UART0_RIS_R             (*((volatile unsigned long *)0x4000C03C))
#define UART0_ICR_R             (*((volatile unsigned long *)0x4000C044))
#define UART_FR_Rx1FF            0x00000040  // UART Receive FIFO Full
#define UART_FR_Tx1FF            0x00000020  // UART Transmit FIFO Full
#define UART_FR_Rx1FE            0x00000010  // UART Receive FIFO Empty
#define UART_LCRH_WLEN_8        0x00000060  // 8 bit word length
#define UART_LCRH_FEN           0x00000010  // UART Enable FIFOs
#define UART_CTL_UARTEN         0x00000001  // UART Enable
#define UART_IFLS_Rx11_8         0x00000000  // Rx1 FIFO >= 1/8 full
#define UART_IFLS_Tx11_8         0x00000000  // Tx1 FIFO <= 1/8 full
#define UART_IM_RTIM            0x00000040  // UART Receive Time-Out Interrupt
                                            // Mask
#define UART_IM_Tx1IM            0x00000020  // UART Transmit Interrupt Mask
#define UART_IM_Rx1IM            0x00000010  // UART Receive Interrupt Mask
#define UART_RIS_RTRIS          0x00000040  // UART Receive Time-Out Raw
                                            // Interrupt Status
#define UART_RIS_Tx1RIS          0x00000020  // UART Transmit Raw Interrupt
                                            // Status
#define UART_RIS_Rx1RIS          0x00000010  // UART Receive Raw Interrupt
                                            // Status
#define UART_ICR_RTIC           0x00000040  // Receive Time-Out Interrupt Clear
#define UART_ICR_Tx1IC           0x00000020  // Transmit Interrupt Clear
#define UART_ICR_Rx1IC           0x00000010  // Receive Interrupt Clear
#define SYSCTL_RCGC1_R          (*((volatile unsigned long *)0x400FE104))
#define SYSCTL_RCGC2_R          (*((volatile unsigned long *)0x400FE108))
#define SYSCTL_RCGC1_UART0      0x00000001  // UART0 Clock Gating Control
#define SYSCTL_RCGC2_GPIOA      0x00000001  // port A Clock Gating Control

void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode
#define FIFOSIZE   16         // size of the FIFOs (must be power of 2)
#define FIFOSUCCESS 1         // return value on success
#define FIFOFAIL    0         // return value on failure
                              // create index implementation FIFO (see FIFO.h)
AddIndexFifo(Rx1, FIFOSIZE, char, FIFOSUCCESS, FIFOFAIL)
AddIndexFifo(Tx1, FIFOSIZE, char, FIFOSUCCESS, FIFOFAIL)

// Initialize UART0
// Baud rate is 115200 bits/sec
void PCUART_Init(void){
  SYSCTL_RCGC1_R |= SYSCTL_RCGC1_UART0; // activate UART0
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOA; // activate port A
  Rx1Fifo_Init();                        // initialize empty FIFOs
  Tx1Fifo_Init();
  UART0_CTL_R &= ~UART_CTL_UARTEN;      // disable UART
  UART0_IBRD_R = 325;                    // IBRD = int(50,000,000 / (16 * 115,200)) = int(27.1267)
  UART0_FBRD_R = 34;                     // FBRD = int(0.1267 * 64 + 0.5) = 8
                                        // 8 bit word length (no parity bits, one stop bit, FIFOs)
  UART0_LCRH_R = (UART_LCRH_WLEN_8|UART_LCRH_FEN);
  UART0_IFLS_R &= ~0x3F;                // clear Tx1 and Rx1 interrupt FIFO level fields
                                        // configure interrupt for Tx1 FIFO <= 1/8 full
                                        // configure interrupt for Rx1 FIFO >= 1/8 full
  UART0_IFLS_R += (UART_IFLS_Tx11_8|UART_IFLS_Rx11_8);
                                        // enable Tx1 and Rx1 FIFO interrupts and Rx1 time-out interrupt
  UART0_IM_R |= (UART_IM_Rx1IM|UART_IM_Tx1IM|UART_IM_RTIM);
  UART0_CTL_R |= UART_CTL_UARTEN;       // enable UART
  GPIO_PORTA_AFSEL_R |= 0x03;           // enable alt funct on PA1-0
  GPIO_PORTA_DEN_R |= 0x03;             // enable digital I/O on PA1-0
                                        // UART0=priority 2
  NVIC_PRI1_R = (NVIC_PRI1_R&0xFFFF00FF)|0x00004000; // bits 13-15
  NVIC_EN0_R |= NVIC_EN0_INT5;          // enable interrupt 5 in NVIC
  EnableInterrupts();
}
// copy from hardware Rx1 FIFO to software Rx1 FIFO
// stop when hardware Rx1 FIFO is empty or software Rx1 FIFO is full
void static PCcopyHardwareToSoftware(void){
  char letter;
  while(((UART0_FR_R&UART_FR_Rx1FE) == 0) && (Rx1Fifo_Size() < (FIFOSIZE - 1))){
    letter = UART0_DR_R;
    Rx1Fifo_Put(letter);
  }
}
// copy from software Tx1 FIFO to hardware Tx1 FIFO
// stop when software Tx1 FIFO is empty or hardware Tx1 FIFO is full
void static PCcopySoftwareToHardware(void){
  char letter;
  while(((UART0_FR_R&UART_FR_Tx1FF) == 0) && (Tx1Fifo_Size() > 0)){
    Tx1Fifo_Get(&letter);
    UART0_DR_R = letter;
  }
}
// input ASCII character from UART
// spin if Rx1Fifo is empty
unsigned char PCUART_InChar(void){
  char letter;
  while(Rx1Fifo_Get(&letter) == FIFOFAIL){};
  return(letter);
}
// output ASCII character to UART
// spin if Tx1Fifo is full
void PCUART_OutChar(unsigned char data){
  while(Tx1Fifo_Put(data) == FIFOFAIL){};
  UART0_IM_R &= ~UART_IM_Tx1IM;          // disable Tx1 FIFO interrupt
  PCcopySoftwareToHardware();
  UART0_IM_R |= UART_IM_Tx1IM;           // enable Tx1 FIFO interrupt
}
// at least one of three things has happened:
// hardware Tx1 FIFO goes from 3 to 2 or less items
// hardware Rx1 FIFO goes from 1 to 2 or more items
// UART receiver has timed out
void UART0_Handler(void){
  if(UART0_RIS_R&UART_RIS_Tx1RIS){       // hardware Tx1 FIFO <= 2 items
    UART0_ICR_R = UART_ICR_Tx1IC;        // acknowledge Tx1 FIFO
    // copy from software Tx1 FIFO to hardware Tx1 FIFO
    PCcopySoftwareToHardware();
    if(Tx1Fifo_Size() == 0){             // software Tx1 FIFO is empty
      UART0_IM_R &= ~UART_IM_Tx1IM;      // disable Tx1 FIFO interrupt
    }
  }
  if(UART0_RIS_R&UART_RIS_Rx1RIS){       // hardware Rx1 FIFO >= 2 items
    UART0_ICR_R = UART_ICR_Rx1IC;        // acknowledge Rx1 FIFO
    // copy from hardware Rx1 FIFO to software Rx1 FIFO
    PCcopyHardwareToSoftware();
  }
  if(UART0_RIS_R&UART_RIS_RTRIS){       // receiver timed out
    UART0_ICR_R = UART_ICR_RTIC;        // acknowledge receiver time out
    // copy from hardware Rx1 FIFO to software Rx1 FIFO
    PCcopyHardwareToSoftware();
  }
}


//------------UART_OutString------------
// Output String (NULL termination)
// Input: pointer to a NULL-terminated string to be transferred
// Output: none
void PCUART_OutString(char *pt){
  while(*pt){
    PCUART_OutChar(*pt);
    pt++;
  }
}

//------------UART_InUDec------------
// InUDec accepts ASCII input in unsigned decimal format
//     and converts to a 32-bit unsigned number
//     valid range is 0 to 4294967295 (2^32-1)
// Input: none
// Output: 32-bit unsigned number
// If you enter a number above 4294967295, it will return an incorrect value
// Backspace will remove last digit typed
unsigned long PCUART_InUDec(void){
unsigned long number=0, length=0;
char character;
  character = PCUART_InChar();
  while(character != CR){ // accepts until <enter> is typed
// The next line checks that the input is a digit, 0-9.
// If the character is not 0-9, it is ignored and not echoed
    if((character>='0') && (character<='9')) {
      number = 10*number+(character-'0');   // this line overflows if above 4294967295
      length++;
      PCUART_OutChar(character);
    }
// If the input is a backspace, then the return number is
// changed and a backspace is outputted to the screen
    else if((character==BS) && length){
      number /= 10;
      length--;
      PCUART_OutChar(character);
    }
    character = PCUART_InChar();
  }
  return number;
}

//-----------------------UART_OutUDec-----------------------
// Output a 32-bit number in unsigned decimal format
// Input: 32-bit number to be transferred
// Output: none
// Variable format 1-10 digits with no space before or after
void PCUART_OutUDec(unsigned long n){
// This function uses recursion to convert decimal number
//   of unspecified length as an ASCII string
  if(n >= 10){
    PCUART_OutUDec(n/10);
    n = n%10;
  }
  PCUART_OutChar(n+'0'); /* n is between 0 and 9 */
}

//---------------------UART_InUHex----------------------------------------
// Accepts ASCII input in unsigned hexadecimal (base 16) format
// Input: none
// Output: 32-bit unsigned number
// No '$' or '0x' need be entered, just the 1 to 8 hex digits
// It will convert lower case a-f to uppercase A-F
//     and converts to a 16 bit unsigned number
//     value range is 0 to FFFFFFFF
// If you enter a number above FFFFFFFF, it will return an incorrect value
// Backspace will remove last digit typed
unsigned long PCUART_InUHex(void){
unsigned long number=0, digit, length=0;
char character;
  character = PCUART_InChar();
  while(character != CR){
    digit = 0x10; // assume bad
    if((character>='0') && (character<='9')){
      digit = character-'0';
    }
    else if((character>='A') && (character<='F')){
      digit = (character-'A')+0xA;
    }
    else if((character>='a') && (character<='f')){
      digit = (character-'a')+0xA;
    }
// If the character is not 0-9 or A-F, it is ignored and not echoed
    if(digit <= 0xF){
      number = number*0x10+digit;
      length++;
      PCUART_OutChar(character);
    }
// Backspace outputted and return value changed if a backspace is inputted
    else if((character==BS) && length){
      number /= 0x10;
      length--;
      PCUART_OutChar(character);
    }
    character = PCUART_InChar();
  }
  return number;
}

//--------------------------UART_OutUHex----------------------------
// Output a 32-bit number in unsigned hexadecimal format
// Input: 32-bit number to be transferred
// Output: none
// Variable format 1 to 8 digits with no space before or after
void PCUART_OutUHex(unsigned long number){
// This function uses recursion to convert the number of
//   unspecified length as an ASCII string
  if(number >= 0x10){
    PCUART_OutUHex(number/0x10);
    PCUART_OutUHex(number%0x10);
  }
  else{
    if(number < 0xA){
      PCUART_OutChar(number+'0');
     }
    else{
      PCUART_OutChar((number-0x0A)+'A');
    }
  }
}

//------------UART_InString------------
// Accepts ASCII characters from the serial port
//    and adds them to a string until <enter> is typed
//    or until max length of the string is reached.
// It echoes each character as it is inputted.
// If a backspace is inputted, the string is modified
//    and the backspace is echoed
// terminates the string with a null character
// uses busy-waiting synchronization on RDRF
// Input: pointer to empty buffer, size of buffer
// Output: Null terminated string
// -- Modified by Agustinus Darmawan + Mingjie Qiu --
void PCUART_InString(char *bufPt, unsigned short max) {
int length=0;
char character;
  character = PCUART_InChar();
  while(character != CR){
    if(character == BS){
      if(length){
        bufPt--;
        length--;
        PCUART_OutChar(BS);
      }
    }
    else if(length < max){
      *bufPt = character;
      bufPt++;
      length++;
      PCUART_OutChar(character);
    }
    character = PCUART_InChar();
  }
  *bufPt = 0;
}
