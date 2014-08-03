\version "2.19.6"


ap-melGlobNot = {
  %\tempo 4=112
  \mark \default
  \time 4/4 s1*16
  \mark \default
  \time 4/4 s1*8
}

ap-melTrpI = \relative c'' {
  d4 \f r d2:16
  r2 d2:16 |
  \repeat unfold 2 { r4 d4:16 } |
  d4 r d2:16
  r2 d2:16 |
  \repeat unfold 2 { r4 d4:16 } |
  r4 d4:16 d2:16
  R1
  c4 r d r |
  c4 r d8 c r4 |
  e2 r |
  R1*2
  e4 r e r |
  d4 r c r |
  R1
  r4 c8 c16 c c4. 
  \tuplet 3/2 { c16 c c } |
   r4 d8 d16 d c4. 
  \tuplet 3/2 { c16 c c } |
  r4 c8 c16 c c4. 
  \tuplet 3/2 { c16 c c } |
   r4 d8 d16 d c4. 
  \tuplet 3/2 { c16 c c } |
  fis4 r r2 |
  R1
  c4 r r2 |
  b4 r r2 |
}

ap-melTrpII = \relative c'' {
  d1 \f ~ d2 r4 d4:16
  d1 ~ d2 r4 d4:16
  r2 d2:16 |
  r4 d4:16 d2 ~
  d2 r4 d4:16
  r4. d16 d \tuplet 3/2 { d d d } r4.
  a4 r b-. r |
  a4 r a16( c d8) c-. r |
  g2 r |
  R1*2
  c4 r c-. r |
  a4 r a-. r |
  R1
  r4 a8 a16 a a4. 
  \tuplet 3/2 { a16 a a } |
  r4 a8 a16 a a4. 
  \tuplet 3/2 { a16 a a } |
   r4 a8 a16 a a4. 
  \tuplet 3/2 { a16 a a } |
  r4 a8 a16 a a4. 
  \tuplet 3/2 { a16 a a } |
  gis2 r |
  g2 r |
  as2 r |
  R1
}

ap-melHrn = \relative c' {
  d1 \f d4 r d2:16
  d1 d4 r d2:16
  d4 r d8-. r4. |
  r4 a c8 d8 f4 | % 2
  g8 f d4 ~ d c8 bes | % 3
  a4 r r a | % 4
  f'2 g4 f | % 5
  d2 bes4 d | % 6
  c2 d4 c | % 7
  b2 g4 fis | % 8
  b4. d8 d4. c8 | % 9
  a2 g4 b | 
  d2 f8 e d4 | % 11
  c2 b4. g8 | % 12
  a2 r |
  R1*3 |
  d1 
  d
  d
  a
}

ap-melTbm = \relative c' {
  \clef tenor
  a2 \f c8( d8--) r4 |
  f2 g8( f--) r4 |
  d2 fis8( g--) r4 |
  a2 g8( f--) r4 |
  c2 b8--( a-- g-- f--) |
  \clef bass
  e8( d--) c2. |
  a1 ~ |
  a |
  c2 b |
  c1 |
  e1 ~ |
  e |
  b2 fis' |
  c2 e |
  fis a |
  e1 ~ |
  e |
  d2 f |
  e1 |
  d2 f |
  b,1 
  bes
  f
  fis
}

ap-melTba = \relative c, {
  d1 \f
  d'2:16 d,2
  r2 d2
  d'2:16 d,8-. r4. |
  a'4 c8( d8-.) f4 r |
  a,,4 r r2 |
  R1
  d2 r |
  f4 r8 f-. g4 r8 g-. |
  f4 r8 f-. g4 r8 g-. |
  c2 r |
  b2 r |
  d,2 r |
  a'4 r8 a-. a4 r8 a-. |
  d,4 r8 d-. f4 r8 f-. |
  c2 r |
  R1*4
  e1
  e
  bes
  d
}
