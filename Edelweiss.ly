\version "2.18.2"

\header {
  title = "Edelweiss"
  composer = "Richard Rodgers"
  poet = "Oscar Hammerstein II"
}


\paper
{
  system-system-spacing =
    #'((basic-distance . 19) 	% space between lines
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60)) 
}


melody =
\relative c'
{
  {
    \language "english"
    \key c \major
    \time 3/4
    e2 g4
    d'2.
    c2 g4
    f2. | \break
    e2 e4
    e4 f4 g4
    a2.
    g2. | \break
    e2 g4
    d'2.
    c2 g4
    f2. | \break
    e2 g4
    g4 a4 b4
    c2.
    c2. | \break
    d4~ d4 g,4
    b4( a4) g4
    e2 g4
    c2. | \break
    a2 c4
    d2 c4
    b2 g4
    f2. | \break
    e2 g4
    d'2.
    c2 g4
    f2. | \break
    g2 g4
    g4 a4 b4
    c2.
    c2. | \break
  }
}

chordNames =
\chordmode
{
  c2. g c f
  c a:m d:m7 g:7
  c g c f
  c g:7 c c
  g g c c
  f d:7 g g:7
  c g c f
  c g:7 c c
}



verse_one =
\lyricmode
{
  E -- del -- weiss, E -- del -- weiss.
  E -- very mor -- ning you greet me.
  Small and white. Clean and bright
  You look hap -- py to meet me.
  Blos-som of sn-ow you bloom and grow,
  bloom and grow, for -- e e -- ver.
  E -- del -- weiss, e -- del -- weiss.
  Bless my home land for -- e -- ver.
}



\score
{
  <<
    \new ChordNames \chordNames
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" { \verse_one }
  >>
}


