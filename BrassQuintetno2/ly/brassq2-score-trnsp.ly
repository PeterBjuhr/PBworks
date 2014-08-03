\version "2.19.6"

\include "copyrights.ily"
\include "titles-func.ily"

\header {
  instrument = "Transposed score"
  title = "Brass Quintet No. 2"
  subtitle = "subtitle perhaps?"
  composer = \pby
  copyright = \copyrARR
}

\markup \movtext "1. Rubber Gnand"
\include "erste-satz.ly"
\pageBreak
\markup \movtext "2. B(l)ack to Green"
\include "zweite-satz.ly"
\pageBreak
\markup \movtext "3. circles and squares"
\include "dritte-satz.ly"