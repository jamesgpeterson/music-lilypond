\version "2.18.2"

\header {
  title = "Morning Has Broken"
  composer = "Gaelic Melody"
  poet = "Eleanor Farjean"
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
  \repeat volta 2
  {
    \language "english"
    \key g \major
    \time 3/4
    g'4 b d
    g2.
    a2.
    fs4 e d
    e4. fs8 e4
    d r r | \break
    g, a b
    d2.
    e2.
    d4 b g
    a2.
    r2. | \break
    d4 b d
    g2.
    e2.
    d4 b g
    g4. e8 g4
    a2. | \break
    b4 a b
    d2.
    e2.
    a,4 b4. a8
    g2.
    r2. r2.
  }
}

chordNames =
\chordmode
{
  \skip 2.
  g a:m d c g
  g2. b:m e:m a2:sus4 a4 d2. d
  g2. c c g e:m a
  d g c d:7 g c g
}



verse_one =
\lyricmode
{
  Mor -- ning has bro -- ken, like the first mor - - ning
  Black -- bird has spok -- en, like the first bird.
  Praise for the sing -- ing Praise for the mor - - ning.
  Praise for them spring -- ing, fresh from the word.
}

verse_two =
\lyricmode
{
  Sweet the rain's new fall, sun -- lit from heav - - en.
  Like the first dew -- fall, on the irst grass.
  Praise for the sweet -- ness, of the wet gar - - den.
  Sprung in com -- plete -- ness, where his feet pass.
}

verse_three =
\lyricmode
{
  Mine is the sun -- light. Mine is the morn - - ing.
  Born of the one light, E -- den saw play.
  Praise with e -- la -- tion. Praise ev -- 'ry mor - - ing.
  God's rec -- re -- a -- tion, of the new day.
}


\score
{
  <<
    \new ChordNames \chordNames
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" { \verse_one }
    \new Lyrics \lyricsto "one" { \verse_two }
    \new Lyrics \lyricsto "one" { \verse_three }
  >>
}


