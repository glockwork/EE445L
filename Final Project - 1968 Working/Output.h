
#define BACKSPACE               0x8  // back up one character
#define TAB                     0x9  // move cursor right
#define LF                      0xA  // move cursor all the way left on current line
#define HOME                    0xA  // move cursor all the way left on current line
#define NEWLINE                 0xD  // move cursor all the way left on next line
#define RETURN                  0xD  // move cursor all the way left on next line
#define CR                      0xD  // move cursor all the way left on next line

//------------Output_Init------------
// Initializes the OLED interface.
// Input: none
// Output: none
void Output_Init(void);

//------------Output_Clear------------
// Clears the OLED display.
// Input: none
// Output: none
void Output_Clear(void);

//------------Output_Off------------
// Turns off the OLED display
// Input: none
// Output: none
void Output_Off(void);

//------------Output_On------------
// Turns on the OLED display
//  called after Output_Off to turn it back on
// Input: none
// Output: none
void Output_On(void);

//------------Output_Color------------
// Set the color of future characters.
// Input: 0 is off, non-zero is on
// Output: none
void Output_Color(unsigned char newColor);
