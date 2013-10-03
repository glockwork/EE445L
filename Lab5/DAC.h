//********DAC_Init*****************
// Initialize Max5353 12-bit DAC
// inputs: initial voltage output (0 to 4095)
// outputs:none
void DAC_Init(unsigned short data);

//********DAC_Out*****************
// Send data to Max5353 12-bit DAC
// inputs:  voltage output (0 to 4095)
// outputs: return parameter from SSI (not meaningful)
unsigned short DAC_Out(unsigned short code);