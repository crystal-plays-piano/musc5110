
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
   c'!2.-"R5"
   dis'!2
   cis'!2
   gis'!2.
   e'!4-"R9"
   g'!2.
   f'!2
   c'!4
   gis'!2
   dis'!4
   d'!2.
   cis'!2.
   b'!2.
   fis'!2.-"RI1"
   dis'!2
   f'!2
   ais'!4
   d'!2.
   g'!2.
   gis'!2.
   a'!2
   b'!2.
   e'!2
   c'!2-"R5"
   dis'!2.
   cis'!2
   gis'!2
   e'!4
   b'!2
   ais'!2-"P10"
   b'!4
   g'!2
   c'!2
   d'!2
   dis'!2
   e'!2.-"I4"
   dis'!2.
   g'!2.
   d'!2.
   c'!4
   b'!2.-"P11"
   c'!2
   gis'!2.
   cis'!2.
   dis'!2
   e'!2
   f'!2.
   ais'!2
   d'!4
   g'!4
   a'!2
   fis'!4-"R11"
   a'!4
   g'!4
   d'!4-"P2"
   dis'!2.
   b'!4
   e'!2.
   fis'!2
   g'!2
   gis'!4
   cis'!4-"R6"
   e'!4
   d'!2
   a'!4
   f'!2.-"I5"
   e'!2.
   gis'!4
   dis'!4
   cis'!2.
   c'!2.
   b'!2.
   fis'!2
   d'!2.
   a'!2.
   g'!2-"R0"
   ais'!2
   gis'!2.
   dis'!2
   b'!2
   fis'!2
   f'!2.
   e'!2
   d'!4-"R7"
   f'!2.
   dis'!4
   ais'!2
   fis'!2.
   cis'!2-"R6"
   e'!2
   d'!4
   a'!2.
   f'!2
   c'!2.
   b'!4
   ais'!2
   gis'!2
   dis'!4
   g'!2.-"R0"
   ais'!4
   gis'!2.
   dis'!4
   b'!2.
   fis'!2
   f'!2.
   e'!2.-"I4"
   dis'!2
   g'!2
   d'!2-"I2"
   cis'!2.
   f'!4-"I5"
   e'!4
   gis'!2.
   dis'!2
   cis'!2
   c'!2.
   b'!2
   fis'!2.
   d'!2.
   a'!2
   g'!2
   ais'!4-"P10"
   b'!2.-"RI6"
   gis'!2.
   ais'!4
   dis'!2
   g'!4
   c'!4
   cis'!2
   d'!4
   e'!2.
   a'!2
   f'!4-"P5"
   fis'!2
   d'!2
   g'!2
   a'!4
   ais'!2.
   b'!2
   e'!2
   gis'!2
   cis'!4-"R6"
   e'!4
   d'!2
   a'!2.-"RI4"
   fis'!4
   gis'!4
   cis'!4
   f'!4
   ais'!4-"P10"
   b'!2.
   g'!2.
   c'!4-"I0"
   b'!2.
   dis'!2
   ais'!2
   gis'!2.
   g'!4
   fis'!2.
   cis'!2
   a'!2
   e'!4
   d'!2.
   f'!2
}
}
>>
>>

\midi{}

}