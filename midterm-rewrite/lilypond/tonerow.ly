
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
   dis'!
   a'!
   g'!
   f'!
   fis'!
   d'!
   e'!
   b'!
   cis'!
   gis'!
   ais'!
   c'!
}
}
>>
>>

\midi{}

}