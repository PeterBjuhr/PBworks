\version "2.19.6"

%%%%%%%%%%%%%%%%%%%%%%%
% Randomly decided order:
% 5|1|4|3|4|1|5|4|
% 1 = 6/8
% 2 = 5/8
% 3 = 3/8
% 4 = 2/4
% 5 = 2/8
% 28,68,24,38,24,68,28,58
% \twoeX \sixeX \twofx \threex
% \twofx \sixex \twoeX \fiveex
%%%%%%%%%%%%%%%%%%%%%%%%


charTimeGlobNot = {
  %\tempo 8=224
  \mark \default
  \time 2/4 s2*8
  \mark \default
  \time 6/8 s2.*8
  \mark \default
  \time 7/8
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'(3 4)
  s8*7*8
  \mark \default
  \time 5/8 s8*5*8
  \mark \default
  \time 3/8 s4.*16
  \mark \default
  \time 6/8 s2.*8
  \mark \default
  \time 2/4 s2*8
  \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Trumpet 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sixeTrpI = \relative c'' {
  cis8 \mf b16 b b8 e8. e16
  \tuplet 3/2 { e16 dis( e-.) } |
  r4 r2 | % 3
  cis8 b16 b b8 e8. e16
  \tuplet 3/2 { e16 dis( e-.) } |
  r4 r2 | % 5
  d8 a16( cis) d8 e d16 d
  \tuplet 3/2 { cis16 b a } |
  d8( a4) r8 r4 | % 7
  cis8 b16 b b8 e8. e16
  \tuplet 3/2 { e16 dis( e) } |
  d8.( g8.) ~ g4 r8 | % 9
}

fiveeTrpI = \relative c' {
  r8 as' \mp r r16 as8 r16 |
  r8 as r16 r8 ges r16 | % 11
  r8 f r16 r8 f r16 | % 12
  r8 g r16 r8 g r16 |
  r8 es' r r16 es8 r16 |
  r8 es r16 r8 des r16 | % 11
  r8 c r16 r8 c r16 | % 12
  r8 d r16 r8 d r16 |
}

threeTrpI = \relative c'' {
  r8 a r |
  r8 cis r | % 19
  r8 d r |
  r8 b, r |
  r8 d r | % 22
  r8 dis r |
  r8 e r |
  r8 b r |
}

sevenTrpI = \relative c' {
  es4. \p r2 |
  fis4. r2 |
  as4. r2 |
  g4. r2 |
  as4. r2 |
  bes4. r2 |
  c4. r2 |
  des4. r2 |
}

twoeTrpI = \relative c'' {
  <<
  \repeat unfold 4 { cis8 r4. r4. d8-. }
  { s8 \mf s4.*2 s8 \p s2*6 }>>
}

chtmTrpI = {
  \twoeTrpI \sixeTrpI \sevenTrpI
  \fiveeTrpI \threeTrpI \threeTrpI \sixeTrpI \twoeTrpI
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Trumpet 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sixeTrpII = \relative c'' {
  r8 gis \mf r r gis r |
  r8 fis r4 fis8 r | % 3
  r8 gis r4 gis8 r | % 4
  r8 gis r4 gis8 r | % 5
  r8 fis r4 fis8 r | % 6
  r8 a r4 a8 r | % 7
  r8 gis r4 gis8 r | % 8
  r8 g r r as r | % 9
}

fiveeTrpII = \relative c'' {
  r16 f, \mp \tuplet 3/2 { f16 e( f) }
  as8 ~ as16 f e( f) |
  as8( ges4) r | % 11
  r16 d \tuplet 3/2 { d16 cis( d) }
  f8 ~ f16 d cis( d) | % 12
  cis8.( e) ~ e4 |
  r16 c' \tuplet 3/2 { c16 b( c) }
  es8 ~ es16 c b( c) |
  es8( des4) r | % 11
  r16 a \tuplet 3/2 { a16 gis( a) }
  c8 ~ c16 a gis( a) |
  \tuplet 5/4 { as16 as as as as } as8:32 r4 |
}

threeTrpII = \relative c'' {
  a8 r a |
  cis8 r cis |
  d8 r d |
  b8 r b |
  d8 r d |
  dis8 r dis |
  e8 r e |
  b8 r b |
}

sevenTrpII = \relative c' {
  des4. \p r2 |
  es4. r2 |
  g4. r2 |
  fis4. r2 |
  g4. r2 |
  as4. r2 |
  bes4. r2 |
  c4. r2 |
}

twoeTrpII = \relative c' {
  <<
  \repeat unfold 4 { r8 g'4.( as4.) r8 }
  { s8 s8 \mp s4 s2*7 }>>
}

chtmTrpII = {
  \twoeTrpII \sixeTrpII \sevenTrpII
  \fiveeTrpII \threeTrpII \threeTrpII \sixeTrpII \twoeTrpII
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Horn
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sixeHrn = \relative c' {
  r8 b \mf r r b r |
  r8 a r4 a8 r | % 3
  r8 b r4 b8 r | % 4
  r8 b r4 b8 r | % 5
  r8 a r4 a8 r | % 6
  r8 a r4 a8 r | % 7
  r8 b r4 b8 r | % 8
  r8 b r r c r | % 9
}

fiveeHrn = \relative c' {
  r8 c \mp r r16 c8 r16 |
  r8 c r16 r8 c r16 | % 11
  r8 a r16 r8 a r16 | % 12
  r8 b r16 r8 b r16 |
  \tag #'c-score { \clef treble }
  r8 g' r r16 g8 r16 |
  r8 g r16 r8 g r16 | % 11
  r8 e r16 r8 e r16 | % 12
  r8 fis r16 r8 fis r16 |
}

threeHrn = \relative c' {
  a8 a16 a a8 |
  cis8 cis16 cis cis8 | % 19
  b8 b16 b b8 |
  d8 d16 d d8 | % 21
  c8. e16 dis e | % 22
  d16( b) d8( a) | % 23
  e'8 dis8.( a16-.) | % 24
  \times 2/3  {
    g16( bes cis)
  }
  e8--( d--) | % 25
}

threeHrn-var = \relative c' {
  c4. \mf e8 dis e | % 22
  d8 b d8 ~ d a4 | % 23
  e'4 dis8 ~ dis4 a8
  \times 2/3  {
    g8 bes cis
  }
  e8( ~ e d4) | % 25
}

sevenHrn = \relative c {
  r4. g'2 \p |
  r4. as2 |
  r4. as2 |
  r4. bes2 |
  r4. es2 |
  r4. es2 |
  r4. c2 |
  r4. des2 |
}

twoeHrn = \relative c' {
  <<
  \repeat unfold 4 { r8 bes!4.( b) r8 }
  { s8 s8 \mp s4 s2*7 }>>
}

chtmHrn = {
  \twoeHrn \sixeHrn \sevenHrn
  \fiveeHrn \threeHrn-var \threeHrn \sixeHrn \twoeHrn
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Trombone
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sixeTbm = \relative c {
  r8 e \mf r r e r |
  r8 d r4 d8 r | % 3
  r8 e r4 e8 r | % 4
  r8 dis r4 dis8 r | % 5
  r8 d r4 d8 r | % 6
  r8 cis r4 cis8 r | % 7
  r8 e r4 e8 r | % 8
  r8 d r r es r | % 9
}

fiveeTbm = \relative c {
  f,8 r f--( f--) f-- |
  as8 r as--( as--) as-- | % 11
  d8 r d--( d--) d-- | % 12
  e,8 r e--( e--) e-- |
  c'8 r c--( c--) c-- |
  es8 r es--( es--) es-- | % 11
  a8 r a--( a--) a-- | % 12
  b,8 r b--( b--) b-- |
}

threeTbm = \relative c {
  r8 c r |
  r8 e r |
  r8 d r |
  r8 fis r |
  r8 g r |
  r8 a r |
  r8 b r |
  r8 bes r |
}

sevenTbm = \relative c {
  c16-- \mp ( des-- es-- fis-- g8--) as4-- bes-- |
  as16--( g-- fis-- es-- des8--) c4-- bes-- |
  c16--( des-- es-- fis-- g8--) as4-- bes-- |
  as16--( g-- fis-- es-- des8--) c4-- bes-- |
  c16--( des-- es-- fis-- g8--) as4-- bes-- |
  as16--( g-- fis-- es-- des8--) c4-- bes-- |
  c16--( des-- es-- fis-- g8--) as4-- bes-- |
  as16--( g-- fis-- es-- des8--) c4-- bes-- |
}

twoeTbm = \relative c {
  <<
  \repeat unfold 4 {r8  e4.( f) r8 }
  { s8 s8 \mp s4 s2*7 }>>
}

chtmTbm = {
  \twoeTbm \sixeTbm \sevenTbm
  \fiveeTbm \threeTbm \threeTbm \sixeTbm \twoeTbm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tuba
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sixeTba = \relative c {
  e,8 \mf r b-. e r e-. |
  d8 r a-. d r d-. | % 3
  e8 r b-. e r e-. | % 4
  gis8 r b( gis) r gis | % 5
  d8 r a-. d r d-. | % 6
  a'8 r e-. a r e-. | % 7
  e8 r b-. e r e-. | % 8
  g8 r r as-. r4 | % 9
}

fiveeTba = \relative c {
  r8 f r r16 f8-. r16 |
  r8 ges r16 r8 ges-. r16 | % 11
  r8 d r16 r8 d-. r16 | % 12
  r8 e r16 r8 e-. r16 |
  r8 c' r r16 c8-. r16 |
  r8 des r16 r8 des-. r16 | % 11
  r8 a r16 r8 a-. r16 | % 12
  r8 b r16 r8 b-. r16 |
}

threeTba = \relative c {
  r8 a,8 r |
  r8 cis8 r | % 19
  r8 b8 r |
  r8 d8 r | % 21
  r8 c8 r |
  r8 d r | % 23
  r8 g r | % 24
  r8 fis r |
}

sevenTba = \relative c {
  c,4. \mp r2
  des4. r2
  c4. r2
  es4. r2
  fis4. r2
  g4. r2
  as4. r2
  bes4. r2
}

twoeTba = \relative c {
  <<
    {
      \repeat unfold 4 {
        cis,8-. g'-. e'-. bes'-. |
        d(-- as)-. f,(-- b,)-. |
      }
    }{ s2 \mf s2*7 }
  >>
}

chtmTba = {
  \twoeTba \sixeTba \sevenTba
  \fiveeTba \threeTba \threeTba \sixeTba \twoeTba
}

