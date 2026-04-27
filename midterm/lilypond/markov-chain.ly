
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
   e'!2.-"P4"
   f'!2.
   c'!4
   gis'!4
   fis'!4
   a'!2.
   dis'!2.-"R9"
   c'!2
   fis'!2
   g'!4
   e'!2
   gis'!2.
   d'!2-"RI8"
   f'!4-"RI11"
   gis'!2.
   d'!4-"R8"
   b'!2.
   f'!2
   fis'!4
   dis'!2.
   g'!4-"P7"
   gis'!2
   dis'!2.-"I3"
   d'!2
   g'!2.
   b'!2.
   cis'!2.
   ais'!2.
   e'!4
   gis'!4
   f'!2-"RI11"
   gis'!2.
   d'!2-"R8"
   b'!2.
   f'!2.
   fis'!2
   dis'!2-"P3"
   e'!4
   b'!4
   g'!2
   f'!2-"RI11"
   gis'!2
   d'!2
   cis'!4
   e'!4
   c'!4
   fis'!4
   a'!2.
   g'!2.-"I7"
   fis'!4
   b'!4
   dis'!2
   f'!4
   d'!2-"R8"
   b'!2.
   f'!2.-"RI11"
   gis'!2.
   d'!2.
   cis'!2.
   e'!2.-"RI10"
   g'!4
   cis'!2.
   c'!2.
   dis'!2.-"RI9"
   fis'!2.
   c'!2.-"R6"
   a'!2
   dis'!2.
   e'!4
   cis'!2.
   f'!2
   b'!2.
   gis'!2.
   ais'!2
   d'!4
   g'!2.-"I7"
   fis'!2
   b'!2
   dis'!4-"RI9"
   fis'!4
   c'!2
   b'!2
   d'!2
   ais'!2.
   e'!2-"R10"
   cis'!2
   g'!2
   gis'!2
   f'!4
   a'!2
   dis'!4
   c'!4
   d'!4-"P2"
   dis'!4
   ais'!4
   fis'!2.
   e'!4
   g'!4
   cis'!2
   a'!2.
   c'!4
   b'!2.-"RI5"
   d'!2.
   gis'!4
   g'!4
   ais'!4
   fis'!2
   c'!2
   dis'!2.
   cis'!2.
   a'!2
   e'!2
   f'!2-"RI11"
   gis'!4
   d'!2
   cis'!2.
   e'!2.
   c'!2
   fis'!2.
   a'!2.
   g'!2.
   dis'!4
   ais'!2
   b'!2.-"P11"
   c'!2.
   g'!2.
   dis'!2-"P3"
   e'!2
   b'!2.
   g'!2
   f'!2.
   gis'!2.
   d'!4
   ais'!2.
   cis'!2.
   c'!2.
   fis'!4
   a'!4-"RI3"
   c'!4
   fis'!2
   f'!2.
   gis'!2
   e'!4-"RI10"
   g'!2
   cis'!2.
   c'!2
   dis'!2.-"I3"
   d'!4
   g'!2.
   b'!2.
   cis'!2.
   ais'!2
   e'!2.
   gis'!2.
   f'!2.
   fis'!2
   c'!4-"P0"
   cis'!4
   gis'!2.
   e'!4
   d'!4
   f'!2
   b'!4
   g'!4
   ais'!4
   a'!2
   dis'!2.
   fis'!4
}
}
>>
>>

\midi{}

}