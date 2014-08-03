\version "2.19.6"


imzaGlobNot = {
  %\tempo 4=116
  \mark \default
  \time 4/4 s1*8
  \bar "||"
}

imzaGD = {
  s1 \f s1*3 s1 \> s1*3
}

imzaTrpI = \relative c'' {
  g8 \f r g( b-.) g r g r |
  g8 r g( b-.) g r g r |
  b8 r b( d-.) b r b r |
  b8 r b( d-.) b r b r |
  d8 \> r d( e-.) d r d r |
  d8 r d( e-.) d r d r |
  d8 r d( e-.) d r d r |
  e8 r e( d-.) e r e r |
  %e4 r r2 |
}

imzaTrpII = \relative c' {
  e8 \f r e( g-.) e r e r |
  e8 r e( g-.) e r e r |
  e8 r e( g-.) e r e r |
  e8 r e( g-.) e r e r |
  e8 \> r e( g-.) e r e r |
  d8 r d( cis-.) d r d r |
  d8 r d( e-.) d r d r |
  d8 r d( e-.) d r d r |
  %d4 r r2 |
}

imzaHrn = \relative c' {
  cis8 \f r cis( e-.) cis r cis r |
  cis8 r cis( e-.) cis r cis r |
  cis8 r cis( e-.) cis r cis r |
  cis8 r cis( e-.) cis r cis r |
  cis8 \> r cis( e-.) cis r cis r |
  bes8 r bes( des-.) bes r bes r |
  bes8 r bes( des-.) bes r bes r |
  bes8 r bes( des-.) bes r bes r |
  %bes4 r r2 |
}

imzaTbm = \relative c' {
   b8 \f r b( cis-.) b r b r |
   b8 r b( cis-.) b r b r |
   b8 r b( cis-.) b r b r |
   b8 r b( d-.) b r b r |
   b8 \> r b( d-.) b r b r |
   b8 r b( d-.) b r b r |
   g8 r g( b-.) g r g r |
   g8 r g( b-.) g r g r |
   %g4 r r2 |
}

imzaTba = \relative c {
  g8 \f r g-.( b-. g-.) r g r |
  g8 r g-.( b-. g-.) r g r |
  g8 r g-.( b-. g-.) r g r |
  g8 r g-.( b-. g-.) r g r |
  g8 \> r g-.( b-. g-.) r g r |
  g8 r g-.( b-. g-.) r g r |
  g8 r g-.( b-. g-.) r g r |
  g8 r g-.( b-. g-.) r g r |
  %g4 r r2 |
}
