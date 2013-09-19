#ifndef GLOBALS_H
#define GLOBALS_H

#define hours hours24%12
int hours24 = 0;
int minutes = 0;
int seconds = 0;

#define a_hours = a_hours24%12

int a_hours24 = 0;
int a_minutes = 0;
int a_seconds = 0;

#define hours_temp hours24_temp%12
int hours24_temp = 0;
int minutes_temp = 0;
int seconds_temp = 0;

#define a_hours_temp = a_hours24_temp%12

int a_hours24_temp = 0;
int a_minutes_temp = 0;
int a_seconds_temp = 0;

//inactivity timer
int inacTimer = 0;

//flags for current mode

//displayMode = 0 for display time
//displayMode = 1 for set time

//timeMode = 0 for analog
//timeMode = 1 for digital

//setMode = 0 for time
//setMode = 1 for alarm

int displayMode = 0;
int timeMode = 0;
int setMode = 0;

#endif
