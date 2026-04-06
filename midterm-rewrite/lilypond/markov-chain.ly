
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
   dis'!2.-"R5"
   b'!2.
   c'!2.
   fis'!4
   a'!2.
   cis'!2-"RI11"
   f'!2.
   e'!2.
   ais'!2
   g'!2.
   dis'!2.
   c'!2-"I0"
   ais'!4
   dis'!2
   g'!2.
   a'!4-"RI7"
   cis'!4
   c'!2.-"I0"
   ais'!4
   dis'!2
   g'!4
   a'!4
   cis'!2.
   e'!4-"RI2"
   gis'!4
   g'!4
   cis'!2.
   ais'!4
   fis'!2.
   dis'!4
   b'!4-"I11"
   a'!2.
   d'!2.
   fis'!4
   gis'!2
   c'!2
   dis'!2
   g'!2
   ais'!4
   e'!4-"RI2"
   gis'!2
   g'!2
   cis'!2
   ais'!2
   fis'!2
   dis'!2-"RI1"
   g'!4-"R9"
   dis'!2.
   e'!2
   ais'!2.
   cis'!4
   f'!2.
   gis'!4
   c'!2-"I0"
   ais'!2
   dis'!2.
   g'!2.
   a'!2.
   cis'!4
   e'!4
   gis'!2
   b'!4
   f'!2.
   fis'!2
   d'!2
}
}
>>
>>

\midi{}

}