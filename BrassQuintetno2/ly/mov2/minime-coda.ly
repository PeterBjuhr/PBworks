\version "2.19.6"

codaGlobNot = {
  \mark \default
  \time 4/4 s1*11
  \bar "|."
}

codaGD = {
  s1 \mf s1*10
}

codaTrpI =  \relative g' {
  g8 \mf r g( b-.) g r g r |
  g8 b-. g( e) g r g( b-.) |
  g8 r g( b-.) g r g r |
  g8 b-. g( e) g r g( b-.) |
  gis16 a b c dis e fis a, ~
  \tuplet 3/2 { a8 b--( c-- }
  d8--) r |
  g8 r g, b g r g r |
  g8 b g e g r g b |
  g8 r g b g r g r |
  g8 r g b g r g r |
  gis16 a b c dis e fis a, ~
  \tuplet 3/2 { a8 b--( c-- }
  e8--) r |
  \tuplet 9/8 { c,8 g' c e g bes c d r } |
}

codaTrpII =  \relative e' {
  d8 \mf r d( g-.) d r d r |
  d8 r d( g-.) d r e r |
  d8 r d( g-.) d r d r |
  d8 r d( g-.) d r e r |
  d8 r d( g-.) d r e r |
  gis16 a b c dis e fis a, ~
  \tuplet 3/2 { a8 b--( c-- }
  d8--) r |
  d8 r d( g,-.) d r e r |
  d8 r d( g-.) d r e r |
  d8 r d( g-.) d r e r |
  gis16 a b c dis e fis a, ~
  \tuplet 3/2 { a8 b--( c-- }
  d8--) r |
  \tuplet 9/8 { c,8 g' c e g bes c d r } |
}

codaHrn =  \relative cis' {
  \tag #'c-score { \clef bass }
  b8 \mf r b( d-.) b r b r |
  b8 d-. b( a) r b-. d( e) |
  b8 r b( d-.) b r b r |
  b8 d-. b( a) r b-. d( e) |
  b8 d-. b( a) r b-. d( e) |
  b8 r b( d-.) b r b r |
  \tag #'c-score { \clef treble }
  d16 es f ges a bes c es, ~
  \tuplet 3/2 { es8 f--( ges-- }
  as8--) r |
  \tag #'c-score { \clef bass }
  b,8 d-. b( a) r b-. d( e) |
  b8 d-. b( a) r b-. d( e) |
  \tag #'c-score { \clef treble }
  d16 es f ges a bes c es, ~
  \tuplet 3/2 { es8 f--( ges-- }
  g8--) r |
  \tuplet 9/8 {
    f,8 c' f a c es f4
    \tag #'transp { \clef bass }
    f,,,8
  } |
}

codaTrb =  \relative b {
  g8 \mf r g( b-.) g r g r |
  g8 r g--( g-.) g r g( d-.) |
  g8 r g( b-.) g r g r |
  g8 r g--( g-.) g r g( d-.) |
  g8 r g( b-.) g r g r |
  g8 r g--( g-.) g r g( d-.) |
  g8 r g--( g-.) g r g( d-.) |
  cis16 d e f gis a b d, ~
  \tuplet 3/2 { d8 e--( f-- }
  bes,8)-. r |
  bes2.( \glissando e,4)-. |
  cis'16 d e f gis a b d, ~
  \tuplet 3/2 { d8 e--( f-- }
  bes,8)-. r |
  \tuplet 9/8 { bes8 f' bes d f as bes c bes,,, } |
}

codaTba =  \relative g, {
  g8 \mf r g-.( b-. g-.) r g r |
  g8 b-.( g-. d-.) g r g-.( b-.) |
  g8 r g-.( b-. g-.) r g r |
  g8 b-.( g-. d-.) g r g-.( b-.) |
  g8 r g-.( b-.) g r g r |
  g8 b-.( g-. d-.) g r g-.( b-.) |
  g8 r g-.( b-. g-.) r g r |
  g8 b-.( g-. d-.) g r g-.( b-.) |
  e16 f g as b c d f, ~
  \tuplet 3/2 { f8 g-.( as-. }
  g,8)-. r |
  e16 f g as b c d f, ~
  \tuplet 3/2 { f8 g-.( as-. }
  g,8)-. r |
  \tuplet 9/8 { bes8 f' bes d f as bes c bes,,, }

}
