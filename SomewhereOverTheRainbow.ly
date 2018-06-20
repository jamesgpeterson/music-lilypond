\version "2.18.2"

\header {
  title = "Somewhere Over the Rainbow"
  composer = "Harold Arlen"
  poet = "Yip Harburg"
}


\paper {
  system-system-spacing =
  #'((basic-distance . 20) 	% space between lines
      (minimum-distance . 8)
      (padding . 1)
      (stretchability . 60))
}


melody =
\relative c'
{

  \repeat volta 2
  {
    \language "english"
    \key c \major
    \time 4/4
    c2 c'
    b4 g8 a8 b4 c4
    c,2 a'2
    g2. r4 | \break
    a,2 f'2
    e4 c8 d8 e4 f4
    d4 b8 c8 d4 e4
  }
  \alternative
  {
    { c2. r4 }
    { c2 r4. g'8 \break }
  }
  e8 g e g e g e g
  f a f a f a f a
  a2 a2
  r2 r4. g8
  e8 g e g e g e g
  fs a fs a fs a fs a
  b2 b2
  d2 b\fermata |  \break
  c,2 c'
  b4 g8 a8 b4 c4
  c,2 a'2
  g2. r4 | \break
  a,2 f'2
  e4 c8 d8 e4 f4
  d4 b8 c8 d4 e4
  c2 r4
  g'4
  e8 g e g e g e g
  f g f g
  f4 g a b
  c2~ c2\fermata r2 \bar "|."
}

chordNames =
\chordmode
{
  c2 a:m
  e1:m
  f1
  c2. c4:7
  f2 f2:m
  c2 a2:m
  d2:m g2
  c1
  c
  c
  d:m
  a:m
  d2:m g
  c1
  b:m e:m
  d2:m g
  c2 a:m
  e1:m
  f1
  c1
  f2 f2:m
  c2 a2:m
  d2:m g2
  c1
  c
  d:m g2 c


}



verse_one =
\lyricmode
{
  Some -- where o -- ver the rain -- bow, way up high
  there's a land that I heard of once in a lull -- a -- by
  \skip 1
  Some -- day I'll wish up -- on a star and
  wake up where the clouds are far be -- hind me
  Where trou -- bles melt like le -- mon drops
  a -- way a -- bove the chim -- ney tops
  that's where you'll find me.
  Some -- where ov -- er the rain -- bow,
  blue -- birds fly
  Birds fly ov -- er the rain -- bow. Why, then oh why can't I?
  If hap -- py lit -- tle blue -- birds fly be -- yond the rain -- bow
  why oh why can't I?
}

verse_two =
\lyricmode
{
  Some -- where o -- ver the rain -- bow, skies are blue
  and the dreams that you dare to dream real -- ly do come
  \skip 1
  true
}



\score
{
  <<
    \new ChordNames \chordNames
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" { \verse_one }
    \new Lyrics \lyricsto "one" { \verse_two }
  >>
  %\midi { \tempo 4 = 100 }
}
%\midi { \tempo 4 = 100 }


