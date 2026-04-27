
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
   d'!4-"I2"
   fis'!2.
   f'!2
   g'!4
   c'!4
   b'!2
   a'!4
   e'!2
   gis'!2.-"P8"
   e'!4
   f'!2-"RI9"
   ais'!2
   gis'!4-"P8"
   e'!4
   f'!4
   dis'!2.-"I3"
   g'!2
   fis'!4
   gis'!4
   cis'!4
   c'!2
   ais'!2.-"P10"
   fis'!4
   g'!2.
   f'!4
   c'!2
   cis'!2.-"I1"
   f'!2.
   e'!2
   fis'!2.
   b'!2.
   ais'!2-"RI2"
   dis'!4
   cis'!2.
   gis'!2-"R4"
   dis'!2
   f'!4
   ais'!2.
   d'!2.-"RI6"
   g'!2-"I7"
   b'!2
   ais'!4
   c'!2
   f'!2.
   e'!2.-"R0"
   b'!2.
   cis'!2
   fis'!2.
   ais'!4
   f'!2-"I5"
   a'!2
   gis'!4
   ais'!2
   dis'!2
   d'!2
   c'!2.
   g'!2
   b'!2.
   e'!2-"I4"
   gis'!2
   g'!4
   a'!4
   d'!2.
   cis'!4-"R9"
   gis'!2-"R4"
   dis'!2.
   f'!4
   ais'!4
   d'!4
   a'!2.-"RI1"
   d'!4
   c'!4
   g'!2.
   dis'!4
   gis'!2.
   ais'!4
   b'!2
   fis'!4
   e'!2
   f'!4-"P5"
   cis'!2.
   d'!4
   c'!2
   g'!2
   gis'!2
   ais'!2
   dis'!2.
   b'!4
   fis'!2.-"R2"
   cis'!4-"R9"
   gis'!2.
   ais'!2.
   dis'!4-"R11"
   ais'!4
   c'!2.
   f'!4
   a'!4
   e'!2.
   d'!4
   cis'!2
   fis'!4
   gis'!2.-"RI0"
   cis'!2.
   b'!4
   fis'!2.
   d'!4
   g'!4
   a'!2.
   ais'!4
   f'!2-"R1"
   c'!4
   d'!4
   g'!2
   b'!2.
   fis'!2
   e'!4
   dis'!2-"I3"
   g'!4
   fis'!2.
   gis'!4
   cis'!2.
   c'!2
   ais'!4-"I10"
   d'!2.
   cis'!2.
   dis'!2-"I3"
   g'!2.
   fis'!2.
   gis'!2
   cis'!2
   c'!2
   ais'!2
   f'!2.
   a'!4
   d'!4-"P2"
   ais'!2.
   b'!2.
   a'!2.
   e'!2.
   f'!2
   g'!2.
   c'!2.-"RI4"
   f'!2
   dis'!2
   ais'!4
   fis'!2.-"I6"
   ais'!2
   a'!2.
   b'!2
   e'!2.
   dis'!2.-"I3"
   g'!4
   fis'!2
   gis'!2.
   cis'!2
   c'!4
   ais'!4-"RI2"
   dis'!2
   cis'!2
   gis'!2
   e'!2.
   a'!4
   b'!2.
   c'!2-"I0"
   e'!4
   dis'!2.
   f'!4
   ais'!4
   a'!2
   g'!2.
   d'!4
   fis'!2
   b'!2.
   cis'!4
   gis'!2.
}
}
>>
>>

\midi{}

}