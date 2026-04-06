
\version "2.24.4" 



\score{

 

\layout{}


\new ChoirStaff <<



\new Staff <<
  \new Voice \with {
  \remove Note_heads_engraver
  \consists Completion_heads_engraver
  \remove Rest_engraver
  \consists Completion_rest_engraver
  }
  {
  \clef treble
  \time 4/4
  {
   a'!2.-"I9"
   cis'!4
   f'!2
   d'!2
   g'!2
   dis'!2.
   c'!2
   b'!4
   fis'!2
   ais'!2-"R5"
   fis'!4
   e'!2
   gis'!2.-"P8"
   e'!2.
   c'!2.
   dis'!2
   ais'!2.
   d'!2.
   f'!2
   fis'!2.-"I6"
   ais'!2
   d'!2
   b'!2.-"R6"
   g'!4
   f'!4
   a'!2.
   e'!2
   dis'!2
   c'!2.
   gis'!4
   cis'!2.
   ais'!2.
   d'!2.
   fis'!2-"I6"
   ais'!2
   d'!2
   b'!2
   e'!4
   c'!2.
   a'!4
   gis'!2
   dis'!2
   g'!2.
   f'!2-"P5"
   cis'!4
   a'!2
   c'!4
   g'!4
   b'!2.
   d'!2.
   dis'!4-"RI8"
   g'!2.
   a'!4
   f'!4
   ais'!4
   b'!4
   d'!2.
   fis'!2-"RI11"
   ais'!2.-"R5"
   fis'!2
   e'!4
   gis'!2.-"P8"
   e'!2.
   c'!2
   dis'!2.
   ais'!4
   d'!4
   f'!2-"RI10"
   a'!2.
   b'!2.
   g'!2.
   c'!2.
   cis'!2
   e'!4
   gis'!4
   dis'!4
   fis'!2
   d'!4-"P2"
   ais'!2
   fis'!2.-"RI11"
   ais'!2
   c'!2.
   gis'!2.-"P8"
   e'!4
   c'!2
   dis'!4
   ais'!4
   d'!2.
   f'!2.
   fis'!4-"RI11"
   ais'!2
   c'!2
   gis'!2.
   cis'!2.
   d'!2.-"I2"
   fis'!2.-"RI11"
   ais'!2.
   c'!2
   gis'!4
   cis'!2.
   d'!4
   f'!2.
   a'!4
   e'!2.
   g'!2.
   dis'!2
   b'!4-"P11"
   g'!4
   dis'!2.
   fis'!2-"R1"
   d'!2.
   c'!2
   e'!2.
   b'!4
   ais'!2
   g'!2-"R2"
   dis'!2.
   cis'!2
   f'!2
   c'!4
   b'!4
   gis'!2.
   e'!2
   a'!2.
   fis'!4
   ais'!2.
   d'!2-"I2"
   fis'!4-"I6"
   ais'!4
   d'!2
   b'!4
   e'!4
   c'!2.
   a'!2-"P9"
   f'!2.
   cis'!4
   e'!4
   b'!2.
   dis'!2.
   fis'!4
   g'!2.
   c'!2
   gis'!2.-"P8"
   e'!2.-"R11"
   c'!4
   ais'!2
   d'!2.
   a'!2
   gis'!4
   f'!4
   cis'!2.
   fis'!2-"R1"
   d'!4
   c'!2.
   e'!4
   b'!4
   ais'!4
   g'!4
   dis'!2
   gis'!2.-"R3"
   e'!4
   d'!4
   fis'!2.-"I6"
   ais'!2
   d'!2
   b'!2.
   e'!4
   c'!4
   a'!2.-"R4"
   f'!4
   dis'!4
   g'!4
   d'!2.
   cis'!2
   ais'!4
   fis'!2
   b'!4
   gis'!2.
   c'!4-"I0"
   e'!4
   gis'!4
   f'!4
   ais'!2.
   fis'!2
   dis'!2
   d'!4
   a'!4
   cis'!4
   b'!2
   g'!2.
}
}
>>
>>

\midi{}

}