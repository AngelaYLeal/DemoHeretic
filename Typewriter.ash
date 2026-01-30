/*

24.04.2013

Typwriter Style Text v1.0
by Dieter Stassen

This module is written for AGS 3.2.1.1111

  Typewriter.Type (int x, int y, int delay, int color,
                   String text, style, optional AudioClip sound);
            
Displays 'text' as typwriter text at 'x' and 'y', in color 'color',
with a delay of 'delay' (in game loops) between characters.

Style specifies which style you want to use.

  eTypewriter_LongSpace
  
Spaces are delayed twice as long as other characters.
  
  eTypewriter_Constant
  
All increments are delayed equally.

  eTypewriter_ShortSpace
  
Spaces are delayed half the length of other characters.

  eTypeWriter_Mixed
  
Spaces are randomized to be either half, double or the same as other
characters.

Pass an audio clip name as sound to play a sound with each letter.
Leave it out for no sound.

*/

#define TYPEWRITER_MAXIMUM_DISPLAY_TIME 40

enum TypewriterStyle {
  eTypewriter_LongSpace,
  eTypewriter_Constant,
  eTypewriter_ShortSpace,
  eTypeWriter_Mixed,
};

struct Typewriter {
  import static void Type (int x, int y, int delay, int color, String text,
                           TypewriterStyle style, AudioClip *sound = 0);
  import static void Remove ();
};
