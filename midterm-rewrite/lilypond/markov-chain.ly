
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
   b'!2-"RI9"
   gis'!4-"R10"
   b'!2.-"R1"
   d'!2.
   e'!2
   c'!2.
   g'!2
   gis'!4
   ais'!2.
   fis'!2
   a'!2.
   dis'!2
   f'!4
   cis'!2-"R3"
   e'!2.
   fis'!2.
   d'!2.
   a'!2
   ais'!4
   c'!2
   gis'!4-"I8"
   e'!2
   fis'!4
   c'!4
   dis'!4
   b'!2
   cis'!2
   d'!4
   a'!2.-"RI7"
   fis'!4
   e'!2.
   gis'!2.
   cis'!2
   c'!2-"RI10"
   a'!2.
   g'!4
   b'!4
   e'!4
   dis'!4
   cis'!2
   f'!2.
   d'!2
   gis'!2-"RI6"
   f'!2
   dis'!2.
   g'!2.
   c'!2
   b'!4
   a'!2.
   cis'!2-"R3"
   e'!2-"RI2"
   cis'!4
   b'!4
   dis'!2.
   gis'!2-"I8"
   e'!2.
   fis'!2
   c'!2.
   dis'!2
   b'!2.
   cis'!4
   d'!2.
   a'!2
   f'!2
   g'!4-"RI5"
   e'!2.
   d'!4
   fis'!2
   b'!2
   ais'!2
   gis'!2-"RI6"
   f'!2
   dis'!2.-"R5"
   fis'!2.
   gis'!4
   e'!2-"RI2"
   cis'!2
   b'!2.
   dis'!2
   gis'!2
   g'!4
   f'!2
   a'!2
   fis'!4
   c'!2
   ais'!4
   d'!2-"RI0"
   b'!2
   a'!2.
   cis'!2
   fis'!2.
   f'!2
   dis'!2
   g'!2
   e'!2.
   ais'!2.
   gis'!4
   c'!2-"RI10"
   a'!2
   g'!2
   b'!4
   e'!2.
   dis'!2-"RI1"
   c'!2
   ais'!4
   d'!4
   g'!2
   fis'!4
   e'!2.-"R6"
   g'!4-"P7"
   b'!4
   a'!2
   dis'!4
   c'!2
   e'!2
   d'!2
   cis'!2.
   fis'!2.
   ais'!4
   gis'!2.
   f'!2.-"RI3"
   d'!4
   c'!2.
   e'!2
   a'!4
   gis'!4-"RI6"
   f'!4
   dis'!2.
   g'!2.
   c'!2.-"RI10"
   a'!4
   g'!2.
   b'!2
   e'!2
   dis'!2
   cis'!2.
   f'!4
   d'!2.
   gis'!2
   fis'!2
   ais'!2-"P10"
   d'!4
   c'!4
   fis'!4
   dis'!2
   g'!4
   f'!4
   e'!2
   a'!4
   cis'!2
   b'!2
   gis'!4-"R10"
   b'!4
   cis'!2
   a'!4
   e'!2
   f'!2-"RI3"
   d'!2-"RI0"
   b'!2.
   a'!2
   cis'!2
   fis'!2.
   f'!4
   dis'!2.
   g'!2.
   e'!4
   ais'!4
   gis'!2-"I8"
   e'!4-"I4"
   c'!2.-"P0"
   e'!2.
   d'!4
   gis'!2.
   f'!2
   a'!4
   g'!4
   fis'!2
   b'!2.
   dis'!2.
   cis'!2.
   ais'!4
}
}
>>
>>

\midi{}

}