\version "2.19.6"


rtchGlobNot = {
  %\tempo 4=66
  \time 4/4 s1*11
  \time 5/8 s8*5*2
  \time 3/8 s4.*3
  \mark \default
  \time 4/4 s1*8
}

rtch-varGlobNot = {
  %\tempo 4=66
  \mark \default
  \time 4/4 s1*11
  \time 5/8 s8*5*2
  \time 3/8 s4.*3
  \mark \default
  \time 2/2 s1*8
}

rtchTrpI = \relative c''' {
  g2.^\markup { \box { \small { "piccolo trumpet in Bb" } } }
  \f
  r4 |
  g4 r r8 g-. g-. g-. |
  g2. es8-. \> b-. |
  as4 \mp r r8 as-. as-. as-. |
  g'2. \f es8-. \> b-. |
  as4 \mp r r8 as-. as-. as-. |
  b4 \< r b8-. b-. r4 |
  b16( c) r8 e16 r8 f16 r8 r16 fis16 fis8 r |
  g2 \f g4-. r |
  g2 g4-. r8 \tuplet 3/2 { r16 g'-- r } |
  g,2 g4-. r8 \tuplet 3/2 { r16 g'-- r } |
  b,16 \> ( c) r8 e16 r8 b16 r8 |
  b16( a) r8 g16 r8 fis16 r8 |
  r16 fis16 fis8 r |
  r16 es16 es8 r |
  r16 cis16 cis8 r |
  cis4 \pp r r8 cis(-- cis-- cis)-- |
  gis4 r r8 gis(-- gis-- gis)-- |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 g(-- g-- g)-- |
  g16( a \tuplet 3/2 { ais16 b ais } a16 g) r8 r
  g16( a \tuplet 3/2 { ais16 b ais } a16 g) |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 es'(-- es-- es)-- |
}

rtch-varTrpI = \relative c''' {
  g2. \f r4 |
  as,4 \mp r r8 as-. as-. as-. |
  g'2. \f es8-. \> b-. |
  as4 \mp r r8 as-. as-. as-. |
  g'2. \f es8-. \> b-. |
  as4 \mp r r8 as-. as-. as-. |
  b4 \< r b8 b r4 |
  b16 ( c) r8 e16 r8 f16 r8 r16 fis16 fis8 r |
  g2 \f g4-. r |
  g2 g4-. r8 \tuplet 3/2 { r16 g'-- r } |
  g,2 g4-. r8 \tuplet 3/2 { r16 g'-- r } |
  b,16 \> ( c) r8 e16 r8 b16 r8 |
  b16( a) r8 g16 r8 fis16 r8 |
  r16 fis16 fis8 r |
  r16 es16 es8 r |
  r16 cis16 cis8 r \pp |
  g2 \mf g4-. r |
  g2 g4-. r8 \tuplet 3/2 { g16 g g } |
  g2 g4-. r8 \tuplet 3/2 { g16 g g } |
  b4 \> r8 b a4 \mp r |
  a-- \< a-- bes-- a-- |
  \tuplet 3/2 { a(-- bes-- a)-- }
  g4-. r |
  g2 \mf g4-. r8 \tuplet 3/2 { g16 g g } |
  b4 \> r8 b bes4 \mp r |
}

rtchTrpII = \relative c'' {
  g2. \f r4 |
  g4 r r8 g-. g-. g-. |
  g2. r4 |
  g4 \mp r r8 g-. g-. g-. |
  g2. \f r4 |
  g4 \mp r r8 g-. g-. g-. |
  gis4 \< r gis8-. gis-. r4 |
  gis16 (-- gis)-- r8 gis16 r8 gis16 r8 r16 gis16 gis8 r |
  g2 \f g4-. r |
  g2 g4-. r8 \tuplet 3/2 { r8 g16-- } |
  g2 g4-. r8 \tuplet 3/2 { r8 g16-- } |
  gis16 \> (-- gis)-- r8 gis16 r8 gis16 r8 |
  gis16--( gis--) r8 gis16 r8 gis16 r8 |
  r16 gis16 gis8 r |
  r16 gis16 gis8 r |
  r16 gis16 gis8 r |
  % first ending
  cis,4 \pp r r8 cis(-- cis-- cis)-- |
  gis4 r r8 gis(-- gis-- gis)-- |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 g(-- g-- g)-- |
  g16( a \tuplet 3/2 { ais16 b ais } a16 g) r8 r
  g16( a \tuplet 3/2 { ais16 b ais } a16 g) |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 es'(-- es-- es)-- |
}

rtch-varTrpII = \relative c'' {
  g2. \f r4 |
  g4 \mp r r8 g-. g-. g-. |
  g2. \f r4 |
  g4 \mp r r8 g-. g-. g-. |
  g2. \f r4 |
  g4 \mp r r8 g-. g-. g-. |
  gis4 \< r gis8 gis r4 |
  gis16 (-- gis)-- r8 gis16 r8 gis16 r8 r16 gis16 gis8 r |
  g2 \f g4-. r |
  g2 g4-. r8 \tuplet 3/2 { r8 g16-- } |
  g2 g4-. r8 \tuplet 3/2 { r8 g16-- } |
  gis16 \> (-- gis)-- r8 gis16 r8 gis16 r8 |
  gis16(-- gis)-- r8 gis16 r8 gis16 r8 |
  r16 gis16 gis8 r |
  r16 gis16 gis8 r |
  r16 gis16 gis8 r \pp |
  g2 \mf g4-. r |
  g2 g4-. r8 \tuplet 3/2 { g16 g g } |
  g2 g4-. r8 \tuplet 3/2 { g16 g g } |
  d4 \> r8 d c4 \mp r |
  e-- \< fis-- f-- fis-- |
  \tuplet 3/2 { fis-- f-- fis-- }
  g4-. r |
  g2 \mf g4-. r8 \tuplet 3/2 { g16 g g } |
  d4 \> r8 d des4 \mp r |
}

rtchHrn = \relative c' {
  \tag #'c-score { \clef bass }
  g2. \f r4 |
  g4 r r8 g-. g-. g-. | |
  g2. cis8-. \> e-. |
  fis4 \mp r r8 fis-. fis-. f-. |
  g,2. \f cis8-. \> e-. |
  fis4 \mp r r8 fis-. fis-. f-. |
  c4 \< r c8-. c-. r4 |
  c16(-- c)-- r8 c16 r8 c16 r8 r16 c16 c8 r |
  g2 \f g4-. r |
  g2 g4-. r8
  \tag #'c-score { \clef treble }
  \tuplet 3/2 { g'16-- r g-- } |
  g2 g4 r8 \tuplet 3/2 { g16-- r g-- } |
  c16 \> (-- c)-- r8 c16 r8 c16 r8 |
  c16(-- c)-- r8 c16 r8 c16 r8 |
  r16 c16 c8 r |
  r16 c16 c8 r |
  r16 c16 c8 r |
  % first ending
  cis4 \pp r r8 cis(-- cis-- cis)-- |
  gis4 r r8 gis(-- gis-- gis)-- |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 g--( g-- g--) |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 g(-- g-- g)-- |
  g16( a \tuplet 3/2 { ais16 b ais } a16 g) r8 r
  g16( a \tuplet 3/2 { ais16 b ais } a16 g) |
  g4 r r8
  \tag #'c-score { \clef bass }
  es,(-- es-- es)-- |
}

rtch-varHrn = \relative c' {
  g2. \f r4 |
  f'4 \mp r r8 f-. f-. f-. |
  g,2. \f cis8-. \> e-. |
  fis4 \mp r r8 fis-. fis-. f-. |
  g,2. \f cis8-. \> e-. |
  fis4 \mp r r8 fis-. fis-. f-. |
  c4 \< r c8-. c-. r4 |
  c16 (-- c)-- r8 c16 r8 c16 r8 r16 c16 c8 r |
  g2 \f g4-. r |
  g2 g4-. r8 \tuplet 3/2 { g'16-- r g,-- } |
  g2 g4-. r8 \tuplet 3/2 { g16-- r g-- } |
  c16 \> (-- c)-- r8 c16 r8 c16 r8 |
  c16(-- c)-- r8 c16 r8 c16 r8 |
  r16 c16 c8 r |
  r16 c16 c8 r |
  r16 c16 c8 r \pp |
  g2 \mf g4-. r |
  g2 g4-. r8 \tuplet 3/2 { g16 g g } |
  g2 g4-. r8 \tuplet 3/2 { g16 g g } |
  g4 \> r8 g fis4 \mp r |
  c'-- \< es-- f-- e-- |
  \tuplet 3/2 { es-- f-- e-- }
  g,4-. r |
  g2 \mf g4-. r8 \tuplet 3/2 { g16 g g } |
  g4 \> r8 g g4 \mp r |
}

rtchTbm = \relative c {
  g2. \f r4 |
  g4 r r8 g-. g-. g-. |
  g2. bes'8-. \> des-.  |
  es4 \mp r r8 es-. es-. es-. |
  g,,2. \f bes'8-. \> des-.  |
  es4 \mp r r8 es-. es-. es-. |
  a,4 \< r a8-. a-. r4 |
  a!16( as) r8 d,16 r8 des16 r8 r16 bes16( a8) r |
  g2 \f g4-. r |
  g2 g4-. r8 \tuplet 3/2 { r16 g'-- r } |
  g,2 g4-. r8 \tuplet 3/2 { r16 g'-- r } |
  a,!16 \> ( as) r8 d16 r8 des16 r8 |
  a16( as) r8 d16 r8 des16 r8 |
  r16 bes16 a8 r |
  r16 bes16 a8 r |
  r16 bes16 a8 r |
  % first ending
  cis'4 \pp r r8 cis(-- cis-- cis)-- |
  gis4 r r8 gis(-- gis-- gis)-- |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 g(-- g-- g)-- |
  g16( a \tuplet 3/2 { ais16 b ais } a16 g) r8 r
  g16( a \tuplet 3/2 { ais16 b ais } a16 g) |
}

rtch-varTbm = \relative c {
  g2. \f r4 |
  es''4 \mp r r8 es-. es-. es-. |
  g,,2. \f bes'8-. \> des-.  |
  es4 \mp r r8 es-. es-. es-. |
  g,,2. \f bes'8-. \> des-.  |
  es4 \mp r r8 es-. es-. es-. |
  a,4 \< r a8-. a-. r4 |
  a!16 ( as) r8 d,16 r8 des16 r8 r16 bes16 a8 r |
  g2 \f g4-. r |
  g2 g4-. r8 \tuplet 3/2 { r16 g'-- r } |
  g,2 g4-. r8 \tuplet 3/2 { r16 g'-- r } |
  a,!16 \> ( as) r8 d16 r8 des16 r8 |
  a16( as) r8 d16 r8 des16 r8 |
  r16 bes16 a8 r |
  r16 bes16 a8 r |
  r16 bes16 a8 r \pp |
  g2 \mf g4-. r |
  g2 g4-. r8 \tuplet 3/2 { g16 g g } |
  g2 g4-. r8 \tuplet 3/2 { g16 g g } |
  g4 \> r8 g d'4 \mp r |
  d-- \< c-- b-- b-- |
  \tuplet 3/2 { c-- b-- b-- }
  g4-. r |
  g2 \mf g4 r8 \tuplet 3/2 { g16 g g } |
  g4 \> r8 g es'4 \mp r |
}

rtchTba = \relative c, {
  g2. \f r4 |
  g4 r r8 g-. g-. g-. |
  g2. as'8-. \> b'-. |
  d4 \mp r r8 d-. d-. d-. |
  g,,,2. \f as'8-. \> b'-. |
  d4 \mp r r8 d-. d-. d-. |
  bes,,4 \< r bes8-. bes-. r4 |
  bes16 bes r8 bes16 r8 bes16 r8 r16 bes16 bes8-. r |
  g2 \f g4-. r |
  g2 g4-. r8 \tuplet 3/2 { r8 g16 } |
  g2 g4-. r8 \tuplet 3/2 { r8 g16 } |
  bes16 \> bes r8 bes16 r8 bes16 r8 |
  bes16 bes r8 bes16 r8 bes16 r8 |
  r16 cis16 cis8-. r |
  r16 es16 es8 r |
  r16 fis16 fis8 r |
  % first ending
  cis''4 \pp r r8 cis(-- cis-- cis)-- |
  gis4 r r8 gis(-- gis-- gis)-- |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 g--( g-- g--) |
  g4 r r8 g(-- g-- g)-- |
  g4 r r8 g--( g-- g--) |
  g4 r r8 es--( es-- es--) |
}

rtch-varTba = \relative c, {
  g2. \f r4 |
  d'''4 \mp r r8 d-. d-. d-. |
  g,,,2. \f as'8-. \> b'-. |
  d4 \mp r r8 d-. d-. d-. |
  g,,,2. \f as'8-. \> b'-. |
  d4 \mp r r8 d-. d-. d-. |
  bes,,4 \< r bes8-. bes-. r4 |
  bes16 bes r8 bes16 r8 bes16 r8 r16 bes16 bes8-. r |
  g2 \f g4-. r |
  g2 g4-. r8 \tuplet 3/2 { r8 g16 } |
  g2 g4-. r8 \tuplet 3/2 { r8 g16 } |
  bes16 \> bes r8 bes16 r8 bes16 r8 |
  bes16 bes r8 bes16 r8 bes16 r8 |
  r16 cis16 cis8-. r |
  r16 es16 es8 r |
  r16 fis16 fis8 r \pp |
  g2 \mf g4-. r |
  g2 g4-. r8 \tuplet 3/2 { g16 g g } |
  g2 g4-. r8 \tuplet 3/2 { g16 g g } |
  g4 \> r8 g-. d'4 \mp r |
  d-- \< e-- b-- bes-- |
  \tuplet 3/2 { e-- b-- bes-- }
  g4-.  r |
  g2 \mf g4-. r8 \tuplet 3/2 { g16 g g } |
  g4 \> r8 g-. es'4 \mp r |
}
