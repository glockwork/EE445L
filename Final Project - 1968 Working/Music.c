#include "Globals.h"
#include "Music.h"

//const unsigned short Wave[32]= { 
// 2048,2438,2813,3159,3462,3711,3896,4010,4048,4010,3896, 
// 3711,3462,3159,2813,2438,2048,1658,1283,937,634,385, 
// 200,86,48,86,200,385,634,937,1283,1658
//}; 

const unsigned short Flute[64] = {
	2014,2514,2764,3121,3429,3631,3688,3631,3380,3149,2784,2447,2187,2014,1821,1773,1658,
	1686,1609,1542,1475,1330,1176,1080,993,926,965,1042,1157,1301,1504,1744,2014,2514,2764,
	3121,3429,3631,3688,3631,3380,3149,2784,2447,2187,2014,1821,1773,1658,1686,1609,1542,
	1475,1330,1176,1080,993,926,965,1042,1157,1301,1504,1744
};

const unsigned short Guitar[64] = {
	1500,1500,1505,1444,1276,1021,764,557,488,605,894,1349,1869,2281,2592,2781,2835,2697,2430,
	2028,1540,1100,828,836,1133,1658,2335,2973,3414,3554,3370,3003,2574,2153,1874,1681,1569,1524,
	1507,1530,1637,1782,1899,2058,2099,2065,1894,1643,1375,1104,942,887,966,1051,1087,1088,1067,
	1062,1128,1244,1382,1500,1500,1500
};

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
	2881,3083,3213,3281,3358,3442,3372,3220,3149,3060,3036,3016,2949,3137,3411,3475,3206,2646,
	1880,880,163,1486,2967,3719,3768,3392,3128,2869,2707,2792,3008,3173,3186,3164,3131,3059,
	2956,2837,2819,2838,2901,3050,3229,3342,3327,3220,3105,3104,3188,3112,3072,3112,3121,3070,
	3033,3084,3228,3285,3220,3128,3094,3133,3091,2895
};


const unsigned short Bassoon[64] = {
	2136,2338,2350,2322,2260,2226,2204,2152,2064,1970,1926,1974,2164,2686,3474,3726,3150,2062,1076,618,
	660,944,1252,1614,2076,2540,2840,2922,2750,2402,2010,1638,1316,1064,992,1188,1608,2110,2496,2646,
	2466,2098,1790,1652,1652,1700,1724,1722,1798,1922,2012,2046,2092,2184,2354,2448,2372,2266,2196,
	2204,2218,2152,2054,2006
};


const unsigned char score[20000] = {
0,112, 0x90,55, 0x91,36, 0x92,60, 0,125, 0x82, 0x80, 0x90,55, 0x92,60, 0,112, 0x82, 0x80, 0x90,55, 
0x92,60, 0,125, 0x82, 0x80, 0x90,53, 0x92,58, 0,112, 0x82, 0x80, 0x90,63, 0x92,59, 0,125, 0x82, 
0x80, 0x90,53, 0x92,58, 0,112, 0x82, 0x80, 0x90,55, 0x92,60, 1,106, 0x81, 0,112, 0x91,36, 0,125, 
0x81, 0x91,48, 0,112, 0x82, 0x80, 0x81, 0x90,55, 0x91,60, 0x92,63, 0,125, 0x82, 0x81, 0x80, 0x90,55, 
0x91,60, 0x92,63, 0,112, 0x82, 0x81, 0x80, 0x90,43, 0x91,53, 0x92,58, 0,125, 0x80, 0x82, 0x81, 0x90,63, 
0x91,60, 0x92,55, 0,112, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 0,125, 0x82, 0x81, 0x80, 0x90,53, 
0x91,58, 0x92,62, 0,125, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 0,112, 0x82, 0x81, 0x80, 0x90,53, 
0x91,58, 0x92,62, 0,125, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 0,112, 0x82, 0x81, 0x80, 0x90,53, 
0x91,58, 0x92,62, 0,125, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 1,94, 0,125, 0,112, 
0,125, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 0,112, 0x82, 0x81, 0x80, 0x90,43, 0x91,55, 0x92,60, 
0,125, 0x80, 0x82, 0x81, 0x90,39, 0x91,53, 0x92,58, 0,112, 0x80, 0x82, 0x81, 0x90,33, 0x91,55, 0x92,60, 
0,125, 0x80, 0x82, 0x81, 0x90,29, 0x91,55, 0x92,60, 0,112, 0x80, 0x82, 0x81, 0x90,53, 0x91,58, 0x92,62, 
0,125, 0x82, 0x81, 0x80, 0x90,60, 0x91,55, 0x92,63, 0,125, 0x82, 0x81, 0x80, 0x90,41, 0x91,55, 0x92,60, 
0,112, 0x80, 0x82, 0x81, 0x90,53, 0x91,58, 0x92,62, 0,125, 0x82, 0x81, 0x80, 0x90,53, 0x91,58, 0x92,62, 
0,112, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 0,125, 0x82, 0x81, 0x80, 0x90,56, 0x91,62, 0x92,65, 
0,112, 0x82, 0x81, 0x80, 0x90,53, 0x91,58, 0x92,62, 0,125, 0x82, 0x81, 0x80, 0x90,56, 0x91,62, 0x92,65, 
0,112, 0x82, 0x81, 0x80, 0x90,43, 0x91,55, 0x92,60, 0,125, 0x80, 0x82, 0x81, 0x90,56, 0x91,62, 0x92,65, 
0,112, 0x82, 0x81, 0x80, 0x90,53, 0x91,58, 0x92,62, 0,125, 0x82, 0x81, 0x80, 0x90,39, 0x91,55, 0x92,60, 
0,112, 0x80, 0x82, 0x81, 0x90,41, 0x91,50, 0x92,55, 0,125, 0x80, 0x82, 0x81, 0x90,39, 0x91,53, 0x92,58, 
0,112, 0x80, 0x82, 0x81, 0x90,36, 0x91,55, 0x92,60, 0,125, 0x80, 0x82, 0x81, 0x90,50, 0x91,55, 0x92,58, 
0,112, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 0,125, 0x82, 0x81, 0x80, 0x90,48, 0x91,53, 0x92,58, 
0,125, 0x80, 0x82, 0x81, 0x90,55, 0x91,60, 0x92,63, 0,112, 0x82, 0x81, 0x80, 0x90,53, 0x91,58, 0x92,62, 
0,125, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 0,112, 0,125, 0,112, 0,125, 0,112, 
0,125, 0x82, 0x81, 0x80, 0x90,46, 0x91,55, 0x92,60, 0,112, 0x80, 0x82, 0x81, 0x90,48, 0x91,55, 0x92,60, 
0,125, 0x80, 0x82, 0x81, 0x90,43, 0x91,53, 0x92,58, 0,112, 0x80, 0x82, 0x81, 0x90,55, 0x91,60, 0x92,63, 
0,125, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 0,112, 0x82, 0x81, 0x80, 0x90,53, 0x91,58, 0x92,62, 
0,125, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 0,112, 0x82, 0x81, 0x80, 0x90,41, 0x91,53, 0x92,58, 
0,125, 0x80, 0x82, 0x81, 0x90,55, 0x91,60, 0x92,63, 0,112, 0x82, 0x81, 0x80, 0x90,53, 0x91,58, 0x92,62, 
0,125, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 0,125, 0,112, 0,125, 0,112, 0,125, 
0,112, 0x82, 0x81, 0x80, 0x90,55, 0x91,32, 0x92,60, 0,125, 0x81, 0x82, 0x80, 0x90,55, 0x91,60, 0x92,63, 
0,112, 0x82, 0x81, 0x80, 0x90,53, 0x91,58, 0x92,62, 0,125, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 
0,112, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 0,125, 0x82, 0x81, 0x80, 0x90,53, 0x91,58, 0x92,62, 
0,112, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 0,125, 0x82, 0x81, 0x80, 0x90,41, 0x91,55, 0x92,60, 
0,112, 0x80, 0x82, 0x81, 0x90,53, 0x91,58, 0x92,62, 0,125, 0x82, 0x81, 0x80, 0x90,53, 0x91,58, 0x92,62, 
0,112, 0x82, 0x81, 0x80, 0x90,55, 0x91,60, 0x92,63, 0,125, 0x82, 0x81, 0x80, 0x90,56, 0x91,62, 0x92,65, 
0,125, 0x82, 0x81, 0x80, 0x90,53, 0x91,58, 0x92,62, 0,112, 0x82, 0x81, 0x80, 0x90,56, 0x91,62, 0x92,65, 
0,37, 0,87, 0x82, 0x81, 0x80, 0x90,65, 0x91,31, 0x92,55, 0,75, 0,37, 0x81, 0x82, 0x91,56, 
0x92,62, 0,37, 0x80, 0x90,77, 0,87, 0x82, 0x81, 0x91,53, 0x92,82, 0,75, 0x80, 0x90,89, 0,37, 
0x81, 0x91,41, 0,37, 0x82, 0x92,96, 0,87, 0x81, 0x80, 0x90,38, 0x91,50, 0,100, 0,12, 0x80, 
0x81, 0x90,55, 0,25, 0x91,53, 0,12, 0x82, 0x80, 0x90,52, 0,25, 0x81, 0x91,49, 0,25, 0x80, 
0,12, 0x81, 0,25, 0x90,60, 0x91,48, 0x92,36, 0,237, 0x82, 0x92,60, 0,112, 0,125, 0,112, 
0,125, 0,112, 0,125, 0,237, 0x80, 0x90,62, 0,237, 0x82, 0x80, 0x90,62, 0x92,48, 0,125, 
0x82, 0x92,65, 0,112, 0x80, 0x90,63, 0,125, 0x81, 0x80, 0x90,65, 0,112, 0x91,48, 0x82, 0x92,56, 
0,237, 0x80, 0x90,67, 0,125, 0,112, 0,125, 0x80, 0x90,65, 0,112, 0,125, 0,112, 0x80, 
0x90,70, 0,250, 0,237, 0x80, 0x90,68, 0,112, 0,125, 0x80, 0x90,32, 0,112, 0x82, 0x81, 0x80, 
0,125, 0x90,46, 0x91,34, 0x92,62, 0,237, 0x81, 0x91,62, 0,112, 0,125, 0x82, 0x92,63, 0,112, 
0,125, 0x81, 0x91,63, 0,112, 0x82, 0x92,65, 0,125, 0,112, 0x81, 0x91,65, 0,125, 0x82, 0x92,58, 
0,237, 0x81, 0x82, 0x91,58, 0x92,46, 0,125, 0x82, 0,112, 0x81, 0x91,65, 0x92,62, 0,125, 0x80, 
0,112, 0x90,31, 0x81, 0x82, 0x91,46, 0x92,68, 0,237, 0x80, 0x90,68, 0,125, 0,112, 0x82, 0x92,70, 
0,125, 0,112, 0x80, 0x90,70, 0,125, 0x82, 0x92,67, 0,112, 0,125, 0x80, 0x90,67, 0,112, 
0x82, 0x92,67, 0,237, 0x80, 0x82, 0x90,67, 0x92,65, 0,125, 0x82, 0x92,62, 0,125, 0x80, 0x90,65, 
0,112, 0x81, 0x80, 0x90,62, 0,125, 0x91,48, 0x82, 0x92,55, 0,237, 0x80, 0x90,60, 0,112, 0,125, 
0,112, 0,125, 0,112, 0,125, 0,237, 0,237, 0x80, 0x90,62, 0,112, 0,125, 0x80, 0x90,63, 
0,125, 0x80, 0x90,65, 0,50, 0x82, 0x81, 0,62, 0x91,32, 0x92,48, 0,125, 0x81, 0,112, 0x80, 
0x90,32, 0x91,67, 0,125, 0,112, 0x80, 0x90,44, 0,125, 0x81, 0x80, 0x90,68, 0x91,32, 0,112, 
0x81, 0x91,65, 0,125, 0,112, 0x80, 0x90,65, 0,237, 0x81, 0x91,65, 0,237, 0x80, 0x81, 0x90,65, 
0x91,44, 0,125, 0x81, 0x91,68, 0,112, 0x80, 0x90,32, 0,125, 0x82, 0x80, 0x90,68, 0,125, 0x92,46, 
0x81, 0x91,53, 0,112, 0,125, 0x80, 0x90,34, 0,237, 0x80, 0x90,46, 0,112, 0x80, 0x90,34, 0,125, 
0x80, 0,112, 0x90,34, 0,125, 0x80, 0x90,34, 0,237, 0,237, 0x80, 0x90,72, 0,112, 0,125, 
0x80, 0x90,34, 0,112, 0x81, 0x82, 0x80, 0x90,75, 0,125, 0x91,46, 0x92,31, 0,237, 0x82, 0x80, 0x90,79, 
0,237, 0x92,31, 0,237, 0x80, 0x90,77, 0,237, 0,125, 0x82, 0x92,38, 0,112, 0x80, 0x82, 0x90,74, 
0x92,41, 0,125, 0x82, 0x92,43, 0,112, 0x82, 0x92,70, 0,125, 0,112, 0x80, 0x90,70, 0,125, 
0x81, 0x91,34, 0,112, 0x82, 0x92,51, 0x81, 0x91,72, 0,237, 0x80, 0x90,72, 0,125, 0,125, 0x80, 
0x90,91, 0,112, 0x80, 0x90,96, 0,125, 0x80, 0x90,91, 0,112, 0x80, 0x90,84, 0,125, 0x80, 0x90,96, 
0,112, 0x80, 0x90,84, 0,125, 0x81, 0x80, 0x90,74, 0x91,84, 0,112, 0x81, 0,125, 0x80, 0x90,74, 
0x91,75, 0,112, 0,125, 0x81, 0x80, 0x90,77, 0x91,75, 0,112, 0x82, 0,125, 0x92,34, 0x80, 0x81, 
0x90,50, 0x91,72, 0,237, 0x82, 0x92,72, 0,112, 0,125, 0x82, 0x92,91, 0,125, 0x82, 0x92,96, 
0,112, 0x82, 0x92,91, 0,125, 0x82, 0x92,84, 0,112, 0x82, 0x92,96, 0,125, 0x82, 0x92,84, 0,112, 
0x81, 0x82, 0x91,74, 0x92,84, 0,125, 0x82, 0,112, 0x81, 0x91,74, 0x92,75, 0,125, 0x82, 0x92,77, 
0,112, 0x81, 0x91,75, 0,125, 0x81, 0x80, 0x90,77, 0,112, 0x91,51, 0x82, 0x92,60, 0,237, 0x80, 
0x90,79, 0,125, 0,112, 0x80, 0x90,91, 0,125, 0x80, 0x90,96, 0,125, 0x80, 0x90,91, 0,112, 
0x80, 0x90,84, 0,125, 0x80, 0x90,96, 0,112, 0x80, 0x90,84, 0,125, 0x80, 0x90,84, 0,112, 0x80, 
1,219, 0x82, 0x81, 0,125, 0x90,36, 0x91,60, 0x92,65, 0,237, 0x80, 0,112, 0x90,48, 0,125, 
0x80, 0,112, 0x90,46, 0,125, 0x80, 0x82, 0x90,63, 0x92,84, 0,112, 0x82, 0x92,91, 0,125, 0x82, 
0x92,48, 0,125, 0x82, 0x92,79, 0,112, 0x82, 0x92,84, 0,125, 0x82, 0x92,79, 0,112, 0x80, 0x82, 
0x90,41, 0x92,62, 0,125, 0x80, 0x90,39, 0,112, 0x80, 0x90,36, 0,125, 0x81, 0x80, 0x90,72, 0x91,34, 
0,112, 0x80, 0x82, 0x81, 0x90,70, 0x91,48, 0x92,32, 0,125, 0x80, 0x90,80, 0,112, 0x82, 0x92,79, 
0,125, 0x82, 0x92,80, 0,112, 0x82, 0,125, 0x92,96, 0,112, 0x82, 0x92,91, 0,125, 0x82, 0x92,84, 
0,112, 0x82, 0x92,96, 0,125, 0x82, 0x92,84, 0,125, 0x80, 0x82, 0x90,79, 0x92,84, 0,112, 0x82, 
0,125, 0x92,44, 0x80, 0x90,79, 0,112, 0x82, 0x92,32, 0,125, 0x80, 0x82, 0x90,77, 0,112, 0x81, 
0x80, 0x90,79, 0,125, 0x91,50, 0x92,34, 0,237, 0x82, 0x80, 0x90,77, 0,112, 0x92,46, 0,125, 
0x80, 0x90,91, 0x82, 0x92,75, 0,112, 0x80, 0x90,96, 0,125, 0x80, 0x90,91, 0,112, 0x80, 0x90,84, 
0,125, 0x82, 0x80, 0x90,74, 0x92,96, 0,112, 0x82, 0x92,84, 0,125, 0x82, 0x92,84, 0,125, 0x82, 
0,112, 0x80, 0x90,70, 0,125, 0x92,46, 0,112, 0x82, 0x92,70, 0,125, 0x81, 0,112, 0x91,36, 
0x80, 0x90,51, 0,125, 0x81, 0,112, 0x82, 0x91,36, 0x92,72, 0,125, 0x81, 0x91,48, 0,112, 0x82, 
0x92,91, 0x81, 0x91,67, 0,125, 0x82, 0x92,36, 0,112, 0x82, 0x92,91, 0,125, 0x82, 0x92,84, 0,112, 
0x82, 0x92,96, 0,125, 0x82, 0x92,84, 0,112, 0x82, 0x92,84, 0,125, 0x82, 0,125, 0x92,48, 0,112, 
0x82, 0,125, 0x92,36, 0,112, 0x80, 0x82, 0x90,43, 0,125, 0x92,48, 0x80, 0x90,55, 0,112, 0,125, 
0,112, 0,125, 0,112, 0,125, 0,112, 0,125, 0,112, 0x80, 0x82, 0x90,43, 0x92,79, 0,62, 
0,62, 0x82, 0x80, 0x90,72, 0x92,34, 0,112, 0x81, 0x80, 0x82, 0x90,67, 0x91,67, 0x92,39, 0,125, 
0x80, 0x81, 0x82, 0x90,70, 0x91,72, 0x92,46, 0,112, 0x80, 0x90,67, 0x81, 0x82, 0x91,72, 0x92,43, 0,125, 
0x81, 0x80, 0x82, 0x90,70, 0x91,70, 0x92,41, 0,125, 0x80, 0x81, 0x82, 0x90,67, 0x91,72, 0x92,39, 0,50, 
0,62, 0x82, 0x80, 0x81, 0x90,48, 0x91,36, 0x92,70, 0,125, 0x82, 0x92,72, 0,112, 0x81, 0x91,70, 
0,125, 0x81, 0x91,72, 0,112, 0,125, 0,112, 0,125, 0,112, 0,125, 0,112, 0x82, 0x92,74, 
0,125, 0,112, 0x82, 0x81, 0x91,36, 0x92,75, 0,125, 0x81, 0x82, 0x91,48, 0x92,77, 0,112, 0x81, 
0x91,75, 0,62, 0x80, 0,62, 0x82, 0x81, 0x90,29, 0x91,79, 0x92,77, 0,62, 0,175, 0x82, 0x92,79, 
0,125, 0x80, 0x90,29, 0,112, 0x81, 0x80, 0x90,80, 0x91,41, 0,125, 0x81, 0,112, 0x82, 0x91,80, 
0,125, 0x92,29, 0x80, 0x90,77, 0,237, 0x81, 0x82, 0x91,77, 0,237, 0x92,29, 0x80, 0x90,74, 0,237, 
0x81, 0x82, 0x80, 0x90,74, 0x91,41, 0x92,72, 0,112, 0x81, 0x82, 0x91,29, 0x92,74, 0,125, 0x80, 0x81, 
0x90,72, 0,112, 0x91,29, 0x80, 0x90,74, 0,125, 0x81, 0x82, 0x91,53, 0x92,34, 0,237, 0x82, 0x80, 
0x90,74, 0,125, 0x92,46, 0,112, 0x82, 0x92,75, 0,125, 0,112, 0x80, 0x90,75, 0,125, 0,112, 
0x82, 0x92,77, 0,125, 0,112, 0x82, 0x80, 0x90,70, 0x92,77, 0,125, 0,112, 0x82, 0x92,34, 0,125, 
0x82, 0x80, 0x90,46, 0x92,77, 0,112, 0x81, 0x80, 0x90,41, 0,62, 0x91,46, 0,62, 0x80, 0x82, 0x90,27, 
0x92,80, 0,237, 0,112, 0x80, 0x90,27, 0,125, 0x80, 0x90,39, 0,125, 0x80, 0,237, 0x82, 0x90,27, 
0x92,79, 0,112, 0x82, 0x92,77, 0,125, 0x80, 0x82, 0x90,79, 0x92,79, 0,112, 0x80, 0x90,77, 0,125, 
0x80, 0x90,79, 0,237, 0x82, 0x92,39, 0,112, 0x82, 0x92,27, 0,125, 0x80, 0x82, 0x90,75, 0x92,77, 
0,62, 0x81, 0,50, 0x91,27, 0,125, 0x80, 0x82, 0x90,44, 0x81, 0x91,72, 0x92,75, 0,237, 0x82, 
0x92,72, 0,112, 0,125, 0,237, 0,125, 0,237, 0,112, 0x81, 0x91,74, 0,237, 0x82, 0x92,44, 
0x81, 0x91,74, 0,125, 0x82, 0,112, 0x81, 0x91,32, 0x92,77, 0,125, 0x80, 0x81, 0,112, 0x82, 0x90,46, 
0x91,34, 0x92,77, 0,237, 0x81, 0x91,77, 0,125, 0,112, 0,250, 0,112, 0,237, 0,125, 
0x82, 0x92,79, 0,237, 0x81, 0x91,46, 0x82, 0x92,79, 0,112, 0x81, 0x91,74, 0,125, 0x82, 0x92,34, 
0,112, 0x80, 0x82, 0x81, 0x90,74, 0,125, 0x91,48, 0x92,74, 0,112, 0x80, 0,125, 0x90,36, 0x82, 
0x92,74, 0,112, 0x80, 0x90,72, 0,125, 0x82, 0x92,48, 0,112, 0x82, 0x92,36, 0,125, 0x82, 0,125, 
0x92,36, 0,112, 0x82, 0x92,46, 0,125, 0x82, 0,112, 0x92,46, 0,125, 0x82, 0,112, 0x92,46, 
0,125, 0x82, 0x92,48, 0,112, 0x82, 0x92,43, 0,125, 0x82, 0x92,36, 0,112, 0x82, 0,125, 0x92,41, 
0,112, 0x82, 0,125, 0x92,36, 0,112, 0x82, 0x92,48, 0,125, 0x82, 0,112, 0x92,36, 0,125, 
0x82, 0x92,43, 0,112, 0x82, 0,125, 0x92,41, 0,125, 0x82, 0x92,48, 0,112, 0x80, 0x81, 0x82, 0x90,43, 
0,125, 0x91,70, 0x92,46, 0x80, 0x90,53, 0,112, 0x81, 0x91,39, 0,125, 0x81, 0x91,36, 0,112, 
0x80, 0x82, 0x81, 0x90,72, 0x91,34, 0x92,67, 0,125, 0x80, 0x90,44, 0x81, 0x82, 0x91,70, 0x92,51, 0,112, 
0x81, 0x91,67, 0,125, 0x81, 0x91,72, 0,112, 0,125, 0,237, 0,237, 0,237, 0,125, 0,112, 
0x81, 0x91,75, 0,125, 0x81, 0x91,77, 0,112, 0,125, 0x82, 0x80, 0x90,77, 0,112, 0x92,46, 0x81, 
0x91,53, 0,237, 0x80, 0x90,79, 0,125, 0,112, 0,125, 0x80, 0x90,72, 0,112, 0,125, 0,112, 
0x80, 0x90,82, 0,237, 0,125, 0,125, 0x80, 0x90,79, 0,112, 0x80, 0,125, 0x90,77, 0,112, 
0x81, 0x82, 0,125, 0x91,48, 0x80, 0x90,77, 0x92,55, 0,112, 0,125, 0x80, 0x90,74, 0,112, 0x80, 
0x90,75, 0,125, 0x80, 0x90,48, 0,112, 0x80, 0,125, 0x90,36, 0,112, 0x80, 0x90,46, 0,125, 
0x80, 0,112, 0x90,36, 0,125, 0x80, 0,112, 0x90,36, 0,125, 0x80, 0,125, 0x90,43, 0,112, 
0x80, 0x90,46, 0,125, 0x80, 0,112, 0x90,36, 0,125, 0x80, 0,112, 0x90,36, 0,125, 0x80, 0x90,84, 
0,112, 0x80, 0x90,96, 0,125, 0x80, 0x90,91, 0,112, 0x80, 0x90,84, 0,125, 0x80, 0x90,96, 0,112, 
0x80, 0x90,91, 0,125, 0x80, 0x90,84, 0,112, 0x80, 0x90,96, 0,125, 0x80, 0x90,101, 0,112, 0x80, 
0x90,99, 0,125, 0x80, 0x90,48, 0,112, 0x80, 0x90,94, 0,125, 0x80, 0x90,96, 0,125, 0x82, 0x81, 
0x80, 0x90,60, 0x91,96, 0x92,63, 0,112, 0x81, 0x82, 0x80, 0x90,94, 0x91,55, 0x92,60, 0,112, 0x80, 
0x90,36, 0x82, 0x81, 0x91,96, 0x92,55, 0,125, 0x81, 0x91,72, 0x80, 0x82, 0x90,48, 0x92,53, 0,112, 
0x81, 0x80, 0x82, 0x90,84, 0x91,63, 0x92,79, 0,112, 0x81, 0x91,53, 0,125, 0x81, 0x91,55, 0,112, 
0x82, 0x80, 0x90,36, 0x92,82, 0,125, 0x80, 0x82, 0x90,79, 0x92,84, 0,112, 0x82, 0x80, 0x90,82, 0x92,77, 
0,112, 0x82, 0x80, 0x90,43, 0x92,70, 0,125, 0x80, 0x82, 0x90,79, 0x92,84, 0,112, 0x81, 0x82, 0x80, 
0x90,55, 0x91,82, 0x92,60, 0,112, 0x81, 0x82, 0x80, 0x90,84, 0x91,48, 0x92,55, 0,125, 0x80, 0x81, 
0x82, 0x90,87, 0x91,43, 0x92,53, 0,112, 0x81, 0x82, 0x91,63, 0x92,60, 0,125, 0x82, 0x81, 0x91,55, 
0x92,60, 0,112, 0x82, 0x81, 0x91,53, 0x92,58, 0,112, 0x80, 0x90,32, 0x82, 0x81, 0x91,82, 0x92,55, 
0,125, 0x81, 0x80, 0x82, 0x90,87, 0x91,41, 0x92,53, 0,112, 0x80, 0x81, 0x82, 0x90,79, 0x91,55, 0x92,84, 
0,112, 0x81, 0x91,53, 0,125, 0x82, 0x80, 0x81, 0x90,70, 0x91,55, 0x92,60, 0,112, 0x80, 0x90,32, 
0,125, 0x80, 0x90,79, 0,112, 0x80, 0x90,70, 0,112, 0x80, 0x90,43, 0,125, 0x80, 0x90,89, 0,112, 
0x82, 0x81, 0x80, 0x90,55, 0x91,91, 0x92,32, 0,112, 0x82, 0x80, 0x90,84, 0x92,55, 0,125, 0x81, 0x80, 
0x90,36, 0x82, 0x91,89, 0x92,53, 0,112, 0x81, 0x80, 0x82, 0x90,79, 0x91,55, 0x92,60, 0,125, 0x80, 
0x90,29, 0x82, 0x81, 0x91,72, 0x92,55, 0,112, 0x81, 0x80, 0x82, 0x90,82, 0x91,53, 0x92,58, 0,112, 
0x80, 0x90,29, 0x82, 0x81, 0x91,75, 0x92,60, 0,125, 0x81, 0x80, 0x82, 0x90,72, 0x91,41, 0x92,55, 0,112, 
0x80, 0x81, 0x82, 0x90,72, 0x91,53, 0x92,77, 0,125, 0x81, 0x91,53, 0,112, 0x82, 0x80, 0x81, 0x90,65, 
0x91,55, 0x92,60, 0,112, 0x80, 0x90,31, 0x82, 0x81, 0x91,75, 0x92,56, 0,125, 0x81, 0x80, 0x82, 0x90,72, 
0x91,53, 0x92,77, 0,112, 0x82, 0x80, 0x90,31, 0x81, 0x91,77, 0x92,56, 0,112, 0x81, 0x80, 0x82, 0x90,75, 
0x91,31, 0x92,55, 0,125, 0x80, 0x81, 0x82, 0x90,67, 0x91,56, 0x92,62, 0,112, 0x80, 0x90,43, 0x82, 
0x81, 0x91,79, 0x92,53, 0,125, 0x80, 0x82, 0x90,41, 0x92,55, 0,112, 0x81, 0x80, 0x82, 0x90,74, 0x91,38, 
0x92,50, 0,112, 0x80, 0x81, 0x82, 0x90,82, 0x91,53, 0x92,77, 0,125, 0x82, 0x80, 0x90,36, 0x81, 0x91,74, 
0x92,55, 0,112, 0x80, 0x82, 0x90,50, 0x92,55, 0,112, 0x81, 0x91,36, 0x82, 0x80, 0x90,77, 0x92,55, 
0,125, 0x80, 0x81, 0x82, 0x90,72, 0x91,48, 0x92,53, 0,112, 0x80, 0x81, 0x82, 0x90,84, 0x91,55, 0x92,79, 
0,125, 0x81, 0x91,53, 0,112, 0x81, 0x91,55, 0,112, 0x82, 0x80, 0x90,36, 0x92,82, 0,125, 0x80, 
0x82, 0x90,79, 0x92,84, 0,112, 0x82, 0x80, 0x90,82, 0x92,77, 0,112, 0x82, 0x80, 0x90,43, 0x92,70, 
0,125, 0x80, 0x82, 0x90,79, 0x92,84, 0,112, 0x81, 0x82, 0x80, 0x90,55, 0x91,82, 0x92,60, 0,125, 
0x81, 0x82, 0x80, 0x90,84, 0x91,48, 0x92,55, 0,112, 0x80, 0x81, 0x82, 0x90,87, 0x91,43, 0x92,53, 0,112, 
0x81, 0x82, 0x91,55, 0x92,60, 0,125, 0x82, 0x81, 0x91,55, 0x92,60, 0,112, 0x82, 0x81, 0x91,53, 0x92,58, 
0,112, 0x80, 0x90,32, 0x82, 0x81, 0x91,82, 0x92,55, 0,125, 0x81, 0x80, 0x82, 0x90,87, 0x91,41, 0x92,53, 
0,112, 0x80, 0x81, 0x82, 0x90,79, 0x91,55, 0x92,84, 0,125, 0x81, 0x91,53, 0,112, 0x82, 0x80, 0x81, 
0x90,82, 0x91,55, 0x92,87, 0,112, 0x82, 0x80, 0x90,32, 0x92,82, 0,125, 0x80, 0x82, 0x90,79, 0x92,84, 
0,112, 0x82, 0x80, 0x90,91, 0,112, 0x92,43, 0,125, 0x80, 0x82, 0x90,89, 0x92,39, 0,112, 0x81, 
0x80, 0x82, 0x90,55, 0x91,91, 0x92,32, 0,125, 0x82, 0x80, 0x90,84, 0x92,55, 0,112, 0x81, 0x80, 0x90,36, 
0x82, 0x91,89, 0x92,53, 0,112, 0x81, 0x80, 0x82, 0x90,87, 0x91,55, 0x92,79, 0,125, 0x82, 0x80, 0x90,29, 
0x81, 0x91,72, 0x92,55, 0,112, 0x81, 0x80, 0x82, 0x90,82, 0x91,53, 0x92,58, 0,112, 0x80, 0x90,29, 
0x82, 0x81, 0x91,75, 0x92,55, 0,125, 0x81, 0x80, 0x82, 0x90,72, 0x91,41, 0x92,55, 0,112, 0x80, 0x81, 
0x82, 0x90,72, 0x91,53, 0x92,77, 0,125, 0x81, 0x91,53, 0,112, 0x82, 0x80, 0x81, 0x90,65, 0x91,55, 
0x92,60, 0,112, 0x80, 0x90,31, 0x82, 0x81, 0x91,75, 0x92,56, 0,125, 0x81, 0x80, 0x82, 0x90,72, 0x91,53, 
0x92,77, 0,112, 0x82, 0x80, 0x90,31, 0x81, 0x91,77, 0x92,56, 0,125, 0x81, 0x80, 0x82, 0x90,75, 0x91,31, 
0x92,55, 0,112, 0x80, 0x81, 0x82, 0x90,67, 0x91,56, 0x92,62, 0,112, 0x80, 0x90,43, 0x82, 0x81, 0x91,79, 
0x92,53, 0,125, 0x80, 0x82, 0x90,41, 0x92,55, 0,112, 0x81, 0x80, 0x82, 0x90,67, 0x91,38, 0x92,50, 
0,100, 0,12, 0x80, 0x81, 0x82, 0x90,82, 0x91,55, 0x92,77, 0,25, 0,25, 0x81, 0x91,52, 0,12, 
0,25, 0x82, 0x80, 0x81, 0,12, 0xf0};


const unsigned short NoteFrequency[128] = {95556,90193,85131,80353,75843,71586,67569,63776,60197,56818,53629,50619,47778,45097,
42566,40177,37922,35793,33784,31888,30098,28409,26815,25310,23889,22548,21283,20088,
18961,17897,16892,15944,15049,14205,13407,12655,11945,11274,10641,10044,9480,8948,
8446,7972,7525,7102,6704,6327,5972,5637,5321,5022,4740,4474,4223,3986,3762,3551,3352,
3164,2986,2819,2660,2511,2370,2237,2112,1993,1881,1776,1676,1582,1493,1409,1330,1256,
1185,1119,1056,997,941,888,838,791,747,705,665,628,593,559,528,498,470,444,419,395,
373,352,333,314,296,280,264,249,235,222,209,198,187,176,166,157,148,140,132,125,118,
111,105,99,93,88,83,78,74,70,66,62};
