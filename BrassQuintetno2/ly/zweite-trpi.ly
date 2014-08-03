\version "2.19.6"

\include "parts_def-nsz.ily"
\include "brassq-parts-settings.ily"

\include "mov2/seq.ly"
\include "mov2/intermz.ly"
\include "mov2/minime.ly"
\include "mov2/intermz-aftr.ly"
\include "mov2/link-chords.ly"
\include "mov2/minime-coda.ly"

globSet = {
  \numericTimeSignature
  \tempo \markup { \note #"4" #1 "= 126 " } 8=252
}

globDyn = {
  \seqGD \itmzGD \miniGD
  \imzaGD \lncGD \codaGD
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
      %instrumentName = "Trumpet I in C"
      midiInstrument = "trumpet"
    } \new Voice <<
      {
        \globSet
        \seqTrpI
        \itmzTrpI
        \miniTrpI
        \imzaTrpI
        \lncTrpI \codaTrpI
      } {
      \globDyn }
    >>
  >>
  \midi {}
  \layout {}
}