
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
   dis'!2.-"RI11"
   fis'!2.
   g'!2
   ais'!2
   d'!4
   f'!2
   gis'!4
   a'!4
   cis'!4
   c'!4-"RI8"
   dis'!4
   e'!2
   g'!4
   b'!2
   d'!4-"RI10"
   f'!2
   fis'!4
   a'!2.
   cis'!4
   e'!2-"R8"
   cis'!2
   c'!2.
   a'!4
   f'!4
   d'!4-"I2"
   g'!2
   dis'!2
   e'!4
   c'!4
   b'!4
   gis'!2-"R0"
   f'!2
   e'!2.
   cis'!2
   a'!2
   fis'!2-"RI2"
   a'!2
   ais'!2
   cis'!2.-"RI9"
   e'!2
   f'!2
   gis'!2
   c'!4
   dis'!4-"I3"
   gis'!4
   e'!2
   f'!2
   cis'!2.
   c'!2.
   a'!4
   fis'!2.
   d'!4
   b'!2.-"RI7"
   d'!2.
   dis'!2.
   fis'!2
   ais'!2.
   cis'!2.
   e'!2
   f'!2.
   a'!2.-"I9"
   d'!2.
   ais'!4
   b'!4
   g'!4-"RI3"
   ais'!4
   b'!2
   d'!4
   fis'!2.
   a'!2-"I9"
   d'!4
   ais'!2
   b'!2
   g'!2.
   fis'!4
   dis'!2
   c'!2.
   gis'!4
   f'!4-"P5"
   c'!4-"P0"
   g'!2.
   b'!4
   ais'!2
   d'!2.
   dis'!2.
   fis'!2
   a'!2
   cis'!2
   e'!2
   f'!4
   gis'!4
}
}
>>
>>

\midi{}

}