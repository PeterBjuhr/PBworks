\version "2.19.6"

\include "copyrights.ily"
\include "titles-func.ily"

\header {
  instrument = "Score in C"
  title = "Brass Quintet No. 2"
  %subtitle = "subtitle perhaps?"
  composer = \pby
  copyright = \copyrARR
}

\markup \vspace #19
\markup \movtext "1. Rubber Gnand"
\include "erste-satz-C.ly"
\pageBreak
\markup \movtext "2. B(l)ack to Green"
\include "zweite-satz-C.ly"
\pageBreak
\markup \movtext "3. circles and squares"
\include "dritte-satz-C.ly"