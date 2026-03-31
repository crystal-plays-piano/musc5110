
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
   b'!4-"RI9"
   fis'!2
   gis'!2
   c'!2
   e'!4
   f'!2
   g'!4
   dis'!4
   d'!2-"RI0"
   a'!2.
   b'!4
   dis'!4
   g'!2
   gis'!4
   ais'!2
   fis'!4-"RI4"
   cis'!2
   dis'!2.
   g'!4
   b'!4
   c'!2.
   d'!2.
   ais'!2
   a'!2
   f'!4
   gis'!4
   e'!2-"R6"
   a'!2.
   g'!4
   dis'!2
   b'!2.
   ais'!2.-"P10"
   fis'!2-"R8"
   b'!2-"P11"
   g'!2.
   ais'!2.-"I10"
   d'!2
   b'!2.
   dis'!4
   e'!4
   gis'!4
   fis'!4-"I6"
   ais'!2.
   g'!4
   b'!2.
   c'!2.
   e'!2.
   d'!2
   cis'!2
   a'!4
   f'!2.
   dis'!4-"P3"
   b'!4-"RI9"
   fis'!2.
   gis'!4
   c'!4
   e'!4-"RI2"
   b'!2
   cis'!4
   f'!2
   a'!4
   ais'!2
   c'!4-"I0"
   e'!4
   cis'!4
   f'!4
   fis'!4
   ais'!2
   gis'!2.
   g'!2.
   dis'!4
   b'!2
   a'!2.
   d'!2
}
}
>>
>>

\midi{}

}