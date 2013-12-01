#ifndef __Music_H__
#define __Music_H__

extern const unsigned char score[];

extern const unsigned short Wave[];
extern const unsigned short Trumpet[];
extern const unsigned short Bassoon[];

#define wave_len 64

#define wavename1 Trumpet
#define wavename2 Bassoon


//notes
//use midi input - 36
//SineUpdateDelay[0] = midi(36)
//range- 36-96
extern const unsigned short NoteFrequency[];

extern int note_index1;
extern int note_index2;

extern int playing;
extern int song_len; //number of notes in the song for instrument 1
extern int note_inc;
extern int note_len_divider;

extern long note_mag_mult1_per;
extern long note_mag_mult2_per;

#endif
