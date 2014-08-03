\version "2.19.6"


drcoGlobNot = {
  % \tempo 4=112
  \mark \default
  \time 4/4 s1*2
  \time 7/8 
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'(4 3)
  s2..
  \time 5/8 s8*5*2
  \time 6/8 s2.
  \time 4/4 s1 s2 
  %\mark \markup {"fake ending"} 
  s2 
  \bar "|."
  \break
  \mark \markup {"(coda of the coda)"}
  s1*8
  \bar "|."
}

drcoTrpI = \relative c'' {
  b4 r r8 b b b |
  b8 b b r r b b b |
  b8 b b r b b b |
  b8 b b \tuplet 3/2 { b b b } |
  b8 b b \tuplet 3/2 { b b b } |
  b8 r b b r b |
  b8 r b b r b r d |
  g2 r \fermata |
  d2-- \> r |
  dis2-- r |
  dis2-- r |
  e2-- r |
  e2-- r |
  e2-- r |
  e2.-- r4 |
  e1-- \pp |
}

drcoTrpII = \relative c' {
  e4 r r8 e e e |
  e8 e e r r e e e |
  d8 d d r d d d |
  es8 es es \tuplet 3/2 { es es es } |
  es8 es es \tuplet 3/2 { es es es } |
  e8 r e e r e |
  g8 r g g r g r g |
  g2 r \fermata |
  d2-- \> r |
  dis2-- r |
  dis2-- r |
  dis2-- r |
  dis2-- r |
  d2-- r |
  d2.-- r4 |
  d1-- \pp |
}

drcoHrn = \relative c' {
  a4 r r8 a--( a-- a--) |
  g8 g g r r g--( g-- g--) |
  as8 as as r as--( as-- as--) |
  as8 as as \tuplet 3/2 { as--( as-- as--) } |
  as8 as as \tuplet 3/2 { as--( as-- as--) } |
  d,8 r d d r d |
  as'8 r as as r as r as |
  g2 r \fermata |
  d'2-- \> r |
  dis2-- r |
  dis2-- r |
  dis2-- r |
  dis2-- r |
  d2-- r |
  des2.-- r4 |
  c1-- \pp |
}

drcoTbm = \relative c, {
  fis4 r r8 fis fis fis |
  f8 f f r r f f f |
  es8 es es r es es es |
  fis8 fis fis \tuplet 3/2 { fis fis fis } |
  fis8 fis fis \tuplet 3/2 { fis fis fis } |
  g8 r g g r g |
  g8 r g g r g r g |
  g2 r \fermata |
  d'2-- \> r |
  dis2-- r |
  b2-- r |
  b2-- r |
  b2-- r |
  bes2-- r |
  bes2.-- r4 |
  bes1-- \pp |
}

drcoTba = \relative c, {
  d4 r r8 d-.( d-. d-.) |
  d8-.( d-. d-.) r r d-.( d-. d-.) |
  c8-.( c-. c-.) r c-.( c-. c-.) |
  des8-.( des-. des-.) \tuplet 3/2 { des-.( des-. des-.) } |
  des8-.( des-. des-.) \tuplet 3/2 { des-.( des-. des-.) } |
  d8 r d-. d r d |
  b8 r b b-. r b-. r a-. |
  g2 r \fermata |
  d'2-- \> r |
  dis2-- r |
  dis2-- r |
  e2-- r |
  b2-- r |
  a2-- r |
  g2.-- r4 |
  g1-- \pp |
}
