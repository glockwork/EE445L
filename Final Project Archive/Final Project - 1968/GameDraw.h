//game draw calls LCDDriver functions

/*
 * Initial screen, called to draw menu / song selection
 */
void drawMenuScreen();

/*
 * Called periodically to update screen, recalculates buffer and draws it
 */
void drawGame();

/*
 * When game is finished, we will draw statistics / results
 */
void drawStatistics();