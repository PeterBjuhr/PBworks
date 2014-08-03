\version "2.19.6"


ercdGlobNot = {
  \mark \default
  \time 2/4 s2
  \time 3/4 s2.*2
  \time 6/8 s2.*2
  \time 5/8 s8*5*2
  \time 4/4 s1*2
  \time 5/4 s4*5*2
  \time 2/4 s2*4
  \bar "|."
}

ercdTrpI = \relative c'' {
  bes2 | % 2  
  c2. \p ~ | % 3
  c2. | % 4
  c2. ~ | % 5
  c2. | % 6
  g'4 e16 fis g8. e32( fis | % 7
  g16) dis fis a g8 e d ~ | % 8
  d1 | % 9
  a'1 | 
  gis2. ~ gis2 ~ | % 11
  gis2. ~ gis2 | % 12
  bes,2 | % 13
  g'2 ~ | % 14
  g2 |
  g2 |
}

ercdTrpII = \relative c' {
  des2 | % 2
  es2. \p ~ | % 3
  es2. | % 4
  a4 c8( d) a4 | % 5
  c16( d e8) a, ~ a4
  \tuplet 3/2  {
    g16 g g  } |
  g4. ~ g4 ~ | % 7
  g4. ~ g4 | % 8 
  fis1 ~ | % 9
  fis1 |  
  e2. ~ e2 ~ | % 11
  e2. ~ e2 | % 12
  des2 | % 13
  es2 ~ | % 14
  es2 |
  g2 |
}

ercdHrn = \relative c' {
  g2 | % 2
  as4 \p c8( bes) g16 as( g f) | % 3
  es2 des16( es f8) ~ | % 4
  f2. ~ | % 5
  f2. | % 6
  d4. ~ d4 ~ | % 7
  d4. ~ d4 | % 8 
  d1 ~ | % 9
  d1 | 
  e2. ~ e2 ~ | % 11
  e2. ~ e2 | % 12 
  g2 | % 13
  g2 ~ | % 14
  g2 |
  g2 |
}

ercdTbm = \relative c {
  es2 | % 2
  es2. \p ~ | % 3
  es2. | % 4 
  a,2. ~ | % 5
  a2. | % 6
  b4. ~ b4 ~ | % 7
  b4. ~ b4 | % 8
  \clef tenor
  a''4 d,8( a') ~ a d, ~ d16 cis(-- b-- a16)-- | 
  \clef bass
  d8 a( d) r a16 e(-- b-- fis)-- d'8( cis) ~ |
  cis2. ~ cis2 ~ | % 11
  cis2. ~ cis2 | % 12
  es2 | % 13
  es2 ~ | % 14
  es2 |
  g,2 | % 15
}

ercdTba = \relative c {
  es2 | % 2
  as,2. \p | % 3
  as2. | % 4
  f2.~ | % 5
  f2. | % 6
  g4. ~ g4 ~ | % 7
  g4. ~ g4 | % 8
  d'1 ~ | % 9
  d1 | 
  gis4 e8-. dis-. e( dis-.) a'4. e8-. | % 11
  fis8( cis) c-- cis ~ cis4 g bes, ~ | % 12 
  bes2 | % 13
  bes2 ~ | % 14
  bes2 |
  g2 |
}
