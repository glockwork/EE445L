#include "Globals.h"
#include "DAC.h"

//********DAC_Init*****************
// Initialize Max5353 12-bit DAC
// inputs: initial voltage output (0 to 4095)
// outputs:none

unsigned short output;

void DAC_Init(unsigned short data){
  volatile unsigned long delay;
output = 0;
  SYSCTL_RCGC1_R |= SYSCTL_RCGC1_SSI0;  // activate SSI0
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOA; // activate port A
  delay = SYSCTL_RCGC2_R;               // allow time to finish activating
  GPIO_PORTA_AFSEL_R |= 0x2C;           // enable alt funct on PA2,3,5
  GPIO_PORTA_DEN_R |= 0x2C;             // enable digital I/O on PA2,3,5
  SSI0_CR1_R &= ~SSI_CR1_SSE;           // disable SSI
  SSI0_CR1_R &= ~SSI_CR1_MS;            // master mode (default setting)
                                        // clock divider for 3 MHz SSIClk
  SSI0_CPSR_R = (SSI0_CPSR_R&~SSI_CPSR_CPSDVSR_M)+2;
  SSI0_CR0_R &= ~(SSI_CR0_SCR_M |       // SCR = 0 (3 Mbps data rate) (default setting)
                  SSI_CR0_SPO);         // SPO = 0 (default setting)
SSI0_CR0_R |= (SSI_CR0_SPH);         // SPH = 1
// SSI0_CPSR_R = ;
// SSI0_CR0_R &= 0xFFCF;
                                        // FRF = Freescale format (default setting)
  SSI0_CR0_R = (SSI0_CR0_R&~SSI_CR0_FRF_M)+SSI_CR0_FRF_MOTO;
                                        // DSS = 16-bit data
  SSI0_CR0_R = (SSI0_CR0_R&~SSI_CR0_DSS_M)+SSI_CR0_DSS_16;
  SSI0_DR_R = data;                     // load 'data' into transmit FIFO
  SSI0_CR1_R |= SSI_CR1_SSE;            // enable SSI
}

//********DAC_Out*****************
// Send data to Max5353 12-bit DAC
// inputs:  voltage output (0 to 4095)
// outputs: return parameter from SSI (not meaningful)

unsigned short DAC_Out(unsigned short code){
  while((SSI0_SR_R&SSI_SR_TNF)==0){};// wait until room in FIFO
//output = code;
code &= 0x0FFF;
code |= 0x4000;
  SSI0_DR_R = code;                  // data out
return 0;
//  while((SSI0_SR_R&SSI_SR_RNE)==0){};// wait until response
//  return SSI0_DR_R;                  // acknowledge response
}
