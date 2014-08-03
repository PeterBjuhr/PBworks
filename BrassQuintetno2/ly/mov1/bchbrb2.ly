\version "2.19.6"


bcbrGlobNot = {
  %\tempo 4=66
  \time 2/2 s1*16
  \time 6/8 s2.*8
}

bcbrTrpI = \relative c''' {
  e16 \mf cis b dis cis b ais b g fis g fis dis8-_ cis(-- |
  d1)-- ~ |
  d2 r8 b dis a |
  cis2 ~ cis8 g' e' d |
  dis16 c ais cis c ais gis ais fis f fis f cis8-_ bis(-- |
  cis1)-- ~ |
  cis2 r8 ais cis gis |
  c2 ~ c8 fis dis' cis |
  % d16^"original" bes g bes c, g c bes a bes c r r4 |
  % bes'16^"rubber gnand" a d bes g bes c bes g c8 c16 r4
  bes16 a d bes g bes c bes g c c a f8-_ a(-- |
  a1)-- ~ |
  a2 r8 a(-- d-- a)-- |
  bes2 ~bes8 g( c) g-. |
  R1*4
  bes16 ges es ges as, es' as ges f ges as f |
  des8-_ f(-- f)-- ~ f4. |
  r8 f bes f4. |
  R2.
  bes16( \p a d bes g bes) c( bes g c c a) |
  f8-_ a(-- a)-- ~ a4. |
  r8 a( d) a4. |
  R2.
}

bcbrTrpII = \relative c'' {
  e8 \mf r cis r b r r b |
  b4 g8( ais) b4 g8( ais)
  b8 g16( ais) b8 g16( ais) b8 dis, b r |
  b'4 g8( a) b4 g8( a) |
  b8 r gis r fis r r fis |
  fis8 dis16( eis) fis8 dis16( eis) fis8 ais-_ fis ais-_ |
  fis8 dis16( eis) fis8 dis16( eis) fis8 ais-_ fis r |
  r8 dis'(-- gis-- dis)-- eis2 |
  a,8 r f r f r r f |
  f8 d16( e) f8 d16( e) f8 a-_ f a-_ |
  f8 d16( e) f8 d16( e) f8 a-_ f r |
  R1 |
  c'16 as f as bes, f' bes as g as bes g es8-_ g(-- |
  g1)-- ~ |
  g2 r8 g(-- c-- g)-- |
  as2 ~as8 f(-- bes-- f)-- |
  f4 r8 f(-- bes-- f)-- |
  ges4. es8(-. as-. es)-. |
  R2.
  ges4. es8(-. as-. es)-. |
  dis4 \p r8 dis gis dis |
  e4. cis8( fis) cis-. |
  R2.
  e4. cis8( fis) cis-. |
}

bcbrHrn = \relative c' {
  e8 \mf r cis r b r r b |
  e8 b16( cis) dis8 b16( e) dis8 g-_ e g-_ |
  d8 b16( cis) d8 b16( cis) d,8 g-_ d16 b'-. d, g-. |
  R1
  bes16 f' e f c e d e f c a c f c a'8 |
  dis,8 ais16( cis) dis8 ais16( cis) dis8 fis-_ dis fis-_ |
  dis8 ais16( cis) dis8 ais16( cis) dis8 fis-_ dis fis-_ |
  R1*2
  r8 f d16( e) f8 d16( e) f8 a-_ f |
  r8 f d16( e) f8 d16( e) f8 a-_ f |
  r8 bes, g16( a) bes8 g16( a) bes8 d-. bes |
  g8 r es r es' r r es |
  es8 c16( d) es8 c16( d) es8 g-_ es g-_ |
  es8 c16( d) es8 c16( d) es8 g-_ es r |
  R1 |
  f8 r des r des' r |
  des,8 bes16( c) des8 bes16( c) des8 f-. |
  des8 bes16( c) des8 bes16( c) des8 f-. |
  R2. |
  a8 \p r f r f r |
  f8 d16( e) f8 d16( e) f8 a-_ |
  f8 d16( e) f8 d16( e) f8 a-_ |
  R2. |
}

bcbrTbm = \relative c {
  r8 e \mf r fis r b,16 cis dis cis b ais |
  g16 ais b ais g16 ais b ais g fis g ais b cis b a |
  g16 a b a g16 a b a g fis g a b8(-- g)-- |
  fis2 r |
  ais8 r cis r r fis16 g a g fis e |
  ais8 fis16 gis ais8 fis16 cis dis8 fis dis fis |
  dis16 eis fis eis dis eis fis eis dis cis dis eis fis8 dis |
  dis1 |
  d2 r8 f(-- a-- f)-- |
  f2 r |
  R1*3
  r8 es c16( d) es8 c16( d) es8 g-_ es |
  r8 es c16( d) es8 c16( d) es8 g-_ es |
  r8 as, f16( g) as8 f16( g) as8 c-_ as |
  des bes16( c) des8 bes16( c) des8 f-_ |
  des bes16( c) des8 bes16( c) des8 f-_ |
  ges es16( f) ges8 es16( f) ges8 bes-_ |
  ges es16( f) ges8 es16( f) ges8 bes-_ |
  bes \p g16( a) bes8 g16( a) bes8 d-_ |
  bes g16( a) bes8 g16( a) bes8 d-_ |
  es, c16( d) es8 c16( d) es8 g-_ |
  es c16( d) es8 c16( d) es8 g-_ |
}

bcbrTba = \relative c, {
  e8 \mf r4 b8 dis e r g |
  e8 r4 b8 dis e r g |
  e8 r4 b8 cis e r d |
  cis8 r4 cis8-. r fis-. r d-. |
  dis8 r4 ais8 cis dis r fis |
  R1*2
  gis8 r r gis r ais r cis-. |
  d8 r r d r d r bes-. |
  d2 r8 a-. d( a) |
  d8 r r d r d r bes-. |
  g8 r r g r g r bes-. |
  c8 r r c r c r as-. |
  c2 r8 g-. c( g) |
  c8 r r c r c r as-. |
  f8 r r f r f r as-. |
  bes8 r bes r bes ges-. |
  bes4 r8 f-. bes( f) |
  bes8 r bes r bes ges-. |
  es8 r es r es ges-. |
  gis8 \p r gis r gis e-. |
  gis4 r8 dis-. gis( dis) |
  gis8 r gis r gis e-. |
  cis8 r cis r cis e-. |
}
