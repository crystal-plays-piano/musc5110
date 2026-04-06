
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
   c'!2.-"P0"
   gis'!2.
   e'!4
   g'!2.
   d'!2.
   fis'!2-"P6"
   d'!2.
   ais'!2
   cis'!2.
   gis'!4
   c'!4
   dis'!4
   e'!2-"RI9"
   gis'!2
   ais'!2.
   fis'!2.-"I6"
   ais'!2.
   d'!4
   b'!2
   e'!4
   c'!4-"P0"
   gis'!2.
   e'!2.
   g'!4
   d'!4
   fis'!4
   a'!4
   ais'!2
   dis'!2-"I3"
   g'!2
   b'!4
   gis'!4
   cis'!2
   a'!4
   fis'!2.
   f'!2.-"I5"
   a'!4
   cis'!2.
   ais'!4
   dis'!2.
   b'!2
   gis'!2.
   g'!4
   d'!4
   fis'!2.
   e'!2
   c'!2-"P0"
   gis'!2
   e'!2
   g'!2
   d'!4
   fis'!4
   a'!2.-"R4"
   f'!2.
   dis'!4
   g'!2
   d'!2.
   cis'!2.
   ais'!2
   fis'!2-"I6"
   ais'!2
   d'!2.
   b'!2
   e'!2.
   c'!2.
   a'!2.
   gis'!4
   dis'!4-"I3"
   g'!2.
   b'!2.
   gis'!2
   cis'!2
   a'!2
   fis'!2.
   f'!2.
   c'!2.
   e'!4-"R11"
   c'!2
   ais'!2.
   d'!4
   a'!4
   gis'!2
   f'!2-"P5"
   cis'!4
   a'!4
   c'!4-"I0"
   e'!4
   gis'!4
   f'!4
   ais'!2.
   fis'!2.
   dis'!2.
   d'!2.
   a'!2.
   cis'!2.
   b'!2
   g'!4
}
}
>>
>>

\midi{}

}