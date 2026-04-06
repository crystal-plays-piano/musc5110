
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
   e'!2-"I4"
   dis'!2
   f'!2
   c'!2.
   b'!2
   d'!2.
   fis'!2
   g'!2.
   ais'!4
   cis'!4
   gis'!2
   a'!2-"P9"
   ais'!2.
   gis'!2
   cis'!2
   d'!2
   b'!2.
   g'!2
   fis'!4
   dis'!2
   c'!4-"RI7"
   b'!4
   e'!4
   cis'!2.
   ais'!2
   a'!2
   f'!2
   d'!2.
   dis'!2.
   gis'!2.
   fis'!2.
   g'!2-"RI2"
   fis'!2.
   b'!2
   gis'!2
   f'!2.
   e'!2
   c'!2.
   a'!2.-"RI4"
   gis'!2.
   cis'!2
   ais'!4-"I10"
   a'!4
   b'!4
   fis'!2
   f'!2.
   gis'!4
   c'!4
   cis'!2
   e'!2.
   g'!4-"R0"
   gis'!4
   dis'!2
   fis'!2.
   a'!4
   ais'!2-"R3"
   b'!2
   fis'!2.-"I6"
   f'!2
   g'!2
   d'!2.
   cis'!2.
   e'!2.
   gis'!2.-"P8"
   a'!4
   g'!4
   c'!2-"R5"
   cis'!4
   gis'!4
   b'!4
   d'!2.
   dis'!4
   g'!2
   ais'!4
   a'!2
   e'!2.-"RI11"
   dis'!4
   gis'!4
   f'!4
   d'!4
   cis'!2.
   a'!2.
   fis'!2.
   g'!2.
   c'!4-"P0"
   cis'!2.
   b'!2
   e'!4
   f'!4
   d'!2.
   ais'!4
   a'!4
   fis'!2.
   dis'!2
   gis'!2.
   g'!4
}
}
>>
>>

\midi{}

}