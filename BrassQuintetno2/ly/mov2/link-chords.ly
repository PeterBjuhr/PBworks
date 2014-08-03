\version "2.19.6"

lncGlobNot = {
  \tempo 4=88
   \time 4/4 s1*32
   \bar "||"
}

lncGD = {
  s1*32
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Trumpet 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

colorTrpI = \relative c'' {
  es2.\p ~ es8 d(
  es1) ~
  es2. ~ es8 d(
  es4. d8-. ) r2
  g2. d8( es)
  g2( f-.)
  es1\< ~
  es2 es4-.\mp r
}

classiTrpI = \relative c''{
  es1 ~
  es ~
  es2. des8 ( c
  bes2.) ~ bes8 b(
  c1) ~
  c ~
  c2. cis8( dis)
  e2( es4.) r8
}

crazyTrpI = \relative c'' {
  es1\f--
  e--
  r4 as,2-- as4-.
  gis1--
  b--
  d--
  cis--
  r4 d2-- d4-.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Trumpet 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

colorTrpII = \relative c' {
  d2\p ~ d8 es( d bes')
  as1
  as2 ~as8 bes( d! des)
  c1
  r4 c2 c4-.
  r4 bes r c-.
  as1 ~ \<
  as2 bes4\mp r
}

classiTrpII = \relative c'{
  es1 (
  c
  bes
  as2.) ~ as8 des(
  c1) (
  bes
  as2.) ~ as8 d
  c4 r c r8 d'-.
}

crazyTrpII = \relative c'' {
  c1--\f
  b--
  r4 f2-- f4-.
  fis1--
  g--
  bes--
  a--
  r4 c2-- c4-.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% horn
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

colorHrn = \relative c' {
  bes1\p( 
  as) ~
  as2. \tuplet 3/2 { c8( des8.-.) d16 ( }
  a1)
  r4 as2 as4-.
  r8 g ~ g4 r8 a ~ a4
  as1 ~ \<
  as2 g4-. \mp r
}

classiHrn = \relative c' {
  \tag #'c-score { \clef bass }
  c1(
  as
  g
  f)
  a(
  g
  f
  a4) r a-. r
}

crazyHrn = \relative c' {
  \tag #'c-score { \clef bass }
  as1--\f
  g--
  r4 d2-- d4-.
  d1--
  g--
  g--
  fis--
  r4 a2-- a4-.
}
  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Trombone
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

colorTbn = \relative c' {
  g2.\p es8( d)
  c2. des8( es) 
  f1
  fis2. f8( es)
  d2. d4-.
  es4 r f-. r
  c2. \< des8( es) 
  f2 es4-. \mp r
}

classiTbn = \relative c' {
  as1(
  es)
  es(
  des)
  f(
  c)
  d(
  fis4) r fis-. r
}

crazyTbn = \relative c {
  des1--\f
  e--
  r4 bes2-- bes4-.
  b1--
  e--
  es--
  dis--
  r4 f2-- f4-.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tuba
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

colorTba = \relative c {
  g2.\p r8 bes-.
  c,2. r4
  des2. r8 des-.
  d2. r4
  bes2. d4-.
  es4 r f-. r
  c2. \< r16 c8.-.
  des4 r des-. \mp r
}

classiTba = \relative c {
  as1
  es
  es
  des
  f
  c
  bes
  d4 r d-. r
}

crazyTba = \relative c, {
  des4.\f r8 r4. des8-.
  cis4. r8 r4. cis8-.
  des4. r8 r4. des8-.
  cis4. r8 r4. cis8-.
  dis4. r8 r4. dis8-.
  es4. r8 r4. es8-.
  dis4. r8 r4. dis8-.
  es4. r8 r4. es8-.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Collecting variables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lncTrpI = { \colorTrpI \classiTrpI \colorTrpI \crazyTrpI }

lncTrpII = { \colorTrpII \classiTrpII \colorTrpII \crazyTrpII }

lncHrn = { \colorHrn \classiHrn \colorHrn \crazyHrn }

lncTbn = { \colorTbn \classiTbn \colorTbn \crazyTbn }

lncTba = { \colorTba \classiTba \colorTba \crazyTba }
