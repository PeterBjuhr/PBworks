\version "2.19.6"

\include "score_def-12.ily"
\include "brassq-settings.ily"

\include "mov2/seq.ly"
\include "mov2/intermz.ly"
\include "mov2/minime.ly"
\include "mov2/intermz-aftr.ly"
\include "mov2/link-chords.ly"
\include "mov2/minime-coda.ly"

globSet = {
  \numericTimeSignature
  \tempo 8=252
}

\score {
  <<
    \new Devnull
    {
      \seqGlobNot
      \itmzGlobNot
      \miniGlobNot
      \imzaGlobNot
      \lncGlobNot \codaGlobNot
    }

    \new Staff \with {
      instrumentName = "Trumpet I in C"
      midiInstrument = "trumpet"
    } {
      \globSet
      \seqTrpI
      \itmzTrpI
      \miniTrpI
      \imzaTrpI
      \lncTrpI \codaTrpI
    }

    \new Staff \with {
      instrumentName = "Trumpet II in C"
      midiInstrument = "trumpet"
    } {
      \globSet
      \seqTrpII
      \itmzTrpII
      \miniTrpII
      \imzaTrpII
      \lncTrpII \codaTrpII
    }

    \new Staff \with {
      instrumentName = "Horn in F"
      midiInstrument = "french horn"
    } {
      \globSet
      \transpose f c' {
        \keepWithTag #'transp {
          \seqHrn
          \itmzHrn
          \miniHrn
          \imzaHrn
          \lncHrn \codaHrn
        }
      }
    }

    \new Staff \with {
      instrumentName = "Trombone"
      midiInstrument = "trombone"
    } {
      \globSet \clef bass
      \seqTbm
      \itmzTbm
      \miniTrb
      \imzaTbm
      \lncTbn \codaTrb
    }

    \new Staff \with {
      instrumentName = "Tuba"
      midiInstrument = "tuba"
    } {
      \globSet \clef bass
      \seqTba
      \itmzTba
      \miniTba
      \imzaTba
      \lncTba \codaTba
    }
  >>
  \midi {}
  \layout {}
}