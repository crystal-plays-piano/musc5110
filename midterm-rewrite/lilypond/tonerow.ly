
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
   cis'!
   a'!
   c'!
   gis'!
   g'!
   dis'!
   f'!
   fis'!
   ais'!
   d'!
   e'!
   b'!
}
}
>>
>>

\midi{}

}