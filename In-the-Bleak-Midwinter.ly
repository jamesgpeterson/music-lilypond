\version "2.18.2"

\header {
  title = "In The Bleak Midwinter"
  composer = "Gustov Holst"
}


\paper {
  system-system-spacing =
  #'((basic-distance . 28) 	% space between lines
      (minimum-distance . 8)
      (padding . 1)
      (stretchability . 60))
}


melody =
\relative c'
{
    \language "english"
    \key c \major
    \time 4/4
    e4.\( f8\) g4 e
    d2 c4 r
    d4.\( e8\) d4 a
    d2. r4 \break
    e4. f8 g4 e4
    d2 c4 r
    d e d4. c8
    c2. r4 \break
    f4. e8 f4 g
    a\( a\) e r
    g\( e\) d\( c\)
    b2. r4 \break
    e4.\( f8\) g4 e
    d2 c4 r
    d4.\( e8\) d4.\( c8\)
    c2. r4
    
}

chordNames =
\chordmode
{
  c1 a:m f g
  c a:m f2 g c1
  d:m a:m c2 f2 g1
  c a:m f2 g c
}



verse_one =
\lyricmode
{
  In the bleak mid -- win -- ter frost -- y wind made moan.
  Earth stood hard as i -- ron, wa -- ter like a stone.
  Snow had fall -- en, snow on snow, snow _ on _ snow.
  In the bleak mid -- win -- ter long _ long a -- go.
}

verse_two =
\lyricmode
{
  God - heaven can't hold him. Nor - Earth sus -- tain.
  Heaven and Earth shall flee away, when He comes to reign.
  In the bleak mid -- win -- _ ter, a-sta -- ble place suf -- ficed.
  The Lord God al -- might -- y, Je - sus _ christ.
}

verse_three =
\lyricmode
{
  An -- gels and arch -- an -- gels, may have gath -- ered there.
  Cher -- u -- bim and sera -- phim, throng -- ed the _ air.
  But his moth -- er on -- _ ly, in her maid -- en bliss,
  wor -- shipped the be -- lov -- ed with _ a _ kiss.
}

verse_four =
\lyricmode
{
  What _ can I give him, poor _ as I am?
  If I were a shep -- herd, I would bring a lamb.
  If I were a wise _ man, I would do my part.
  What _ can I give him, give _ my _ heart.
}


\score
{
  <<
    \new ChordNames \chordNames
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" { \verse_one }
    \new Lyrics \lyricsto "one" { \verse_two }
    \new Lyrics \lyricsto "one" { \verse_three }
    \new Lyrics \lyricsto "one" { \verse_four }
  >>
}


