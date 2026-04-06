
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
   e'!4-"I4"
   c'!2.
   d'!2
   gis'!2
   b'!4
   g'!2
   a'!4-"RI7"
   fis'!4
   e'!2.
   gis'!2
   cis'!4
   c'!4
   ais'!2.-"P10"
   d'!2.
   c'!2
   fis'!4
   dis'!2.
   g'!2
   f'!2.
   e'!2.
   a'!2
   cis'!2.-"I1"
   a'!2.
   b'!2.
   f'!2
   gis'!2.
   e'!2.
   fis'!2.-"P6"
   ais'!4
   gis'!2.
   d'!2.
   b'!2.
   dis'!4
   cis'!2
   c'!2
   f'!4
   a'!4
   g'!4-"I7"
   dis'!4
   f'!4
   b'!4
   d'!2
   ais'!4
   c'!2.
   cis'!2
   gis'!2.
   e'!2
   fis'!2-"I6"
   d'!2
   e'!4
   ais'!2.
   cis'!2
   a'!2
   b'!2.
   c'!2
   g'!4
   dis'!4-"R5"
   fis'!2.
   gis'!4
   e'!4
   b'!2.
   c'!2.
   d'!2.
   ais'!4
   cis'!2
   g'!2
   a'!2-"RI7"
   fis'!4
   e'!2
   gis'!2.-"RI6"
   f'!2
   dis'!4
   g'!2
   c'!4
   b'!2
   a'!2.-"RI7"
   fis'!4
   e'!2.
   gis'!2.
   cis'!2
   c'!2.
   ais'!2
   d'!4
   b'!4
   f'!2.
   dis'!2.
   g'!2-"P7"
   b'!2
   a'!2
   dis'!4-"RI1"
   c'!4-"R2"
   dis'!2.
   f'!2
   cis'!2.
   gis'!2
   a'!2.-"R11"
   c'!2.
   d'!4
   ais'!2
   f'!2
   fis'!4
   gis'!4
   e'!2-"R6"
   g'!2
   a'!2
   f'!2
   c'!2.
   cis'!2.
   dis'!2.-"RI1"
   c'!2-"RI10"
   a'!4-"R11"
   c'!2.
   d'!2
   ais'!2
   f'!4
   fis'!2.
   gis'!2
   e'!4
   g'!2-"P7"
   b'!2.
   a'!4
   dis'!2.
   c'!2
   e'!2
   d'!2-"P2"
   fis'!2
   e'!2
   ais'!2.
   g'!2
   b'!2.
   a'!4-"RI7"
   fis'!2.
   e'!2
   gis'!2.
   cis'!2.
   c'!2
   ais'!4
   d'!2.
   b'!2.
   f'!2.-"RI3"
   d'!2
   c'!2
   e'!2.
   a'!2.
   gis'!4
   fis'!2.
   ais'!2.
   g'!4
   cis'!2.-"P1"
   f'!4
   dis'!4
   a'!4
   fis'!2.
   ais'!2
   gis'!4
   g'!2.
   c'!4
   e'!4
   d'!4-"I2"
   ais'!2
   c'!2
   fis'!4-"P6"
   ais'!2.
   gis'!2
   d'!4
   b'!4-"RI9"
   gis'!2.
   fis'!4
   ais'!4
   dis'!2.-"RI1"
   c'!4-"I0"
   gis'!2.
   ais'!2
   e'!2
   g'!2
   dis'!4
   f'!2
   fis'!4
   cis'!4
   a'!2
   b'!2
   d'!2.
}
}
>>
>>

\midi{}

}