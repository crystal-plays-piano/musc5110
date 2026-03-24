
\version "2.24.4" 


\new ChoirStaff <<



\new Staff <<
  \new Voice \with {
  \remove Note_heads_engraver
  \consists Completion_heads_engraver
  \remove Rest_engraver
  \consists Completion_rest_engraver
  }
  {
  \clef alto
  \time 4/4
  {
    f8-"1"
    a16-"2"
    cis16-"3"
    e2-"4"
    e16\f-"5"
    d1\ff-"6"
    e1-"7"
    ais2-"8"
    a16-"9"
    b4-"10"
    fis1-"11"
    dis1-"12"
}
}
>>


\new Staff <<
  \new Voice \with {
  \remove Note_heads_engraver
  \consists Completion_heads_engraver
  \remove Rest_engraver
  \consists Completion_rest_engraver
  }
  {
  \clef alto
  \time 4/4
  {
    fis2-"1"
    a2\p-"2"
    gis4-"3"
    d8-"4"
    dis2-"5"
    gis1-"6"
    g2-"7"
    fis8-"8"
    e2-"9"
    f4-"10"
    fis4-"11"
    g4\pp-"12"
}
}
>>


\new Staff <<
  \new Voice \with {
  \remove Note_heads_engraver
  \consists Completion_heads_engraver
  \remove Rest_engraver
  \consists Completion_rest_engraver
  }
  {
  \clef alto
  \time 4/4
  {
    gis16-"1"
    g8-"2"
    dis1-"3"
    b16-"4"
    dis4\f-"5"
    d8-"6"
    g1-"7"
    c2\mf-"8"
    f4-"9"
    g2\p-"10"
    dis16-"11"
    d1-"12"
}
}
>>
>>