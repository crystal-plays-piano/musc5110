
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
   f'!4-"P5"
   fis'!2
   cis'!4
   a'!4
   g'!2.
   ais'!4-"R4"
   g'!2.
   cis'!2
   d'!4
   b'!2.
   dis'!2.-"P3"
   e'!2
   b'!4
   g'!4
   f'!2
   gis'!4
   d'!4
   ais'!2-"R4"
   g'!2
   cis'!4
   d'!4
   b'!4
   dis'!2
   a'!4
   fis'!4-"R0"
   dis'!4
   a'!2
   ais'!4
   g'!2.-"P7"
   gis'!4-"P8"
   a'!4
   e'!2
   c'!4
   ais'!2
   cis'!2.-"RI7"
   e'!2
   ais'!2.-"I10"
   a'!2
   d'!4
   fis'!2.-"RI0"
   a'!2.
   dis'!4
   d'!2
   f'!2.
   cis'!2
   g'!2
   ais'!2
   gis'!2-"I8"
   g'!2.
   c'!4
   e'!2
   fis'!2
   dis'!2.
   a'!2.
   cis'!2.
   ais'!2
   b'!4
   f'!4-"R11"
   d'!2.
   gis'!2
   a'!2.
   fis'!2
   ais'!2-"I10"
   a'!2
   d'!2.-"I2"
   cis'!2
   fis'!4
   ais'!2
   c'!2.
   a'!2.
   dis'!4-"P3"
   e'!2.
   b'!4
   g'!2
   f'!2.
   gis'!2.
   d'!4
   ais'!2-"R4"
   g'!4
   cis'!4
   d'!2.
   b'!2
   dis'!2
   a'!2
   fis'!2
   gis'!2
   c'!4-"P0"
   cis'!2
   gis'!2
   e'!4
   d'!2.
   f'!2.
   b'!2.
   g'!2
   ais'!2.
   a'!2.
   dis'!2
   fis'!2
}
}
>>
>>

\midi{}

}