\version "2.19.6"

\include "parts_def-nsz.ily"
\include "brassq-parts-settings.ily"

\include "mov3/intro.ly"
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
  >>
  \midi {}
  \layout { ragged-last = ##t }
}