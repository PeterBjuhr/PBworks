\version "2.19.6"

seqGlobNot = {
  % \tempo 4=116
  \time 4/4 s1*16
}

seqGD = {
  s1*16
}

seqTrpI =  {
  f'8 ^\markup { \box { \small { "trumpet in C" } } } \pp
  r4 e'8 r8 r4 f'8 r2 c'8 r e' r | % 2
  r4 fis'8 r r4 gis'8 r b'( e'-.) r r4 c'8( fis'-.) r | % 3
  r4 cis''8( fis'-.) r r4 dis'8 r4 b8( fis'-.) r4 c''8 r | % 4
  r4 e'8 r4 b8 r4 cis'8( f'-.) r b' r4 gis'8 r | % 5
  dis'8 \< r4 e'8 r gis' r4 f'8 r cis'( bes-.) r bes' \p r4 | % 6
  e''8 r4 g'8 r r4 b'8 r dis'' r b'' r e'' r cis'' | % 7
  r8 f'' r dis''( b'-.) r g' r4 e''8 r4 bes8 r4 e'8 |
  f''8 r4 e''8 r8 r4 f''8 r2 c''8 r fis'' r |
}

seqTrpII =  {
  r4 c'8 \pp r b8 r r4 c'8 r4 cis'8 r r4 d'8 | % 2
  r8 es' r4 r d'8 r4 cis'8 r4 c'8 r b( cis'-.) | % 3
  dis'8 r r4 e'8 r d' r b r4 e'8 r c' r4 | % 4
  a8 r2 c'8( d'-.) r r2 b8( a-.) r g | % 5
  r8 r2 a8 r bes c' r des' r des'( e'-.) r cis' | % 6
  r4 g8 r a r4 a8 r r2 a8( c'-.) r | % 7
  r8 d' r4 r2 R1 |
  r4 c'8 \< r b8 r r4 c'8 r4 cis'8 r r4 d'8 \p
}

seqHrn =  {
  \tag #'c-score { \clef bass }
  es8 \pp r d r8 r4 d8 r r4 d8 r r4 d8 r | % 2
  r8 r4 es8 r fis r4 dis8 r cis r d r4 cis8 | % 3
  r4 a8( gis-.) r2 cis8 r4 d8 r2 | % 4
  r4 d8 r2 d8 r4 d8 r r2 | % 5
  r8 r4 d8 r r4 d8 r r4 d8 r r4 d8 | % 6
  r4 d8 r r4 d8 r2 d8 r2 | % 7
  r8 d r r2 d8 \< r r4 d8 r4 d8 r |
  es8 r d r8 r4 d8 r \! r4 d8 \p r r4 d8 r |
}

seqTbm =  {
  g8 \pp r r2. r4 g8 r a r r4 | % 2
  r8 a r4 r2 a8 r4 g8 r4 g8 r | % 3
  r4 a8 r4 bes8 r a r4 gis8 r4 a8 r4 | % 4
  r8 bes r a r4 g8 r4 g8 r4 g8 r b r | % 5
  r8 g r4 b8 r4 g8 r2 b8 r a r | % 6
  r4 r8 g8 \< r4 as8 r g r r4 r bes8( b-.) | % 7
  r2 \! g8 \p r r4 r8 g r r4 a8 r4 | % 8
  r4 g8 r r2 a8 r4 gis8( g-.) r r4 | % 9
}

seqTba =  {
  b,,4 \pp r r2 b,,8 r8 r4 c,8 r r4 | % 2
  r2 b,,8 r r2 b,,8 r2 b,,8 | % 3
  r4 b,,8 r b,, r r2 b,,8 r4 b,,8 r4 | % 4
  r4 b,,8 r r4 b,,8 r r4 b,,8 r r2 | % 5
  r8 b,, r4 r4. b,,8 r r4 b,,8 \< r r4 bis,,8-. | % 6
  cis,8(-. d,-. e,)-. f,(-. dis,-. \p ) r4 b,,8 r2 b,,8 r r4 |
  b,,4 r r2 b,,8 r8 r4 c,8 r r4 |
  r2 b,,8 r r4 r b,,8 r r4. b,,8-. |
}
