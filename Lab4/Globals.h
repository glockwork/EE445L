#ifndef __GLOBALS_H__
#define __GLOBALS_H__

struct State {
  unsigned long Out;            // 6-bit output
  unsigned long Time;           // 10 ms
  const struct State *Next[8];
};// depends on 2-bit input

	typedef const struct State STyp;
//#define goN   &FSM[0]
//#define waitN &FSM[1]
//#define goE   &FSM[2]
//#define waitE &FSM[3]

#define slowDelay 100
#define fastDelay 100

#define held1 &MainFSM[0]
#define held2 &MainFSM[1]
#define pressed3 &MainFSM[2]

#define startOscillate &MainFSM[3]
#define oscillate2 &MainFSM[4]
#define oscillate3 &MainFSM[5]
#define oscillate4 &MainFSM[6]
#define oscillate5 &MainFSM[7]
#define oscillate6 &MainFSM[8]
#define oscillate7 &MainFSM[9]
#define oscillate8 &MainFSM[10]
#define oscillate9 &MainFSM[11]
#define oscillate10 &MainFSM[12]
#define oscillate11 &MainFSM[13]
#define oscillate12 &MainFSM[14]
#define oscillate13 &MainFSM[15]
#define oscillate14 &MainFSM[16]
#define oscillate15 &MainFSM[17]
#define oscillate16 &MainFSM[18]
#define init &MainFSM[19]
#define down3 &MainFSM[20]

#define CW 1
#define CCW 2
#define STILL 0

// input choices: CBA
//				 init held1  held2  startO(or next osci)  press3   same    same   same
// inputs: 000, 001,   010,   011,    							100,     101,    110,   111 

extern STyp MainFSM[];

#define motorDelay 100
#define motor5 &MotorFSM[0]
#define motor6 &MotorFSM[1]
#define motor10 &MotorFSM[2]
#define motor9 &MotorFSM[3]

extern STyp MotorFSM[];

extern STyp *MotorPt;

extern int mainState;
extern int motorState;

void FSMMotor(unsigned long);

extern STyp *Pt;


#endif
