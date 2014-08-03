\version "2.19.6"

\include "score_def-12.ily"
\include "brassq-settings.ily"

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
      \stlGlobNot \rtch-varGlobNot
      \ercdGlobNot
    }

    \new Staff \with {
      instrumentName = "Trumpet I"
      midiInstrument = "trumpet"
    } {
      \globSet
      \rtchTrpI
      \chmodTrpI
      \bcbrTrpI
      \stlTrpI
      \rtch-varTrpI
      \ercdTrpI
    }

    \new Staff \with {
      instrumentName = "Trumpet II"
      midiInstrument = "trumpet"
    } {
      \globSet
      \rtchTrpII
      \chmodTrpII
      \bcbrTrpII
      \stlTrpII
      \rtch-varTrpII
      \ercdTrpII
    }

    \new Staff \with {
      instrumentName = "Horn"
      midiInstrument = "french horn"
    } {
      \globSet
      \keepWithTag #'c-score {
        \rtchHrn
        \chmodHrn
        \bcbrHrn
        \stlHrn
        \rtch-varHrn
        \ercdHrn
      }
    }

    \new Staff \with {
      instrumentName = "Trombone"
      midiInstrument = "trombone"
    } {
      \globSet \clef bass
      \rtchTbm
      \chmodTbm
      \bcbrTbm
      \stlTbm
      \rtch-varTbm
      \ercdTbm
    }

    \new Staff \with {
      instrumentName = "Tuba"
      midiInstrument = "tuba"
    } {
      \globSet \clef bass
      \rtchTba
      \chmodTba
      \bcbrTba
      \stlTba
      \rtch-varTba
      \ercdTba
    }
  >>
  \midi {}
  \layout {}
}