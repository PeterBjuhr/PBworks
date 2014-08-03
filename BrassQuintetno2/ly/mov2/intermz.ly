\version "2.19.6"


itmzGlobNot = {
  %\tempo 4=116
  \mark \default
  %\time 4/4 
  s1*15
}

itmzGD = {
  s1*11
  s1 \< s1*3
}

itmzTrpI = \relative c'' {
  f8 r4 e8 r8 r4 f8 r2 c8 r fis r |
  e8 r4 dis8 r8 r4 e8 r4. b8 r eis r
  d8 r4 cis8 r8 r4 d8 r4 a8 r dis r
  d8 r d r r4 d8 r4 a8 r dis r
  cis8 r cis r r cis8 r4 e8 r d r
  b8 r b r d8 r4 b8 r cis r
  bes8 r bes r cis r bes r cis r
  a8 r a( c-.) r a \< r a r
  fis8 r fis( a-.) fis r fis r
  g8 r g( b-.) g r g r g b-. g( e) |
}

itmzTrpII = \relative c' {
  r4 c8 r b8 r r4 c8 r4 cis8 r r4 d8
  r4 c8 r b8 r r4 c8 r4 cis8 r r d
  r8 c r b8 r r4 c8 r4 cis8 r r d
  r8 c r b8 r r c8 r4 cis8 r r d
  r8 c r b8 r c8 r4 cis8 r r d(
  e8-.) r b r c r4 cis8 r r d(
  e8-.) r b r g r cis r r d(
  e8-.) r e( g-.) r cis, \< r r d
  e8 r e( g-.) e r r d
  e8 r e( g-.) e r e r e g-. e( b) |
}

itmzHrn = \relative c {
  es8 r d r8 r4 d8 r r4 d8 r r4 d8 r |
  f8 r e r r4 e8 r r e8 r r4 e8 r
  fis8 r fis r r4 f8 r f8 r r4 f8 r
  g8 r g r r g r fis r r4 g8 r
  a8 r a r r a r gis r r 
  a r bes8 r bes r bes r a r r bes r
  b8 r b r d r b r4 a8( c8-.) r c r e 
  r c \< r a cis8 r cis( e-.) r cis r a
  cis8 r cis( e-.) cis r cis8 r cis e-. cis( a) |
}

itmzTbm = \relative c' {
  r4 g8 r r2 a8 r4 gis8( g-.) r r4 |
  r4 g8 r r2 a8 r r gis8( g-.) r r4
  r8 g8 r4 r a8 r r gis8( g-.) r
  r4 g8 r r4. a8 r4 gis8( g-.) r4
  r8 g r r4 a8 r4 gis8( g-.) r4
  r8 g r4 r8 b8 r4 gis8( g-.) r
  b8 r r4 b8 r4 gis8( g-.) r
  b8 r r4 b8 r cis \< ( g-.) r
  b8 r r b r cis( b-.) r
  b8 r b( cis-.) b r b r b8 cis-. b( g) |
}

itmzTba = \relative c, {
  r2 b8 r r4 r b8 r r4. b8-. |
  r4. c8 r2 r8 b8 r4 r c8
  r8 r4 cis8 r r4. b8-. r2 cis8
  r4. d8 r d r b r r4 r8 d8
  r4 r8 e8 r e r b r4 r8 e8
  r4 e8 r e r b r4. e8
  r4 f8 r f r b r f r4
  fis8 r fis r b \< r fis r
  r8 g r g b r g r
  g8 r g-.( b-.) g r g r g b-.( g8-. dis-.) |
}