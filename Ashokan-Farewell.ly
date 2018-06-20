\version "2.19.81"

\include "no-harmonica.ly"

\language "english"

\header {
  title = "Ashokan Farewell"
  subtitle = "1983"
  composer = \markup \center-column { "Jay Ungar and Molly Mason" \vspace #2 } 
  tagline = ""
  instrument = ""
}

\paper {
  #(set-paper-size "letter")

  top-margin = 0.5 \in
  bottom-margin = 0.5 \in
  %left-margin = 0.5 \in
  %right-margin = 0.5 \in
  oddHeaderMarkup = \markup \small { "16-Hole Chromatic Harmonica (C)" }
  evenHeaderMarkup = \markup {}
  #(include-special-characters)
  % This is good at preventing over-full pages which
  % are then compressed and made ugly.
  % http://lilypond.1069038.n5.nabble.com/warning-compressing-over-full-page-by-12-4-staff-spaces-td168716.html
  % ragged-last-bottom = ##f
  % This is more manual but better still:
  max-systems-per-page = 4
}

global = {
  \time 3/4
  \key d \major
}

chordNames = \chordmode {
  d2. d/+fs g e:m
  d b:m g a:7
  a:7 d d d:7/+fs
  g d d b:m a
  a:7 d c g
  d d b:m a:7 d2
}

melody = \relative c'' {
  \global
  \textLengthOn
  
  % workarounds for the \rounded-box bug:
  % \override Score.SpacingSpanner.shortest-duration-space = #4.5
  \override TextScript.outside-staff-priority = ##f
  % \override TextScript #'outside-staff-padding = 0 
  
  \partial 4 \h "-3" a8 \h "+4*" cs
  \repeat volta 2
  {
    \h "-5" d4. \h "+4*" cs8 \h "-4" b \h "-3" a \h "-2*" fs2 \h "+2" e8 \h "-2*" fs
    \h "+3" g4. \h "-2*" fs8 \h "+2" e \h "-1" d \h "-4'" b4 \h "-1" d4. \h "-4'" b8 \break
    
    \revert TextScript.outside-staff-priority
    
    \h "-3'" a4 \h "-1" d \h "-2*" fs \h "-3" a \h "-5" d \h "-6*" fs
  }
  \alternative
  {
    { \h "-6*" fs4. \h "+7" g8 \h "-6*" fs4 \h "+6" e2 \h "-3" a,8 \h "+4*" cs \break }
    { \h "-3" a4 \h "+4*" cs \h "+6" e \h "-5" d2 \h "-2*" fs,8 \h "+3" g}
  }
  \bar "||"
  \h "-3" a4. \h "-2*" fs8 \h "-1" d4 \h "-5" d'2 \h "-3" a4 \break
  
  \h "-4" b4. \h "+4*" cs8 \h "-5" d4 |
  \h "-3" a8 \h "-2*" fs4. \h "+2" e4 |
  \h "-2*" fs4. \h "+2" e8 \h "-1" d4 |
  \h "-4'" b2 \h "+3'" g4 |
  \h "-3'" a2. | \break
  
  \h "-3" a'2 \h "-2*" fs8 \h "+2" e |
  \h "-1" d4 \h "-2*" fs \h "-3" a |
  \h "+4" c2. |
  \h "-4" b4. \h "+4*" cs8 \h "-5" d4 | \break
  
  \h "-3" a \h "-2*" fs \h "-1" d |
  \h "-3'" a \h "-1" d \h "-2*" fs |
  \h "-3" a \h "-5" d \h "-2*" fs, |
  
  \override TextScript.outside-staff-priority = ##f
  
  \h "+2" e4. \h "-1" d8 \h "+4'*" cs4 |
  \h "-1" d2
  \bar "|."
}


\score {
  <<
    \new ChordNames
    {
      \set chordChanges = ##f
      \set chordNameSeparator = \markup { "/" }
      \global
      \partial 4 s4
      \chordNames
    }
    \new Staff { \melody }
    \new Staff
    {
      \global
      \partial 4 r4
      \chordmode {
        \h "-1 -2* -3" d2.
        \h "-2'* -1 -2* -3" d/+fs
        \h "+3 -4 -5" g
        \h "+2 +3 -4" e:m
        \h "-1 -2* -3" d
        \h "-4 -5 -6*" b:m
        \h "+3 -4 -5" g
        \h "-3 +4* +6 +7" a:7
        \h "-3 +4* +6 +7" a:7
        \h "-1 -2* -3" d
        \h "-1 -2* -3" d
        \h "-2'* -1 -2* -3 +4" d:7/+fs
        \h "+3 -4 -5" g
        \h "-1 -2* -3" d
        \h "-1 -2* -3" d
        \h "-4 -5 -6*" b:m
        \h "-3 +4* +6" a
        \h "-3 +4* +6 +7" a:7
        \h "-1 -2* -3" d 
        \h "+1 +2 +3" c 
        \h "+3 -4 -5" g
        \h "-1 -2* -3" d 
        \h "-1 -2* -3" d
        \h "-4 -5 -6*" b:m
        \h "-3 +4* +6 +7" a:7
        \h "-1 -2* -3" d2
      }
    }
  >>
  \layout { 
  %  indent = #0
  }
  \midi { }
}
