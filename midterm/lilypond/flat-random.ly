
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
   cis'!2.-"P1"
   d'!4
   c'!2
   f'!2
   fis'!2
   dis'!2.
   b'!2
   ais'!2.
   g'!2
   e'!2.
   a'!4-"RI4"
   gis'!2
   cis'!2
   ais'!2
   g'!4
   fis'!4
   d'!2.
   b'!4-"I11"
   ais'!2.
   c'!2-"R5"
   cis'!2-"P1"
   d'!2-"RI9"
   cis'!4
   fis'!2.
   dis'!2.
   c'!4
   b'!2.
   g'!4-"I7"
   fis'!2
   gis'!2.
   dis'!2.
   d'!2.
   f'!2.
   a'!2
   ais'!2-"R3"
   b'!4
   fis'!2
   a'!2.
   c'!4
   cis'!2-"P1"
   d'!4
   c'!2.
   f'!2.
   fis'!2
   dis'!4
   b'!2
   ais'!2.
   g'!4-"R0"
   gis'!2
   dis'!4-"R8"
   e'!2
   b'!4-"I11"
   ais'!2.
   c'!4-"P0"
   cis'!4
   b'!2.
   e'!2
   f'!4
   d'!2
   ais'!2
   a'!2
   fis'!2
   dis'!2
   gis'!2
   g'!2.
}
}
>>
>>

\midi{}

}