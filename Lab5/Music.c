#include "Globals.h"
#include "Music.h"

//const unsigned short Wave[32]= { 
// 2048,2438,2813,3159,3462,3711,3896,4010,4048,4010,3896, 
// 3711,3462,3159,2813,2438,2048,1658,1283,937,634,385, 
// 200,86,48,86,200,385,634,937,1283,1658
//}; 



const unsigned short Wave[64] = {
    2048,2224,2399,2571,2737,2897,3048,3190,3321,3439,3545,3635,3711,3770,3813,3839,3848,3839,3813,3770,
3711,3635,3545,3439,3321,3190,3048,2897,2737,2571,2399,2224,2048,1872,1697,1525,1359,1199,1048,906,775,
657,551,461,385,326,283,257,248,257,283,326,385,461,551,657,775,906,1048,1199,1359,1525,1697,1872
};


const unsigned short Horn[64] = {
	2126,2164,2238,2550,3356,3496,2550,1510,1322,1322,1406,1462,1538,1690,2078,2268,2418,2664,2930,
	3090,2854,3176,2740,2172,1416,1038,896,980,1132,1368,1604,1984,2126,2164,2238,2550,3356,3496,2550,
	1510,1322,1322,1406,1462,1538,1690,2078,2268,2418,2664,2930,3090,2854,3176,2740,2172,1416,1038,
	896,980,1132,1368,1604,1984
};


const unsigned short Trumpet[64] = {
	2014,2176,2312,2388,2134,1578,606,198,1578,3020,2952,2346,2134,2074,2168,2124,2022,2030,2090,2124,
	2022,2022,2116,2226,2168,2150,2158,2210,2176,2098,2030,2090,2014,2176,2312,2388,2134,1578,606,198,
	1578,3020,2952,2346,2134,2074,2168,2124,2022,2030,2090,2124,2022,2022,2116,2226,2168,2150,2158,
	2210,2176,2098,2030,2090
};


const unsigned short Flute[64] = {
	2014,2504,2748,3096,3396,3594,3650,3594,3350,3124,2766,2438,2184,2014,1826,1780,1666,1694,1620,1554,
	1488,1348,1196,1102,1018,952,990,1066,1178,1318,1516,1752,2014,2504,2748,3096,3396,3594,3650,3594,
	3350,3124,2766,2438,2184,2014,1826,1780,1666,1694,1620,1554,1488,1348,1196,1102,1018,952,990,1066,
	1178,1318,1516,1752
};

const unsigned short Bassoon[64] = {
	2136,2338,2350,2322,2260,2226,2204,2152,2064,1970,1926,1974,2164,2686,3474,3726,3150,2062,1076,618,
	660,944,1252,1614,2076,2540,2840,2922,2750,2402,2010,1638,1316,1064,992,1188,1608,2110,2496,2646,
	2466,2098,1790,1652,1652,1700,1724,1722,1798,1922,2012,2046,2092,2184,2354,2448,2372,2266,2196,
	2204,2218,2152,2054,2006
};

const unsigned short EyesofTexas1[60] = {   
  G, D, G, D, G, A, B, G, C, G, A, B, G, D, G, D,G,A,B,G,B,A,B,A,A,D,A, AF,A, AF,A,B,G,D,C,G,A,B,E, EF,G, EF,G,E,D,G,B,C,B,A,G,0
};
const unsigned short EyesofTexas2[60] = {   
  G, D, G, D, G, A, B, G, C, G, A, B, G, D, G, D,G,A,B,G,B,A,B,A,A,D,A, AF,A, AF,A,B,G,D,C,G,A,B,E, EF,G, EF,G,E,D,G,B,C,B,A,G,0
};

const unsigned short testsong[7] = {
	A,G,A,F,A,F,A
};

const unsigned short testsong_t[7] = {
	Whole, Whole, Whole, Whole, Half, Half, Half
};


int song_len = 51;//51;

const unsigned short EyesofTexas_t1[52] = {
  DottedQ,Eighth,DottedE,Sixteenth,DottedE,Sixteenth,DottedE, Quarter ,Half,Quarter,Quarter,Whole,DottedQ,Eighth,DottedE,Sixteenth,DottedE,Sixteenth,Half,Half,Quarter,Half,Quarter,Half,Quarter,Quarter,DottedQ,Eighth,DottedE,Sixteenth,DottedE,Sixteenth,Half,Half,Half,Quarter,Quarter,Whole,DottedQ,Eighth,DottedE,Sixteenth,DottedE,Sixteenth,Half,Half,Quarter,Quarter,Quarter,Quarter,Whole,0
};   
const unsigned short EyesofTexas_t2[52] = {
  DottedQ,Eighth,DottedE,Sixteenth,DottedE,Sixteenth,DottedE, Quarter ,Half,Quarter,Quarter,Whole,DottedQ,Eighth,DottedE,Sixteenth,DottedE,Sixteenth,Half,Half,Quarter,Half,Quarter,Half,Quarter,Quarter,DottedQ,Eighth,DottedE,Sixteenth,DottedE,Sixteenth,Half,Half,Half,Quarter,Quarter,Whole,DottedQ,Eighth,DottedE,Sixteenth,DottedE,Sixteenth,Half,Half,Quarter,Quarter,Quarter,Quarter,Whole,0
};   

int wave_freq = 1000;
int wave_loc_1 = 0;
int wave_loc_2 = 0;
int wave_inc = 1;
int note_len = 7000000; //cycles per 16th note
int note_index1 = 0;
int note_index2 = 0;

int note_inc = 1;
int note_len_divider = 1;

long note_mag_mult1_per = 100; //for the smooth envelope, percent of top magnitude to output
long note_mag_mult2_per = 100; //for the smooth envelope, percent of top magnitude to output
//for the first .1s, increase from 0 to 100 %
//after first .1s to 1s, decrease from 100 to 0
	//100 - t^2*100

/*
void PlaySong(){
	
	
	//Interrupts will constantly update note_index 
	while(note_index < 60 && playing){
		wave_freq = EyesofTexas[note_index];
		note_length = EyesofTexas_t[note_index] / note_len_divider;
	}

}*/

