\version "2.18.2"

\header {
  title = "Simple Gifts"
  composer = "Joseph Brackett, Jr., 1848"
  subsubtitle = "Shaker Song"
}


\paper
{
  system-system-spacing =
  #'((basic-distance . 26) 	% space between lines
      (minimum-distance . 8)
      (padding . 1)
      (stretchability . 60))
}


melody =
\relative c'
{
  % \repeat volta 2
  {
    \language "english"
    \key g \major
    \time 4/4
    \partial 4 d8 d
    g4 g8 a b g b c
    d4 d8 c b4 a8 g
    a4 a a g
    a8 b a fs d4 r8 d
    g4 g8 a b\( g\) b\( c\)
    d4 d8\( c\) b4 a8\( g\)
    a4 a8 b8 b8 b4 a8
    g4 g8. a16 g4. r8
    d'2 b4. a8
    b8 c b a g4. a8
    b4 b8 c d4 c8 b
    a4 a8 b g4 r8 d8
    g4. a8 b\( g\) b\( c\)
    d4 d8 c b4 a8  g
    a4 a b b8 a
    g4 g g2
  }
  \bar "|."
}

chordNames =
\chordmode
{
  \skip 4
  g2 e2:m
  b2:m7 g
  a1:m
  d2 d2:7
  g2 e2:m
  b2:m7 g2
  d1
  c2 g2
  g2 e2:m
  g1
  b1:m7
  a2:m d2:7
  g2 e2:m
  g1
  a2:m c:maj7
  g4 c4 g2

}



verse_one =
\lyricmode
{
  'Tis the gift to be sim -- ple, 'tis the gift to be free.
  'Tis the gift to come down where we ought to be,
  And when we are in _ the _ place just _ right
  We'll _ be in the val -- ley of love and de -- light.
  When true sim -- pli -- ci -- ty is gained
  To bow and to bend, we will not be a -- shamed
  To turn, to turn, _ will _ be our de -- light
  'Til by turn -- ing, turn -- ing, we come round right
}



\score
{
  <<
    \new ChordNames \chordNames
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" { \verse_one }
  >>
}


