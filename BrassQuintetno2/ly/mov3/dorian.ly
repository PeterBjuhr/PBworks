\version "2.19.6"


doriGlobNot = {
  % \tempo 4=112
  \mark \default
  \time 5/8 s8*5*16
}

% D dorian scale:
% d e f g a b c

doriTrpI = \relative c'' {
  \repeat unfold 2 {
    e4. \mf ~ e4 | fis,8. g16 a8 b4 | cis4. ~ cis8 d |
    d8 d d16 d \tuplet 3/2 { d16 d d } e8 ~ |
  }
  e4. r4 |
  R8*5*7
}

doriTrpII = \relative c' {
  \repeat unfold 2 {
    d8 \mf e f g4 a b8 c4 |
    d8 c b a4 g f8 e4 |
  }
  \repeat unfold 2 {
    g4( fis e8) ~ |
    e8 d4-.( c-.) |
    b4 a4. |
  }
  g'4 \> ( fis e8) ~ |
  e8 d4-.( c-.) |
}

doriHrn = \relative c' {
  a4 \mf b c8 ~ | c d4 e fis8 g4 g16 g g g |
  fis4. a,4 ~ | a b8 d16 e fis8 ~ |
  fis4 a8 ~ a4 |
  b16 c b a e g a4 |
  \repeat unfold 2 {
    g4( fis e8) ~ |
    e8 d4-.( c-.) |
    b4 a4. |
  }
  R8*5*3
}

doriTbm = \relative c {
  b4. \mf cis4 d4. e4 fis4. gis4 a4. ~ a4 |
  b4. ~ b4 | \tuplet 7/6 { b16 b a a gis gis fis } fis8. e16 |
  \tuplet 5/3 { e8 d d cis cis } b16 b b b |
  \repeat unfold 2 { b8 r a r gis a r fis e r d' cis r b4 | }
  b8 r a r gis a \> r fis e r d' cis r b4 |
}

doriTba = \relative c, {
  \repeat unfold 2 {
    es8 r f r ges-- r as r bes-- r c( des es4.) ~ |
    es4. r4 |
  } R8*5*8
}
