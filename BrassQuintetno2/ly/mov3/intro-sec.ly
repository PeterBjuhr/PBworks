\version "2.19.6"


inGlobNot = {
  %\tempo 4=112
  \time 4/4 s1*16
}

inTrpI = \relative c'' {
  %\repeat unfold 16 { g16 }
  d2:16 \p d2:16
  d2:16 d2:16
  r8 d4:32^"flz." \< r8 \! d2:16 \p |
  d2:16 d2:16
  d2:16 d2:16
  d8-. r r4 \tuplet 3/2 { b16 b b }
  d16 d d4:16 |
  d8-. r d4:32^"flz." ~ \< d:32 \! r8  d-. \p |
  d2:16 d4:16 r8. d16
  %
  d2:16 \mp d2:16
  d2:16 d2:16
  r8 d4:32^"flz." \< r8 \! d2:16 \mp |
  d2:16 d2:16
  \tuplet 7/6 { d16 d d d d d d } d d d2:16
  d8-. r r4 \tuplet 3/2 { b16 b b }
  d16 d d4:16 |
  d2:16 \< d:16
  d:32^"flz." d8-. \f r4. |
}

inTrpII = \relative c'' {
  d2:16 \p d2:16
  d2:16 d2:16
  d16 d r8 d4:32^"flz." \< r8 \! d16 \p d d4:16 |
  d2:16 d2:16
  d8-. r r4 \tuplet 3/2 { b16 b b }
  d16 d d4:16 |
  d8-. r d4:32^"flz." ~ \< d:32 \! r8  d-. \p |
  d2:16 d2:16
  d2:16 d16 r8. d4:16
  %
  d2:16 \mp d2:16
  d2:16 d2:16
  d16 d r8 d4:32^"flz." \< r8 \! d16 \mp d d4:16 |
  d2:16 d2:16
  d8-. r r4 \tuplet 3/2 { b16 b b }
  d16 d d4:16 |
  d8-. r d4:32^"flz." ~ \< d:32 \! r8  d-. \mp |
  d2:16 \< d:16
  d:32^"flz." d8-. \f r4. |
}

inHrn = \relative c'' {
  g2:16 \p g2:16
  g2:16 g2:16
  g4:16 g16 g
  b,8-. r b-. r g'16 g |
  g8-. r r4 \tuplet 3/2 { b,16 b b }
  g'16 g g4:16 |
  g8-. r g4:32^"flz." ~ \< g:32 \! r8  g-. \p |
  r8 d4:32^"flz." \< r8 \! d2:16 \p |
  g2:16 g2:16
  g4:16 g16 g r8 r16 g g g g4:16
  %
  g2:16 \mp g2:16
  g2:16 g2:16
  g4:16 g16 g
  b,8-. r b-. r g'16 g |
  g8-. r r4 \tuplet 3/2 { b,16 b b }
  g'16 g g4:16 |
  g8-. r g4:32^"flz." ~ \< g:32 \! r8  g-. \mp |
  r8 d4:32^"flz." \< r8 \! d2:16 \mp |
  d2:16 \< d:16
  d:32^"flz." d8-. \f r4. |
}

inTbm = \relative c' {
  g2:16 \p g2:16
  g2:16 g2:16
  g8-. r r4 \tuplet 3/2 { b16 b b }
  g16 g g4:16 |
  g8-. r g4:32^"flz." ~ \< g:32 \! r8  g-. \p |
  r8 d4:32^"flz." \< r8 \! d2:16 \p |
  g2:16 g2:16
  g8-. r g4:32^"flz." \< g8-. \p r g4:32^"flz." \< |
  g16 \p g g r r8 g16 g16 g2:16
  %
  g2:16 \mp g2:16
  g2:16 g2:16
  g8-. r r4 \tuplet 3/2 { b16 b b }
  g16 g g4:16 |
  g8-. r g4:32^"flz." ~ \< g:32 \! r8  g-. \mp |
  r8 d4:32^"flz." \< r8 \! d2:16 \mp |
  \repeat unfold 4 { d16 d r8 }
  d2:16 \< d:16
  d:32^"flz." d8-. \f r4. |
}

inTba = \relative c' {
  g2:16 \p g2:16
  g8-. r r4 \tuplet 3/2 { b,16 b b }
  g'16 g g4:16 |
  g8-. r g4:32^"flz." ~ \< g:32 \! r8  g-. \p |
  g2:16 g:16 |
  d16 d r8 d4:32^"flz." \< r8 \! d16 \p d d4:16 |
  g8-. r g4:32^"flz." \< g8-. \p r g4:32 \<
  g2:16 \p g:16
  r8. \! g16 \p g4:16 g2:16
  %
  g2:16 \mp g2:16
  g8-. r r4 \tuplet 3/2 { b,16 b b }
  g'16 g g4:16 |
  g8-. r g4:32^"flz." ~ \< g:32 \! r8  g-. \mp |
  g2:16 g:16 |
  d16 d r8 d4:32^"flz." \< r8 \! d16 \mp d d4:16 |
  \repeat unfold 4 { r8 d16 d }
  d2:16 \< d:16
  d:32^"flz." d8-. \f r4. |
}

%{ 
\score {
  <<
    \new Devnull
    {
      \inGlobNot
    }

    \new Staff \with {
      instrumentName = "Trumpet 1"
      midiInstrument = "trumpet"
    } { \inTrpI }

    \new Staff \with {
      instrumentName = "Trumpet 2"
      midiInstrument = "trumpet"
    } { \inTrpII }

    \new Staff \with {
      instrumentName = "Horn"
      midiInstrument = "french horn"
    } { \inHrn }

    \new Staff \with {
      instrumentName = "Trombone"
      midiInstrument = "trombone"
    } { \clef bass \inTbm }

    \new Staff \with {
      instrumentName = "Tuba"
      midiInstrument = "tuba"
    } { \clef bass \inTba  }
  >>
  \midi {}
  \layout {}
} 
%}