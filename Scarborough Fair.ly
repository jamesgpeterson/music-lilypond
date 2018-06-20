\version "2.18.2"

\header {
  title = "Scarborough Fair"
  composer = "English Folk Song"
  %subsubtitle = ""
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
\relative c''
{
  \repeat volta 2
  {
    \language "english"
    \key g \major
    \time 3/4
    a8\( a4.\) a4
    e'4 e e
    b4. c8 b4
    a2.
    r4 e' g \break
    a2 g4
    e4 fs d
    e2.~
    e4 r4 a
    a2 a4 \break
    g2 e4
    e4 d c
    b4( g2~
    g2) g4
    a2 e'4 \break
    d2 c4
    b4 a g
    a2.~
    a2.
    r2 r4
  }
  %\bar "|."
}

chordNames =
\chordmode
{
  %\skip 4
  a2.:m \skip 2.
  g2.
  a2.:m \skip 2.
  d2. \skip 2.
  a2.:m \skip 2. \skip 2.
  c2. \skip 2.
  g \skip 2.
  a:m
  d
  g
  a:m \skip 2. \skip 2.

  
}



verse_one =
\lyricmode
{
  Are you go -- ing to Scar -- bor -- ough Fair?
  Pars -- ley sage rose -- mar -- y and thyme.
  Re -- mem -- ber me to one who lives there
  For she once was a true love of mine.
}

verse_two =
\lyricmode
{
  Tell-hr to make me a cam -- b -- ric
}


\score
{
  <<
    \new ChordNames \chordNames
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" { \verse_one }
    \new Lyrics \lyricsto "one" { \verse_two }
  >>
}


