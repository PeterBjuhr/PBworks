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
      instrumentName = "Piccolo trumpet in Bb"
      midiInstrument = "trumpet"
    } {
      \globSet
      \transpose bes c {
      \rtchTrpI
      \chmodTrpI
      \bcbrTrpI
      \stlTrpI
      \rtch-varTrpI
      \ercdTrpI
      }
    }

    \new Staff \with {
      instrumentName = "Trumpet (II) in C"
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
      instrumentName = "Horn in F"
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