\version "2.19.6"

miniGlobNot = {
  \mark \default
  \time 12/8 s2.*6
  \mark \default
  \time 10/8
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'(3 3 4)
  s8*20
  \mark \default
  \time 9/8 s8*45
  \mark \default
  \time 4/4 s1*8
  \mark \default
  \time 3/4 s2.*5
  \time 5/8 s8*40
  \time 3/8 s4.*3
  \mark \default
  \time 6/8 s2.*5
  \time 7/8
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'(3 4)
  s8*14
  \mark \default
  \time 11/8
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'(3 3 3 2)
  s8*88
}

miniGD = {
  \time 12/8 s2. \mp s2.*5
  \time 10/8
  s8*20
  \time 9/8 s8*45
  \time 4/4 s1*8
  \time 3/4 s2.*5
  \time 5/8 s8 \< s8*39
  \time 3/8 s4.*3
  \time 6/8 s2. \mf s2.*4
  \time 7/8
  s8*14
  \time 11/8 s8 \< s8*21 s8 \f \> s8*43
  s8 \p \< s8*21
}

miniTrpI =  {
  g'8 \mp r g' b'( g'-.) r g' r g' b'-. g'( e') | % 2
  g'8 r g' b'( g'-.) r g' r g' b'-. g'( e') | % 3
  g'8 r g' b'( g'-.) r g' r g' b'-. g'( e') | % 4
  g'8 r g' b'( g'-.) r g' r g' b' | % 5
  g'8 r g' b'( g'-.) r g' r g' b' |
  g'8 r g' b'( g'-.) r g' r g' |
  g'8 r g' b'( g'-.) r g' r g' |
  g'8 r g' b'( g'-.) r g' r g' |
  g'8 r g' b'( g'-.) r g' r g' |
  g'8 r g' b'( g'-.) r g' \< r g' |
  e''8 \mf r4 g'8 r r4 b'8 r dis'' r b'' r e'' r cis'' | % 7
  r8 f'' r dis''( b'-.) r g' r4 e''8 r4 bes8 r4 e'8 |
  e''8 r4 g'8 r r4 b'8 r dis'' r b'' r e'' r cis'' | % 7
  r8 f'' r dis''( b'-.) r g' r4 e''8 r4 bes8 r4 e'8 |
  e''8 \mp r4 g'8 r4 |
  b'8 r dis'' r b'' r |
  e''8 r cis'' r f'' r |
  dis''8( b'-.) r g' r4 |
  e''8 r4 bes8 r4 |
  R8*40
  R4.*3
  b'4 \mf dis''8( cis'') a'4 |
  b'8 b' dis''( cis'') a'4 |
  b'4 dis''8( cis'') a'4 |
  b'8 b' dis''( ~ dis'' cis'') a' |
  b'4 dis''8( cis'') a'4 |
  b'8 b' e''4 dis''8( cis'') b' |
  g'4 r4 r4. |
  b'8 b' e''4 dis''8( cis'') b'
  g'4 r4 |
  b'8 b' e''4 dis''8( cis'') b'
  g'4 r4 |
  R8*44
  r4 g'8 \< r4. g'8 b' r4. |
  g'8 r g' b' g' r g' r g' b' g' |
}

miniTrpII =  {
  e'8 \mp r e' g'( e'-.) r e' r e' g'-. e'( b) | % 2
  e'8 r e' g'( e'-.) r e' r e' g'-. e'( b) | % 3
  e'8 r e' g'( e'-.) r e' r e' g'-. e'( b) | % 4
  e'8 r e' g'( e'-.) r e' r e' g'-. | % 5
  e'8 r e' g'( e'-.) r e' r e' g'-. |
  e'8 r e' g'( e'-.) r e' r e' |
  e'8 r e' g'( e'-.) r e' r e' |
  e'8 r e' g'( e'-.) r e' r e' |
  e'8 r e' g'( e'-.) r e' r e' |
  e'8 r e' g'( e'-.) r e' r e' |
  e'8 r e' g'( e'-.) r e' r |
  e'8 r e' g'( e'-.) r e' r |
  e'8 r e' g'( e'-.) r e' r |
  e'8 r e' g'( e'-.) r e' r |
  e'8 r e' g'( e'-.) r e' r |
  e'8 r e' g'( e'-.) r e' r |
  e'8 r e' g'( e'-.) r e' r |
  e'8 r e' g'( e'-.) r e' r |
  r8 e' e' r e' e' |
  r8 e' e' r e' e' |
  r8 e' e' r e' e' |
  r8 e' e' r e' e' |
  r8 e' e' r e' e' |
  r8 e' \< e' r e' |
  r8 e' e' r e' |
  r8 e' e' r e' |
  r8 e' e' r e' |
  r8 e' e' r e' |
  r8 e' e' r e' |
  r8 e' e' r e' |
  r8 e' e' r e' |
  r8 e' e' |
  r8 e' e' |
  r8 e' e' |
  r8 dis' \mf dis' r e' e' |
  r8 dis' dis' r e' e' |
  r8 dis' dis' r e' e' |
  r8 dis' dis' r e' e' |
  r8 dis' dis' r e' e' |
  r8 dis' dis' r e' e' fis' |
  r8 dis' dis' r e' e' fis' |
  r8 e' e' r e' e'( fis'-.) r fis' fis' g' |
  r8 e' e' r e' e'( fis'-.) r fis' fis' g' |
  r8 e' \> e' r e' e'( fis'-.) r fis' fis' g' |
  r8 e' e' r e' e'( fis'-.) r fis' fis' g' |
  r8 e' e' r e' e'( fis'-.) r fis' fis' g' |
  r8 e' e' r e' e'( fis'-.) r fis' fis' g' |
  e'8 \< r e' g' e' r e' r e' g' e' |
  e'8 r e' g' e' r e' r e' g' e' |
}

miniHrn =  {
  cis'8 \mp r cis' e'( cis'-.) r cis'8 r cis' e'-. cis'( a) | % 2
  cis'8 r cis' e'( cis'-.) r cis' r cis' e'-. cis'( a) | % 3
  cis'8 r cis' e'( cis'-.) r cis' r cis' e'-. cis'( a) | % 4
  cis'8 r cis' e'( cis'-.) r cis' r cis' e' | % 5
  cis'4. e'8 dis'16( e'16 cis'4.) r4 |
  cis'4. e'8 dis'16( e'16 cis'8) ~ cis'4. ~ |
  cis'4 r8 e'8 dis'16( e'16 cis'8) ~ cis'4. ~ |
  cis'4 r8 e'8 dis'16( e'16 cis'8) ~ cis'4. ~ |
  cis'4 r8 e'8 dis'16( e'16 cis'8) ~ cis'4. ~ |
  cis'4 r8 e'8 dis'16( e'16 cis'8) ~ cis'4. ~ |
  cis'4 r8 e'8 dis'16( e'16 cis'8) ~ cis'4 ~ |
  cis'4 r8 e'8 dis'16( e'16 cis'8) ~ cis'4 ~ |
  cis'4 r8 e'8 dis'16( e'16 cis'8) ~ cis'4 ~ |
  cis'4 r8 e'8 dis'16( e'16 cis'8) ~ cis'4 ~ |
  cis'4 r8 e'8 dis'16( e'16 cis'8) ~ cis'4 ~ |
  cis'4 r8 e'8 dis'16( e'16 cis'8) ~ cis'4 ~ |
  cis'4 r8 e'8 dis'16( e'16 cis'8) ~ cis'4 ~ |
  cis'4 r8 e'8 dis'16( e'16 cis'8) ~ cis'4 ~ |
  cis'8 r cis' r cis' r |
  cis'8 r cis' r cis' r |
  cis'8 r cis' r cis' r |
  cis'8 r cis' r cis' r |
  cis'8 r cis' r cis' r |
  \tuplet 3/2 { cis'8 \< r cis' } r cis' r |
  \tuplet 3/2 { cis'8 r cis' } r cis' r |
  \tuplet 3/2 { cis'8 r cis' } r cis' r |
  \tuplet 3/2 { cis'8 r cis' } r cis' r |
  \tuplet 3/2 { cis'8 r cis' } r cis' r |
  \tuplet 3/2 { cis'8 r cis' } r cis' r |
  \tuplet 3/2 { cis'8 r cis' } r cis' r |
  \tuplet 3/2 { cis'8 r cis' } r cis' r |
  \tuplet 3/2 { cis'8 r cis' } r |
  \tuplet 3/2 { cis'8 r cis' } r |
  \tuplet 3/2 { cis'8 r cis' } r |
  b8 \mf r b
  \tuplet 3/2 { cis'8 r cis' } r |
  b8 r b
  \tuplet 3/2 { cis'8 r cis' } r |
  b8 r b
  \tuplet 3/2 { cis'8 r cis' } r |
  b8 r b
  \tuplet 3/2 { cis'8 r cis' } r |
  b8 r b
  \tuplet 3/2 { cis'8 r cis' } r |
  b8 r b cis'8 r cis' r |
  b8 r b cis'8 r cis' r |
  cis'8 r cis' r cis'8 r e' r cis'8 r d' |
  cis'8 r cis' r cis'8 r e' r cis'8 r d' |
  cis'8 \> r cis' r cis'8 r e' r cis'8 r d' |
  cis'8 r cis' r cis'8 r e' r cis'8 r d' |
  cis'8 r cis' r cis'8 r e' r cis'8 r d' |
  cis'8 r cis'( e'-.) cis' r cis' r cis' e' cis' |
  cis'8 \< r cis'( e'-.) cis' r cis' r cis' e' cis' |
  cis'8 r cis' e'( cis'-.) r cis' r cis'-. e'( cis') |
}

miniTrb =  {
  b8 \mp r b cis'( b-.) r b r b8 cis'-. b( g) | % 2
  b8 r b cis'( b-.) r b r b cis'-. b( g) | % 3
  b8 r b cis'( b-.) r b r b cis'-. b( g) | % 4
  b8 r b cis'( b-.) r b r b cis' | % 5
  b8 r b cis'( b-.) r b r b cis' |
  r8 b r r4 cis'8 b( cis'-.) r |
  r8 b r r4 cis'8 b( cis'-.) r |
  r8 b r r4 cis'8 b( cis'-.) r |
  r8 b r r4 cis'8 b( cis'-.) r |
  r8 b r r4 cis'8 b( cis'-.) r |
  r8 b r4 r8 cis'8 b( cis'-.) |
  r8 b r4 r8 cis'8 b( cis'-.) |
  r8 b r4 r8 cis'8 b( cis'-.) |
  r8 b r4 r8 cis'8 b( cis'-.) |
  r8 b r4 r8 cis'8 b( cis'-.) |
  r8 b r4 r8 cis'8 b( cis'-.) |
  r8 b r4 r8 cis'8 b( cis'-.) |
  r8 b r4 r8 cis'8 b( cis'-.) |
  r8 b r8 cis'8 b( cis'-.) |
  r8 b r8 cis'8 b( cis'-.) |
  r8 b r8 cis'8 b( cis'-.) |
  r8 b r8 cis'8 b( cis'-.) |
  r8 b r8 cis'8 b( cis'-.) |
  r8 b \< r8 cis'8( b-.) |
  r8 b r8 cis'8( b-.) |
  r8 b r8 cis'8( b-.) |
  r8 b r8 cis'8( b-.) |
  r8 b r8 cis'8( b-.) |
  r8 b r8 cis'8( b-.) |
  r8 b r8 cis'8( b-.) |
  r8 b r8 cis'8( b-.) |
  b cis'8( b-.) |
  b cis'8( b-.) |
  b cis'8( b-.) |
  fis8 \mf r g( a-.) r g |
  fis8 r g( a-.) r g |
  fis8 r g( a-.) r g |
  fis8 r g( a-.) r g |
  fis8 r g( a-.) r g |
  fis8 r g( a-.) r g r |
  fis8 r g( a-.) r g r |
  r8 b r cis' r4 dis'8( cis'-.) r b r |
  r8 b r cis' r4 dis'8( cis'-.) r b r |
  r8 b \> r cis' r4 dis'8( cis'-.) r b r |
  b8 r b cis'( b-.) r b r b-. cis'( b) |
  b8 r b cis'( b-.) r b r b-. cis'( b) |
  b8 r b cis'( b-.) r b r b-. cis'( b) |
  b8 \< r b cis'( b-.) r b r b-. cis'( b) |
  b8 r b cis'( b-.) r b r b-. cis'( b) |
}

miniTba =  {
  g,8 \mp r g, b,-.( g,-.) r g, r g, b,-.( g,8-. dis,-.) | % 2
  g,8 r g, b,-.( g,-.) r g, r g, b,-.( g,-. dis,-.) | % 3
  g,8 r g, b,-.( g,-.) r g, r g, b,-.( g,-. dis,-.) | % 4
  r8 g, \mf r r4 b,8-.( g,-. b,-.) r4 |
  r8 g, r r4 b,8-.( g,-. b,-.) r4 |
  r8 g, r r4 b,8-.( g,-. b,-.) r8 |
  r8 g, \mp r r4 b,8-.( g,-. b,-.) r8 |
  r8 g, r r4 b,8-.( g,-. b,-.) r8 |
  r8 g, r r4 b,8-.( g,-. b,-.) r8 |
  r8 g, r r4 b,8-.( g,-. b,-.) r8 |
  r8 g, r4 r8 b,8-.( g,-. b,-.) |
  r8 g, r4 r8 b,8-.( g,-. b,-.) |
  r8 g, r4 r8 b,8-.( g,-. b,-.) |
  r8 g, r4 r8 b,8-.( g,-. b,-.) |
  r8 g, r4 r8 b,8-.( g,-. b,-.) |
  r8 g, r4 r8 b,8-.( g,-. b,-.) |
  r8 g, r4 r8 b,8-.( g,-. b,-.) |
  r8 g, r4 r8 b,8-.( g,-. b,-.) |
  e,8 r g, r b,-.( g,-.) |
  e,8 r g, r b,-.( g,-.) |
  e,8 r g, r b,-.( g,-.) |
  e,8 r g, r b,-.( g,-.) |
  e,8 r g, r b,-.( g,-.) |
  e,8. \< ( g,16-.) r8 b,-.( g,-.) |
  e,8.( g,16-.) r8 b,-.( g,-.) |
  e,8.( g,16-.) r8 b,-.( g,-.) |
  e,8.( g,16-.) r8 b,-.( g,-.) |
  e,8.( g,16-.) r8 b,-.( g,-.) |
  e,8.( g,16-.) r8 b,-.( g,-.) |
  e,8.( g,16-.) r8 b,-.( g,-.) |
  e,8.( g,16-.) r8 b,-.( g,-.) |
  e,8.( g,16-.) b,8-. |
  e,8.( g,16-.) b,8-. |
  e,8.( g,16-.) b,8-. |
  b,8 \mf r4 a,8 r4 |
  b,8 r4 a,8 r4 |
  b,8 r4 a,8 r4 |
  b,8 r4 a,8 r4 |
  b,8 r4 a,8 r4 |
  b,8 r4 a,8 r4 g,8 |
  b,8 r4 a,8 r4 g,8 |
  g,8 r g,-.( b,-. g,-.) r g, r g, b, g, |
  g,8 r g,-.( b,-. g,-.) r g, r g, b, g, |
  g,8 \> r g,-.( b,-. g,-.) r g, r g, b, g, |
  g,8 r g,-.( b,-. g,-.) r g, r g, b, g, |
  g,8 r g,-.( b,-. g,-.) r g, r g, b, g, |
  g,8 r g,-.( b,-. g,-.) r g, r g, b, g, |
  g,8 \< r g,-.( b,-. g,-.) r g, r g, b, g, |
  g,8 r g,-.( b,-. g,-.) r g, r g, b, g, |
}
