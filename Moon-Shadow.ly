\version "2.18.2"

\header {
  title = "Moon Shadow"
  composer = "Cat Stevens"
  %poet = ""
}


\paper
{
  system-system-spacing =
    #'((basic-distance . 26) 	% space between lines
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60)) 
}


chorus =
\relative c'
{
  %\repeat volta 2
  {
    \language "english"
    \key g \major
    \time 4/4
    
    \mark "refrain (repeat after verse 2)"
    \partial 8 d8
    a'4 a8 a8 a8 a8 g8 fs8
    g2 fs8 d8( d4)
    d'4. b4 a8 g4
    fs8 d8( d2.)
    a'8 a a a ~ a a g fs
    g2 fs8 d4.
    d'4. b4 a8 g4
    fs8 d4( d4.) d8
  }
  
  \mark verse
  \repeat volta 2
  {
    c4 c c c
  }
}

melody =
\relative c'
{
  %\repeat volta 2
  {
    \language "english"
    \key g \major
    \time 4/4
    
    \partial 8 d8
    a'4 a8 a8 a8 a8 g8 fs8
    g2 fs8 d8( d4)
    d'4. b4 a8 g4
    fs8 d8( d2.)
    a'8 a a a ~ a a g fs
    g2 fs8 d4.
    d'4. b4 a8 g4
    fs8 d8( d2.)
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
  Oh, I'm be -- ing fol -- lowed by a moon  sha -- dow, moon  sha -- dow, moon  sha -- dow
  Leap -- in and hop -- in' on a moon shad -- ow, moon shad -- dow, moon sha -- dow

}

verse_two =
\lyricmode
{
  Sweet the rain's new fall, sun -- lit from heav - - en.
  Like the first dew -- fall, on the first grass.
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
    %\new ChordNames \chordNames
    \new Voice = "one" { \chorus }
    \new Lyrics \lyricsto "one" { \verse_one }
    %\new Lyrics \lyricsto "one" { \verse_two }
    %\new Lyrics \lyricsto "one" { \verse_three }
  >>
}


