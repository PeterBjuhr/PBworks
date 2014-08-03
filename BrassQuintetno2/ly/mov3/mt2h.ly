\version "2.19.6"


mtiiGlobNot = {
  %\tempo 4=112 
  \mark \default
  \time 3/2 s1.*8
  \mark \default
  \time 2/2 s1*8
  \mark \default
  \time 6/8 s2.*8
  \mark \default
  \time 9/4 s4*9*8
  \mark \default
  \time 3/2 s1.*8
}

%
% TrumpetI
%
tmaTrpI = \relative c'' {
  \tuplet 3/2 { r4 e, \mf a }  cis e a,
  cis2 c4 g
  e4 c' g e2. r2 cis'4 ~ |
  cis4 a4 e cis a( e') r2 e4 ~ e1. r2. |
  \tuplet 3/2 { a4 a g } \tuplet 3/2 { g fis fis }
  fis4 a ~ a2. |
  g8 g fis fis e e d d ~ d2 r4
  \tuplet 3/2 { e4--( e-- cis--) } |
  \tuplet 3/2 { cis a' a } a r
  a8 a fis fis d d d d
  b4 b b'2
  r2. \tuplet 7/6 { dis8 dis dis dis dis dis dis } |
}

phmTrpI = \relative c'' {
  R1.*8
}

atmTrpI = \relative c'' {
  R1.*8
}

hptTrpI = \relative c'' {
  d4( fis d | % 2
  f4) r e( | % 3
  g4 e g) | % 4
  r4 d( fis | % 5
  d4 fis) r | % 6
  g4( e g | % 7
  e4) r fis( | % 8
  g4 a b,) | % 9
}

mphTrpI = \relative c'' {
  \tuplet 3/2 { b2( \p dis b } | % 2
  \tuplet 3/2 { d2) r cis( } | % 3
  \tuplet 3/2 { e2 cis e) } | % 4
  \tuplet 3/2 { r2 b( dis } | % 5
  \tuplet 3/2 { b2 dis) r } | % 6
  \tuplet 3/2 { e2( cis e } | % 7
  \tuplet 3/2 { cis2) r dis( } | % 8
  \tuplet 3/2 { e2 fis gis,) } | % 9
}

mtiiTrpI = \relative c, {
   \atmTrpI \mphTrpI \hptTrpI \tmaTrpI \phmTrpI
}

%
% trumpet 2
%

phmTrpII = \relative c' {
  r16 a \mf d fis a d
  fis8
  \tuplet 6/4  {
    f16( c a
    f'16 c a)
  }
  r4 fis'8 d16 a fis d a r | % 2
  r4. a'8 ~ a2 r8 b16 b
  \tuplet 3/2  {
    b16 b b
  }
  b16 b | % 3
  d16 d c c b b a a g2 ~ g ~ | % 4
  g4 r
  r16 a, d fis a d
  fis8
  \tuplet 6/4  {
    f16( c a
    f'16 c a)
  }  r4 |
  fis'8 d16 a fis d a r r4. a'8-- ~ a2 |
  r8 b16 b
  \tuplet 3/2  {
    b16 b b
  }
  b16 b d16 d c c b b a a g2 ~ |
  g2 ~ g4 r a16 a fis fis d' d d r |
  d16 d b b g g g g
  \tuplet 3/2  {
    e8 e e
  }
  r4 \tuplet 7/4 { gis8 gis gis gis gis gis gis } |
}

atmTrpII = \relative c' {
  ges2( \p a ges | % 2
  a2) r as( | % 3
  b2 as b) | % 4
  r2 ges( bes | % 5
  ges2 bes) r | % 6
  b2( as b | % 7
  as2) r bes( | % 8
  b2 des es) | % 9
}

tmaTrpII = \relative c'' {
  R4*9*8
}

hptTrpII = \relative c'' {
  b4( d b | % 2
  d4) r e( | % 3
  dis4 e dis) | % 4
  r4 b( d | % 5
  b4 d) r | % 6
  e4( bis e | % 7
  cis4) r g'( | % 8
  e4 eis a,) |
}

mphTrpII = \relative c'' {
  R1*8
}

mtiiTrpII = \relative c, {
  \atmTrpII \mphTrpII \hptTrpII \tmaTrpII \phmTrpII
}

%
% Horn
%

phmHrn = \relative c {
  d2( f d | % 2
  f2) r e( | % 3
  g2 e g) | % 4
  r2 d( fis | % 5
  d2 fis) r | % 6
  g2( e g | % 7
  e2) r fis( | % 8
  g2 a b) | % 9
}

atmHrn = \relative c {
  R1.*8
}

tmaHrn = \relative c {
  R4*9*8
}

hptHrn = \relative c' {
  r8 c \mf f  a8. c 
  f,8 a4 ~ a8. as8. es
  c8. as' es c4. r4. |
  a'8 f4 c4. |
  a8 f8. c'16 c4. ~ c2. |
  f8 f es es d d |
}

mphHrn = \relative c' {
  \tuplet 3/2 { bes2( \p des bes } | % 2
  \tuplet 3/2 { des2) r es( } | % 3
  \tuplet 3/2 { d2 es d) } | % 4
  \tuplet 3/2 { r2 bes( des } | % 5
  \tuplet 3/2 { bes2 des) r } | % 6
  \tuplet 3/2 { es2( b es } | % 7
  \tuplet 3/2 { c2) r ges'( } | % 8
  \tuplet 3/2 { es2 e as,) } |
}

mtiiHrn = \relative c, {
  \atmHrn \mphHrn \hptHrn \tmaHrn \phmHrn
}

%
% Trombone
%

phmTbm = \relative c, {
  fis2( a fis | % 2
  a2) r b( | % 3
  bes2 b bes) | % 4
  r2 fis( a | % 5
  fis2 a) r | % 6
  b2( g b | % 7
  gis2) r d'( | % 8
  b2 c e,) |
}

atmTbm = \relative c, {
  bes'2( \p des bes | % 2
  des2) r es( | % 3
  d2 es d) | % 4
  r2 bes( des | % 5
  bes2 des) r | % 6
  es2( b es | % 7
  c2) r ges'( | % 8
  es2 e as,) |
}

tmaTbm = \relative c {
  ges2.( \p a ges | % 2
  a2.) r as( | % 3
  b2. as b) | % 4
  r2. ges( bes | % 5
  ges2. bes) r | % 6
  b2.( as b | % 7
  as2.) r bes( | % 8
  b2. des es) | % 9
}

hptTbm = \relative c {
  R2.*8
}

mphTbm = \relative c {
  r8 g \mf c e g c
  e4
  \tuplet 3/2  {
    es4-- bes g ~
  }
  \tuplet 3/2 { g r2 } |
  e'4-- c8 g e c g r |
  b2. c8-.( c-.) 
  \tuplet 3/2 { bes8 bes a } g2. |
  \tuplet 6/4 { g'4 e8 e c' c } c4 r |
  \tuplet 3/2 { c8 c a a ~ a2 f8 f f f }
  \tuplet 3/2 {
    \tuplet 3/2  {
      d4 d d  }
    \tuplet 7/4 { fis4 fis fis fis fis fis fis }
  } |
}

mtiiTbm = \relative c, {
  \atmTbm \mphTbm \hptTbm \tmaTbm \phmTbm
}

%
% Tuba
%

phmTba = \relative c {
  R1.*8
}

atmTba = \relative c {
  r8 f, _\markup { \parenthesize { \dynamic mf } }
  bes d f bes
  d4
  \tuplet 6/4  {
    des8--( as-- f--)
    des'8--( as-- f--)
  }
  |
  d1 ~ d4 bes8 f |
  d' bes f r bes8 bes as as g--( g--) f-.( f-.) |
  es1. ~ |
  es2 r1 |
  r4 g8 g
  \tuplet 3/2  {
    g8 g g
  }
  g8 g bes8 bes as as |
  g--( g--) f-.( f-.) es1 ~ |
  es1. |
}

tmaTba = \relative c, {
  bes2.( \p des bes | % 2
  des2.) r es( | % 3
  d2. es d) | % 4
  r2. bes( des | % 5
  bes2. des) r | % 6
  es2.( b es | % 7
  c2.) r ges'( | % 8
  es2. e as,) |
}

hptTba = \relative c, {
  R2.*8
}

mphTba = \relative c, {
  R1*8
}

mtiiTba = \relative c, {
  \atmTba \mphTba \hptTba \tmaTba \phmTba
}
