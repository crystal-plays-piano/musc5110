
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
   gis'!2-"P8"
   ais'!2-"I10"
   gis'!4
   cis'!2.
   f'!2.
   g'!2
   b'!2.
   d'!2
   fis'!2.
   a'!4
   dis'!2.
   e'!4-"P4"
   fis'!4
   cis'!2
   a'!4
   g'!4-"P7"
   a'!2
   e'!4
   c'!2
   ais'!2
   fis'!2
   dis'!2
   b'!2.-"R1"
   g'!2.
   gis'!2.
   d'!4
   f'!2.-"R7"
   cis'!4
   d'!2.
   gis'!2.
   b'!2
   dis'!4-"I3"
   cis'!2
   fis'!2.
   ais'!2
   c'!2.-"RI10"
   e'!2-"R6"
   c'!2
   cis'!2.
   g'!4
   ais'!4
   d'!4-"R4"
   ais'!2
   b'!2-"RI9"
   dis'!4
   d'!4
   gis'!4
   f'!2
   cis'!2
   ais'!2-"P10"
   c'!2
   g'!2.
   dis'!4
   cis'!2
   a'!4
   fis'!2-"R8"
   d'!2.
   dis'!2.
   a'!4
   c'!2.
   e'!4
   g'!2
   b'!2
   cis'!2.
   f'!2.
   ais'!2.
   gis'!4-"I8"
   fis'!2.
   b'!2.
   dis'!4
   f'!2
   a'!2.
   c'!4-"RI10"
   e'!4
   dis'!4
   a'!2.
   fis'!2.
   d'!2.
   b'!2
   g'!2.
   f'!2
   cis'!2.
   gis'!2-"I8"
   fis'!4
   b'!4
   dis'!2
   f'!2
   a'!2-"R11"
   f'!4
   fis'!2-"I6"
   e'!4
   a'!4
   cis'!2-"P1"
   dis'!4
   ais'!2.
   fis'!2.
   e'!2.
   c'!2.
   a'!2
   f'!2
   d'!2
   gis'!2
   g'!2.
   b'!4-"R1"
   g'!2.
   gis'!2
   d'!2.
   f'!2.
   a'!2.
   c'!2
   e'!4
   fis'!2.
   ais'!4-"R0"
   fis'!4
   g'!4
   cis'!2.
   e'!2
   gis'!2
   b'!4
   dis'!2.
   f'!2.
   a'!2.
   d'!2-"I2"
   c'!4
   f'!2.
   a'!2
   b'!4-"I11"
   a'!2.
   d'!4-"R4"
   ais'!4
   b'!2
   f'!2.
   gis'!2.
   c'!2.
   dis'!2-"I3"
   cis'!4
   fis'!2.
   ais'!2.
   c'!2
   e'!4
   g'!2.
   b'!2.
   d'!2
   gis'!4
   a'!2
   f'!2-"I5"
   dis'!2.
   gis'!2.
   c'!2
   d'!2-"P2"
   e'!2.
   b'!2
   g'!4
   f'!2.
   cis'!2.
   ais'!2
   fis'!4
   dis'!2
   a'!4
   gis'!2
   c'!4-"I0"
   ais'!4
   dis'!2
   g'!2.
   a'!4
   cis'!2.
   e'!4
   gis'!4
   b'!2.
   f'!2
   fis'!2
   d'!4
}
}
>>
>>

\midi{}

}