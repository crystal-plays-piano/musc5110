
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
   cis'!4-"I1"
   f'!2.
   e'!4
   fis'!2
   b'!2-"I11"
   dis'!4
   d'!4
   e'!2
   a'!2.
   gis'!2-"RI0"
   cis'!2-"RI5"
   fis'!2
   e'!2
   b'!4
   g'!2.
   c'!2.
   d'!2
   dis'!2
   ais'!2
   gis'!2
   a'!4
   f'!2.-"RI9"
   ais'!4
   gis'!4
   dis'!2.
   b'!4
   e'!2.
   fis'!2-"I6"
   ais'!4
   a'!2.
   b'!2
   e'!2.
   dis'!4
   cis'!4
   gis'!2
   c'!2
   f'!2
   g'!4
   d'!2.-"P2"
   ais'!2
   b'!4
   a'!2.
   e'!2.
   f'!4
   g'!4
   c'!2.
   gis'!4
   dis'!2
   cis'!2.
   fis'!2-"I6"
   ais'!4
   a'!2
   b'!4
   e'!4-"I4"
   gis'!4
   g'!2.
   a'!4
   d'!2
   cis'!2.
   b'!2.-"P11"
   g'!4
   gis'!2
   fis'!4
   cis'!4
   d'!4
   e'!4
   a'!2
   f'!2.
   c'!2
   ais'!4
   dis'!2-"RI7"
   gis'!4
   fis'!4
   cis'!4
   a'!2
   d'!4
   e'!4-"RI8"
   a'!2.
   g'!2.-"R3"
   d'!2
   e'!2.-"I4"
   gis'!2.
   g'!4
   a'!4
   d'!2
   cis'!4
   b'!2
   fis'!2.
   ais'!4
   dis'!4
   f'!2
   c'!2.-"I0"
   e'!2
   dis'!2
   f'!2
   ais'!2.
   a'!4
   g'!2
   d'!4
   fis'!2
   b'!2
   cis'!2
   gis'!2
}
}
>>
>>

\midi{}

}