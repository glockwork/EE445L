/*
 * Initializes LCD Screen
 */
void LCDInit();

/*
 * Draws buffer to LCD screen
 * Input: 2d array of buffer, top left pixesl is 0,0
 */
void drawBuffer(unsigned char ** buffer);

/*
 * Draws string ot LCD screen
 * Input: String, location, top left pixesl is 0,0
 */
void drawString(char* str, int x, int y);