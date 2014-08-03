\version "2.19.6"


chmodGlobNot = {
  %\tempo 4=66
  \mark \default
  \time 5/4 s4*5*8
  \mark \default
  \time 11/8
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'(6 5)
  s8*11*8
  \mark \default
  \time 3/2 s1.*8
  \mark \default
  \time 12/8 s1.*8
  \mark \default
  \time 6/4 s1.*8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% piccolo trumpet
%%%%%%%%%%%%%%%%%%%%%%%%%%%

hpmTrpI = \relative c'' {
  fis1. \p ~ |
  fis2 g1 ~ |
  g2 fis1 \trill ~ |
  fis1. |
  a1. ~ |
  a2 bes1 ~ |
  bes2 a1 \trill ~ |
  a1. |
}

mptTrpI = \relative c''' {
  g2. f4. ~ f8 fis4 ~ |
  fis4. bes4. ~ bes2. |
  g2. f4. ~ f8 fis4 ~ |
  fis4. bes4. ~ bes2. |
  as2. fis4. ~ fis8 g4 ~ |
  g4. b4. ~ b2. |
  as2. fis4. ~ fis8 g4 ~ |
  g4. b4. ~ b2. |
}

athTrpI = { R4*5*8 }

thaTrpI = { R1.*8 }

pmaTrpI = \relative c''' {
  b8 \mf cis dis e4. \grace { dis16( e } f4 ) bes,8 a g |
  b8 cis dis e dis e
  \tuplet 6/5 { b8 cis dis e dis e } |
  b8 cis dis e dis e
  b16 cis dis e dis e
  \tuplet 6/4 { b16 cis dis e dis e } |
  r2. \grace { dis16( e } f4) bes,8 a g |
  % bes'16^"rubber gnand" a d bes g bes c bes g c8 c16 r4
  bes16 a dis bes g b cis bes g cis cis4. r8 r4 |
  bes4.( a4.) r4 a8 dis bes ~ |
  bes2. r4 g8 f g |
  \tuplet 11/6 { b8 cis dis e dis e f bes, a g bes }
  \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 11/6 { b16 cis dis e dis e f bes, a g bes }
  \tuplet 11/8 { b32( cis dis e dis e f bes, a g bes) }
  \revert TupletNumber.text
}

chmodTrpI = { \athTrpI \pmaTrpI \hpmTrpI \mptTrpI \thaTrpI }

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% trumpet
%%%%%%%%%%%%%%%%%%%%%%%%%%%

hpmTrpII = {
  R1.*8
}

mptTrpII = \relative c'' {
  cis2.-- \p b4.-- ~ b8 c4-- ~ |
  c4. e4.-- ~ e2. |
  cis2.^\markup { \italic sim. } b4. ~ b8 c4 ~ |
  c4. e4. ~ e2. |
  d2. c4. ~ c8 cis4 ~ |
  cis4. f4. ~ f2. |
  d2. c4. ~ c8 cis4 ~ |
  cis4. f4. ~ f2. |
}

athTrpII = \relative c' {
  c2. \p d2 |
  e4 fis4 ~ fis2. |
  as2. bes2 ~ |
  bes2. as2 |
  c2. d2 |
  e4 fis4 ~ fis2. |
  as,2. bes2 ~ |
  bes2. as2 |
}

thaTrpII = \relative c' {
  e8. \mf f16 a8. bes16 b dis a g bes8-_
  bes16 b dis a g bes g4-_ |
  \tuplet 6/4 {bes8 b dis a g bes } g4
  bes-- b-- dis-- |
  a2 g4-.
  \tuplet 11/6 { b8 dis f a, b bes dis a e dis e } |
  r4 a4. b8-. \grace { f16( g }
  \tuplet 7/6 { f8) e f g a bes b } |
  bes,8. b16 dis8. e16 f a dis cis e8-_
  e16 f a, dis cis e cis4-_ |
  \tuplet 6/4 {e,8 f a dis cis e } cis4
  e-- f-- a,-- |
  dis,2 cis4-.
  \tuplet 11/6 { f8-_ a-_ b-_ dis,-_ f-_ e-_ a-_ dis-_ bes-_ a-_ bes-_ } |
  r4 dis4. eis8-. \grace { b16( cis }
  \tuplet 7/6 { b8) bes b cis dis e f } |
}

pmaTrpII = { R8*11*8 }

chmodTrpII = {  \athTrpII \pmaTrpII \hpmTrpII \mptTrpII \thaTrpII }

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% horn
%%%%%%%%%%%%%%%%%%%%%%%%%%%

hpmHrn = \relative c' {
  r16 g \mf bes d \tuplet 3/2 { e16( b) dis ~ } dis8
  fis,32( a) cis16 f32( as) c16 \tuplet 3/2 { c8 as f }
  \tuplet 6/4 { cis16 a fis' dis b e } d4 ~ |
  d4 \tuplet 6/4 { bes16( g) b( f) bes as-. }
  r8 b-. b-. b-.
  g'2 |
  r8 g, \tag #'c-score { \clef bass }
  \tag #'transp { \clef bass }
  bes, d
  \tuplet 5/4 {
    e8 b-- dis--
    \tag #'transp { \clef treble }
    fis-- a--
  }
  \tag #'c-score { \clef treble }
  \tuplet 3/2 { cis8-- fis-- as-- } c4 |
  r4 \tuplet 6/4 { g16 e c bes dis b }
  r8 as-- f-- cis--
  a'2 |
  fis16( d) g8 bes16( d) e8
  r4 \tuplet 5/4 { b16 dis fis a cis }
  r8 f,(-- as-- c)-- |
  r2
  d,4. fis16 a
  \tuplet 5/4 { cis8 f, as b dis } |
  bes4 c,-- e4-- g,--
  r2 |
  r16 g bes d \tuplet 3/2 { e16 b dis ~ } dis8
  fis8 a, cis f
  as8.-- c16-- ~ c4 |
}

mptHrn = { R1.*8 }

athHrn = \relative c {
  d2. \p e2 |
  fis4 gis4 ~ gis2. |
  bes2. c2 ~ |
  c2. bes2 |
  \tag #'c-score { \clef treble }
  d2. e2 |
  fis4 gis4 ~ gis2. |
  bes,2. c2 ~ |
  c2. bes2 |
}

thaHrn = \relative c {
  \tag #'c-score { \clef bass }
  \tag #'transp { \clef bass }
  gis4 \p g
  \tag #'c-score { \clef treble }
  \tag #'transp { \clef treble }
  cis' ~ cis2. |
  e2 gis4 g f c' |
  cis4 c gis ~ gis2. |
  dis2. a2. |
  d4 cis g ~ g2. |
  bes2 d4 cis b fis' |
  g4 fis d ~ d2. |
  a2.( dis,2.) |
}

pmaHrn = { R8*11*8 }

chmodHrn = { \athHrn \pmaHrn \hpmHrn \mptHrn \thaHrn }

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% trombone
%%%%%%%%%%%%%%%%%%%%%%%%%%%

hpmTbm = \relative c' {
  f1. \p ~ |
  f2 ges1 ~ |
  ges2 f1 \trill ~ |
  f1. |
  as1. ~ |
  as2 a1 ~ |
  a2 as1 \trill ~ |
  as1. |
}

mptTbm = \relative c' {
  b4. \mf ~ b8 c cis e4 f!16( fis) g,8 bes4 |
  g4. \tuplet 5/3 { cis8 e f fis bes, } c2. |
  \clef bass
  cis,4. \tuplet 5/3 { g8 bes b c e, }
  \tuplet 6/4 { g16 b bes c e cis } fis8 ~ fis4. |
  \tuplet 7/6 { g,16 b bes c e cis fis } bes4. r2. |
  f4. ~ f8 fis g bes4 b16( c) cis,8 e4 |
  cis4. \tuplet 5/3 { g8 bes b c e, } fis2. |
  g4. \tuplet 5/3 { cis8 e f fis bes, }
  \tuplet 6/4 { cis16 f e fis bes g } c8 ~ c4. |
  \tuplet 7/6 { cis,16 f e fis bes g c } e4. r2. |
}

athTbm = { R4*5*8 }

thaTbm = { R1.*8 }

pmaTbm = \relative c' {
  \clef tenor
  b2. \p ( c4.) d4-. |
  e2.( d4.) c8.-. b16 |
  c2.( d4.) e4-. |
  e2( d4) c4 b8-. bes4 |
  b2.( c4.) d4-. |
  e2.( d4.) c8.-. b16 |
  c2.( d4.) e4-. |
  e2( d4 c4) b8-. bes4 |
}

chmodTbm = { \athTbm \pmaTbm \hpmTbm \mptTbm \thaTbm }

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tuba
%%%%%%%%%%%%%%%%%%%%%%%%%%%

hpmTba =  {
  R1.*8
}

mptTba =  {
  R1.*8
}

athTba = \relative c {
  r8 cis \mf es f g a b-. bes4. |
  f16 cis g b a2 cis4. es8 |
  es'8. cis16 f8. es16 g4( a,) r |
  a8. g16 es8. f16 cis4( es2) |
  r8 b cis es f g a-. as4. |
  es16 b f a g2 b4. cis8 |
  cis'8. b16 es8. cis16 f4( g2) |
  g16-. g,,-. g''-. f,,-. g''-. cis,,-. g''8-.
  \tuplet 6/4 { g16-. g,,-. g''-. f,,-. g''-. cis,,-. } g''8-.
  r8 es-. b,-. |
}

thaTba = \relative c, {
  e4 \p dis a' ~ a2. |
  c2 e4 dis cis gis'-_ |
  a4-- gis e ~ e2. |
  b2. f2. |
  bes4 a dis ~ dis2. |
  fis2 bes4 a g d'-_ |
  dis4-- d bes ~ bes2. |
  f2.( b,2.) |
}

pmaTba = \relative c, {
  gis2. \p a4. b4-. |
  cis2. b4.-. a8.-. gis16 |
  a2. b4. cis4-. |
  cis2 b4 a4 gis8-. g4 |
  gis2. a4. b4-. |
  cis2. b4. a8.-. gis16 |
  a2. b4. cis4-. |
  cis2 b4 a4 gis8-. g4 |
}

chmodTba = { \athTba \pmaTba \hpmTba \mptTba \thaTba }
