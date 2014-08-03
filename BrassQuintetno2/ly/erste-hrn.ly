\version "2.19.6"

\include "parts_def-nsz.ily"
\include "brassq-parts-settings.ily"

\include "mov1/rtmchs.ly"
\include "mov1/chmod.ly"
\include "mov1/bchbrb2.ly"
\include "mov1/still.ly"
\include "mov1/erstcoda.ly"

globSet = {
  \numericTimeSignature
  \tempo 4=66
}

\score {
  <<
    \new Devnull
    {
      \rtchGlobNot \chmodGlobNot \bcbrGlobNot
      \stlGlobNot \rtchGlobNot
      \ercdGlobNot
    }

    \new Staff \with {
      %instrumentName = "Horn in"
      midiInstrument = "french horn"
    } {
      \globSet
      \transpose f c' {
        \keepWithTag #'transp {
          \rtchHrn
          \chmodHrn
          \bcbrHrn
          \stlHrn
          \rtch-varHrn
          \ercdHrn
        }
      }
    }

  >>
  \midi {}
  \layout {}
}