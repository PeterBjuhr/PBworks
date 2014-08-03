\version "2.19.6"


stlGlobNot = {
  %\tempo 4=66
  \mark \default
  \time 6/4 s1.*12
}

stlTrpI = \relative c''' {
    \repeat unfold 4 { g2. ~ g }
    \grace { fis16( e cis fis }
    g2.) \grace { e16( f fis }
    g2.) ~ | % 2
    g2. r2. | % 3
    R1. | % 4
    g'2. ~ g |
    R1.*3
    es2. ~ es
}

stlTrpII = \relative c'' {
    \repeat unfold 3 { g2. ~ g }
    g2.  \grace { fis16( e cis fis } g2.) |
    R1.*3 | % 4
    f'2. ~ f |
    R1.*3
    d2. ~ d |
}

stlHrn = \relative c' {
    \repeat unfold 2 { g2. ~ g }
    g2.  \grace { fis16( e cis fis } g2.) |
    g2. ~ g |
    R1.*3 | 
    dis'2. ~ dis |
    r2. cis | % 6
    \grace { b16( dis cis b d } cis2.) c | % 7
    b2. ais32( a gis g fis f e16) ~ e2 |
    cis'2. ~ cis |
}

stlTbm = \relative c {
    g'2. ~ g |
    g2.  \grace { fis16( e cis fis } g2.) |
    \repeat unfold 2 { g2. ~ g }
    R1. | % 2
    r2 bes,1 ~ | % 3
    bes2 ~ bes4 ( \glissando e,2. ) | % 4
    cis'2. ~ cis |
    R1.*3
    c2. ~ c |
}

stlTba = \relative c, {
  g'2.  \grace { fis16( e cis fis } g2.) |
  \repeat unfold 3 { g2. ~ g } 
  R1. | % 2
  b2. \acciaccatura { e8 cis ais } b2. | % 3
  R1. |
  b,2. ~ b |
  R1.*3
  b2. ~ b | 
}
