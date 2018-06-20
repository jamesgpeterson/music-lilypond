%
% This is a version of harmonica.ly which doesn't do anything
% but has the same interface.
%

\version "2.19.81"

#(define hide_harmonica #f)

#(define-markup-command (harmonica-hole layout props hole) (string?)
  (interpret-markup layout props #{\markup {} #}))

#(define-markup-command (harmonica-stack layout props holes) (string?)
  (interpret-markup layout props #{\markup {} #}))

h = #(define-music-function (parser location holes note-event)
      (string? ly:music?)
  note-event)
