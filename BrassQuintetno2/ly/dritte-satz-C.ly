\version "2.19.6"

\include "score_def-12.ily"
\include "brassq-settings.ily"

\include "mov3/intro-sec.ly"
\include "mov3/charTime.ly"
\include "mov3/dorian.ly"
\include "mov3/mt2h.ly"
\include "mov3/ap-mel-arr.ly"
\include "mov3/dreicoda.ly"

globSet = {
  \numericTimeSignature
  \tempo 4=112
}

\score {
  <<
    \new Devnull
    {
      \inGlobNot
      \charTimeGlobNot
      \doriGlobNot
      \mtiiGlobNot
      \charTimeGlobNot \ap-melGlobNot
      \drcoGlobNot
    }

    \new Staff \with {
      instrumentName = "Trumpet I"
      midiInstrument = "trumpet"
    } {
      \globSet
      \inTrpI
      \chtmTrpI
      \doriTrpI
      \mtiiTrpI
      \chtmTrpI \ap-melTrpI
      \drcoTrpI
    }

    \new Staff \with {
      instrumentName = "Trumpet II"
      midiInstrument = "trumpet"
    } {
      \globSet
      \inTrpII
      \chtmTrpII
      \doriTrpII
      \mtiiTrpII
      \chtmTrpII \ap-melTrpII
      \drcoTrpII
    }

    \new Staff \with {
      instrumentName = "Horn"
      midiInstrument = "french horn"
    } {
      \globSet
      \keepWithTag #'c-score {
        \inHrn
        \chtmHrn
        \doriHrn
        \mtiiHrn
        \chtmHrn \ap-melHrn
        \drcoHrn
      }
    }

    \new Staff \with {
      instrumentName = "Trombone"
      midiInstrument = "trombone"
    } {
      \globSet \clef bass
      \inTbm
      \chtmTbm
      \doriTbm
      \mtiiTbm
      \chtmTbm \ap-melTbm
      \drcoTbm
    }

    \new Staff \with {
      instrumentName = "Tuba"
      midiInstrument = "tuba"
    } {
      \globSet \clef bass
      \inTba
      \chtmTba
      \doriTba
      \mtiiTba
      \chtmTba \ap-melTba
      \drcoTba
    }
  >>
  \midi {}
  \layout { ragged-last = ##t }
}