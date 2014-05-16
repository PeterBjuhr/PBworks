
\version "2.14.0"
% originally converted from ngp.xml

\header {
    copyright = \markup {\center-column {"© 2012 Peter Bjuhr" \line {Performance Restricted Attribution Non-commercial No Derivatives 1.0}}}
    title = \markup \abs-fontsize #24 {\center-column {"Mapping the Genome"}}
    %subtitle = \markup \abs-fontsize #21 {"Mapping the World"}
    composer = \markup {\right-column {"Peter Bjuhr" \line {2012}}}
    
}

modernAccidentals = {
  \set Staff.extraNatural =  ##f
  \set Staff.autoAccidentals =  #'(Staff (same-octave . 1) (any-octave . 0))
  \set Staff.autoCautionaries =  #'()  
}

\paper{
  
  #(set-paper-size "a4")
  
  top-margin = 16\mm
  left-margin = 23\mm
  line-width = 176\mm
  bottom-margin = 9\mm
  
  system-system-spacing = 
  #'((basic-distance . 16)
       (minimum-distance . 11)
       (padding . 5)
       (stretchability . 11))
   
  last-bottom-spacing = #'((basic-distance . 16)
                           (minimum-distance . 11)
                           (padding . 5)
                           (stretchability . 11))
  
  print-page-number = ##t
  %print-first-page-number = ##f
  oddHeaderMarkup = \markup \fill-line { " " }
  evenHeaderMarkup = \markup \fill-line { " " }
  oddFooterMarkup = \markup { \fill-line {
     \fontsize #2 
     \on-the-fly #print-page-number-check-first
    \fromproperty #'page:page-number-string }
       \fill-line{
    \on-the-fly #first-page
    \fromproperty #'header:copyright
  } }
  evenFooterMarkup = \markup { 
    \fill-line{
     \fontsize #2 \on-the-fly #print-page-number-check-first
     \fromproperty #'page:page-number-string }}
}


\layout {
  #(layout-set-staff-size 19)
    \context { \Score
        autoBeaming = ##f
	 \override Beam #'beam-thickness = #0.46
	  \override Beam #'auto-knee-gap = #4.0
	  \override SpacingSpanner #'spacing-increment = #1.0
	  \override Stem #'stemlet-length = #0.6
	  \override Slur #'height-limit = #1.5
        }
    }
    
    \include "barre.ly"
    
    
    oneUpper = \relative g'' {
      \mark \default
       \stemUp 
    d4 \rest \mp es4-4 g2-3 | 
    b,4.-0 c16-1 ( [ d16-3 ) ] d4 f4 \rest | % 11
    | % 11
    g8.-3 \< [ c,16 ~ ] 
    c16 [ d8-4 fis16-2 ~ ] fis16 [ gis,8 fis'!16 ~ ] fis16 [ gis,8. ]
    | % 12
    <b-0>8. \f [ <e-0>16 ~ ] e16 [ b8 e16 ~ ] e16 [ b8 e16 ~ ] e16 [ b8. ] | % 13
    | % 13
    bes4 \! \mf \< <es-2>4
    des4 ges4 | % 14
    e4 <a!>4 <ais-3>4 <e'-4>4 | % 15
      
    }
    
    
    oneLower = \relative c' {
       c8-2  [ g'8-0 es8-1 g8 ] c,8 [ g'8 es8 g8 ] | 
    b,8-2 [ g'8-0 d8-0 g8 ] d8 [ g8 b8-0 c8-1 ~ ] | % 11
    | % 11
    \barre "I" #0 #UP #'(-0.5 . -1) #8 #1 
    c8  [ g8-0 es8 \startTextSpan f!8-3 ] bes,8 [ f'!8 es8 f!8 ] \stopTextSpan
    | % 12   
    c8 \rest <g'-0>8 [ e8 g8 ] e,8 [ b'8 <g-3>8 b8 ] | % 13
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1    
    g8 \startTextSpan [ g'8 d8 g8 ] \stopTextSpan
    \barre "VI" #0 #UP #'(-0.5 . -1) #8 #1 
    bes,8 \startTextSpan [ bes'!8 f8 bes8 ] \stopTextSpan | % 14
    \barre "IX" #0 #UP #'(-0.5 . -1) #8 #1 
    cis,8 \startTextSpan [ <cis'>8 <gis>8 cis8 ] <dis,-2>8 [ e'8 b8 e8 ] \stopTextSpan | % 15
    }
    
    %DNA = 2
    DNA = \relative g'' {
       \stemNeutral
    \mark \default
    <a,,-0 g'-0 c-1>2 \! \mf e16 [ b'16 g'16 <a-2>16 ] a16 [ a16 a16 a16 ] | % 18
    \barre "I" #0 #UP #'(-0.5 . -1) #8 #1 
    f,16 \startTextSpan [ a'16 bes,16 c'16 ] f,,16 [ c''16 a16 \stopTextSpan e,16 ]  
    b'16 [ f16 g'16 c16 \startTextSpan ] bes,16 [ a'16 a16 a16 ] | % 19
    a16 \stopTextSpan [ e,16 a'16 a16 ] g16 [ a16 c16 a16 ] g16 [ b,!16 a'16 a16 ] a16
    [ a16 c16 a16 ] | 
    g16 [ b,16 a'16 c16 ] a16 [ g16 f,16 b16 ] e,16 [ a'16 a16 a16 ] f,16
    [ a'16 f,16 b16 ] | % 21
    e,16 [ a'16 f,16 a'16 ] a16 [ a16 a16 a16 ] e,16 [ a'16 g16 g16 ] a16
    [ a16 a16 g16 ] | % 22
    e,16 [ b'16 f16 g'16 ] g16 [ c16 a16 a16 ] a16 [ a16 a16 g16 ] a16 [
    g16 a16 g16 ] | % 23
    g16 [ a16 g16 e,16 ] a'16 [ c16 a16 c16 ] a16 [ c16 c16 f,,16 ] g'16
    [ a16 c16  \startTextSpan bes,16 ] | % 24
    a'16 [ c16 f,,16 \stopTextSpan g'16 ] a16 [ g16 e,16 b'16 ] g'16 [ c16  e,,16 g'16
    ] e,16 [ g'16 <a,-0 g'-0 c-1>8 ] | 
    }
    
    femUpper = \relative g'' {
      \stemUp
    \mark \default
    <b,-2>4 <e-4>4 d4 g4 | % 42
    e!4 <ais-3>4 ais4 e'4 | % 43
    ais,,4 dis4 cis4 fis4 | % 44
    es4 a!4 a4 es'4 | % 45
    a,,4 d4
    c4 f4 | % 46
    d!4 gis4 gis4 d'4 | % 47
    <gis,,-1>4 <cis-3>4 
    <b-2>4 <e-4>4 | % 48
    d4 g4
    e4 ais4 | % 49
    }
    
    femLower = \relative c'' {
       \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    g,8 \startTextSpan [ f'8 <d-3>8 f8 ] \stopTextSpan
    \barre "VI" #0 #UP #'(-0.5 . -1) #8 #1 
    bes,8 \startTextSpan [ a'8 f8 a8 ] \stopTextSpan | % 42
    \barre "IX" #0 #UP #'(-0.5 . -1) #8 #1 
    cis,8 \startTextSpan [ b'8 <gis-2>8 b8 ] <dis,-2>8 [ e'8 b8 e8 ] \stopTextSpan | % 43
    \barre "II" #0 #UP #'(-0.5 . -1) #8 #1 
    fis,,8 \startTextSpan [ e'8 cis8 e8 ] \stopTextSpan 
    \barre "V" #0 #UP #'(0 . -1) #8 #1 
    a,8 \startTextSpan [ g'8 e8 g8 ] \stopTextSpan | % 44
    \barre "VIII" #0 #UP #'(-0.5 . -1) #8 #1 
    c,!8 \startTextSpan [ bes'8 g!8 bes8 ] d,!8 [ es'8 bes8 es8 ] \stopTextSpan | % 45
    \barre "I" #0 #UP #'(-0.5 . -1) #8 #1 
    f,,!8 \startTextSpan [ es'8 c8 es8 ] \stopTextSpan 
    \barre "IV" #0 #UP #'(-0.5 . -1) #8 #1 
    as,8 \startTextSpan [ ges'8 es!8 ges8 ] \stopTextSpan | % 46
    \barre "VII" #0 #UP #'(-0.5 . -1) #8 #1 
    b,!8 \startTextSpan [ a'8 fis8 a8 ] cis,8 [ d'!8 a8 d8 ] \stopTextSpan | % 47
    e,,8 [ d'8 <b-2>8 d8 ] 
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    g,8 \startTextSpan [ f'!8 <d-3>8 f8 ] \stopTextSpan | % 48
    \barre "VI" #0 #UP #'(-0.5 . -1) #8 #1 
    bes,8 \startTextSpan [ a'8 f8 a8 ] \stopTextSpan 
    \barre "IX" #0 #UP #'(0 . -1) #8 #1 
    cis,8 \startTextSpan [ b'8 gis8 b8 ] \stopTextSpan | % 49
      
    }
    
    
    nine = \relative g'{
      \stemNeutral
    \mark \default
     \numericTimeSignature\time 4/4
    \times 2/3  {
        <b-2>4 <e-3>4 <g-1>4 }
    g8 [ g8 ] \times 2/3 {
        g8 [ g8 g8 ] }
    | % 74
    \time 10/8
    b16 [ b16 <b,-0>16 b16 b,16 b16 ] 
      g8. [ <g'-0>8 g'8. g'8 g,8 g,8 ] 
    | % 75
    \once \override TupletNumber #'text = #tuplet-number::calc-fraction-text
    \times 5/6  {
      \slurDown
        e,8 [e'8 <e'-0>8 e'8 (e,8) e,8 ] (}
    e,) [ e' (d16) c16 ] ( b16) [ b16 b16 b16 ] | % 76
    \numericTimeSignature\time 4/4
    \times 2/3  {
        b8 [ b8 b8 ] }
    \times 2/3  {
        b''8 [ b8 b8 ] }
    \times 4/5  {
        b,8 [ b8 b8 b8 g8 ] }
    | % 77
    
    }
    
    
PartPOneVoiceOne =  \relative g' {
    \transposition c \clef "treble" \key c \major
    \numericTimeSignature\time 4/4 | % 1
    \override Score.BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
     \override Score.MetronomeMark #'extra-offset = #'(0 . 2)
     
    \small
    \override NoteHead #'font-size = #1
   
    
    \tempo 4=108
    \stemNeutral
    \set fingeringOrientations = #'(left)
    \override Fingering #'staff-padding = #'()
    \override StringNumber #'add-stem-support = ##t
    <g-0>8 \f [ g8 ] \times 2/3 {
        g8 [ g8 g8 ] }
    b16-0 [ b16 b16 b16 ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] }
    | % 2
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1   
    g,8 \startTextSpan [ g'8 ] g'8 [ c,16 ( b16 ) ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] \stopTextSpan  }
       a8 ( [ g8 ) ] | % 3
    \times 2/3  {
        e,4 e'4 e'4 }
    \times 4/7  {
        g,8 [ g8 b8 b8 dis8 dis8 dis8 ] }
    | % 4
    \times 2/3  {
      \set stringNumberOrientations = #'(down)
      <e\2>4 <e,\5>4 e,4 }
    \times 4/6  {
      \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
        g16 \startTextSpan [ d'16 g16 bes16 d16 g16 ~ ] }
     
    g16 [ g16 g16 g16 ] | % 5
    
    g,8 [ g8 ] \times 2/3 {
        g8 [ g8 g8 ] }
      %\set stringNumberOrientations = #'(up)
      b16 [ b16 b16 b16 ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] }
    | % 6
    g,4 \times 2/3 {
        <fis'-2>8 [ fis8 fis8 ] }
    g16 [ g16 g16 g16 ] \times 4/5 {
        <b-2>16 [ b16 b16 b16 b16 ] \stopTextSpan }
    | % 7
    \set subdivideBeams = ##t
    
  
    \times 4/5  {
      \barre "II" #0 #UP #'(-0.5 . -1) #8 #1 
        b,16 \startTextSpan [ fis'16 b16 d16 fis16 ~ ] }
    fis16 [ fis16 fis16 fis16 ] \times 4/6 {
        fis,,16 [ cis'16 fis16 a16 cis16 fis16 ~ ] }
    % Set beam sub-group length to an eighth note
    \set baseMoment = #(ly:make-moment 1 8)
    fis16 [ fis16 \times 2/3 {
        fis16 ( g16-2 fis16 ) ] \stopTextSpan  }
    | % 8
    \set baseMoment = #(ly:make-moment 1 4)
    e,,16 [ <b'-2>16 <dis-1>16 g16 ] b16 [ e8 e16 ] 
    \set baseMoment = #(ly:make-moment 1 8)
    \times 2/3 {
        e16 [ e16 e16 }
    \times 4/5  {
        e16 e16 e16 e16 e16 }
    \times 2/3  {
        e16 e16 b16^"l.v." \laissezVibrer ] }
    | % 9
    \set Score.markFormatter = #format-mark-box-numbers
    
    \set baseMoment = #(ly:make-moment 1 4)
   
   \oneUpper
   
   \override DynamicLineSpanner #'Y-extent = #'(0 . 0)
  \override Hairpin #'Y-offset = #-1.3
    b16 \f \! 
    [ dis'16-\tweak #'X-offset #-0.1
-\tweak #'Y-offset #5.1 
-3
\> dis16 dis16 ] a,16 [ d'16 d16 d16 ] g,,16 [
    cis'16 cis16 cis16 ] fis,,16 [ b'16 b16 b16 ] | % 16
    \override Stem #'(details beamed-lengths) = #'(3.8)
    e,,16 [ ais'16
    -\tweak #'X-offset #-0.1
-\tweak #'Y-offset #3.7 
    -1
    ais16 ais16 ] 
    % \set fingeringOrientations = #'(left)
    \revert Stem #'details
    \barre "V" #0 #UP #'(-0.5 . -0.5) #8 #1 
    \once\override TextSpanner #'outside-staff-priority = ##f
    \once\override TextSpanner #'Y-offset = #8.3
    %\once\override TextSpanner #'arrow-length = #5
    d,,16 \startTextSpan [ a''16 a16 a16 ] \stopTextSpan 
    \barre "III" #0 #UP #'(0 . -1) #8 #1 
    \once\override TextSpanner #'outside-staff-priority = ##f
    \once\override TextSpanner #'Y-offset = #8.3
    \once\override TextSpanner #'X-offset = #3
    des,,16 \startTextSpan [ g'16 g16 g16 ] \times 4/5 {
        c,,16 [ g'16 c16 <es-2>16 g16 ] \stopTextSpan }
    | % 17
    
    \revert DynamicLineSpanner #'Y-extent
    \revert Hairpin #'Y-offset
    
    %insert DNA section
   \DNA
   
    \mark \default
    \times 2/3  {
        e'8-4 \mp \< [ e,8-1 (f8-2) ] }
    \times 2/3  {
        g8-4 [ b8-4 e,8 (] }
    \times 2/3  {
        f8) [ e'8 gis,8 (] }
    \times 2/3  {
        a8) [ b8 fis8-3 ] }
    | % 26
    \time 10/8  \times 2/3 {
        c8-2 [ (des8-3) g8-4 ] }
    \times 2/3  {
        e8-1 [ (f!8-2) b8 ] }
    f8 [ d8-4 g,8 ] es8 [ b8 e,!8 \mf \! ] | % 27
    \stemUp
    \time 12/8
    <e''-0>4  <c-2>8 e4 <f-1>8 <g-4>4 f8 e4 c8 | % 28
    e4 c8 e4 f8 g4 f8 e4 c8 | % 29
    e4 g8 c,4 f8 e4 g8 c,4 f8 | \barNumberCheck #30
    e4 g8 f4 a8 g4 e8 f4 a8 | % 31
    g4 f8 g4 a8 b4 a8 g4 f8 | % 32
    g4 f8 g4 a8 b4 a8 g4 f8 | % 33
    
    \DNA
    
    \femUpper
    
    \break
    \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
    \mark \default
    \defaultTimeSignature
    \time 2/2
    a16 \rest \f <b,-0>8 [ <e-0>8 <g,-0>8 b16 ~ ] b8 [ e8 <d-3>8 b8 ] | \barNumberCheck
    #50
    | \barNumberCheck #50
    a'16 \rest \> <c,-1>8 [ <e-0>8 <d-3>8. ] 
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    es8 \startTextSpan [ g8 es8 f,8 ] \stopTextSpan | % 51
    a'8 \rest \mp \! b,4 e8 ~ e8 g,4 b8 ~ | % 52
    b4 e4 d4 b4 | % 53
    a'8 \rest c,4 e8 ~ e8 d4. | % 54
    es4 \startTextSpan g4 es4 a,4 \stopTextSpan | % 55
    \stemNeutral   
    e,8 ^\markup { "pizz./palm mute" } [ b''8 e,8 e'8 ] e,8 [ g8 e8 b'8 ] | % 56
    g,8 [ d''8 g,8 c8 ] f,8 [ a8 es8 g8 ] | % 57
    \mark \default
    e,8 [ a'8 f,8 a'8 ] a8 [ a8 a8 a8 ] | % 58
    e,8 [ a'8 g8 g8 ] a8 [ a8 a8 g8 ] | % 59
    e,8 [ b'8 f8 g'8 ] g8 [ c8 a8 a8 ] | \barNumberCheck #60
    a8 [ a8 a8 g8 ] a8 [ g8 a8 g8 ] | % 61
    g8 [ a8 g8 e,8 ] a'8 [ c8 a8 c8 ] | % 62
    \barre "I" #0 #UP #'(-0.5 . -1) #8 #1 
    a8 [ c8 c8 f,,8 ] g'8 [ a8 c8 \startTextSpan bes,8 ] | % 63
    a'8 [ c8 f,,8 \stopTextSpan g'8 ] a8 [ g8 e,8 b'8 ] | % 64
    g'8 [ c8 e,,8 g'8 ] e,8 [ g'8 ] <a, g' c>4 ^\markup \center-align {ord.} | % 65
    \stemUp
    \mark \default
    <c'-1>4 <e-0>4 <g-4>2 | % 66
    <e-2>4. d16 ( [ c16 ]) d2 | % 67
    b4 dis4 <fis-4>2 | % 68
    e4. d16 ( [ c16 ]) d2  | % 69
    bes4 d4 <f-4>2 | \barNumberCheck #70
    e4. c16 ( [ bes16 ]) c2  | % 71
    b4 dis4 fis2 | % 72
    e4. d16 ( [ c16 ]) d2  | % 73
    
    \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
    
   \nine 
    
    g,8 \mf [ g8 ] \times 2/3 {
        g8 [ g8 g8 ] }
    b16 [ b16 b16 b16 ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] }
    | % 78
     \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    g,4 \startTextSpan \times 2/3 {
        fis'8 [ fis8 fis8 ] }
    g16 [ g16 g16 g16 ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] \stopTextSpan } 
    | % 79
     \barre "II" #0 #UP #'(-0.5 . -1) #8 #1 
    \times 4/5  {
        b,16 \startTextSpan [ fis'16 b16 d16 fis16 ~ ] }
    fis16 [ fis16 fis16 fis16 ] \times 4/6 {
        fis,,16 [ cis'16 fis16 a16 cis16 fis16 ~ ] }
    fis16 [ fis16 \times 2/3 {
      \slurUp
        fis16 ( g16 fis16 ) ]\stopTextSpan } 
    | \barNumberCheck #80
    e,,16 [ b'16 dis16 g16 ] b16 [ e8 e16 ] 
    \set baseMoment = #(ly:make-moment 1 8)
    \times 2/3 {
        e16 [ e16 e16 }
    \times 4/5  {
        e16 e16 e16 e16 e16 }
    \times 2/3  {
        e16 e16 b16 \laissezVibrer ] }
      
    | % 81
    \stemUp
    \set baseMoment = #(ly:make-moment 1 4)
    
    \oneUpper
    
    b16 \f \! [ dis'16 \> dis16 dis16 ] a,16 [ d'16 d16 d16 ] g,,16 [
    cis'16 cis16 cis16 ] fis,,16 [ b'16 b16 b16 ] | % 88
    \barre "V" #0 #UP #'(-0.5 . -1) #8 #1 
    e,,16 [ ais'16 ais16 ais16 ] d,,16 \startTextSpan [ a''16 a16 a16 ] \stopTextSpan
    \barre "III" #0 #UP #'(0 . -1) #8 #1 
    des,,16 \startTextSpan [ g'16 g16 g16 ] \times 4/5 {
        c,,16 [ g'16 c16 es16 g16 ] }
    | % 89
    \once \override Score.RehearsalMark #'outside-staff-priority = ##f
    \once \override Score.RehearsalMark #'Y-offset = #7.7
    \mark \default
    \stemNeutral
    \once \override TextScript #'outside-staff-priority = ##f
    \once \override TextScript #'Y-offset = #6.6
    \once \override TextScript #'X-offset = #0.9 
    <c,, g' c es g>4. \! \mf ^\markup {strumming} <c' es g>8 <c, g' c es g>8 [ <c g' c es g>8
    ] <c g' c es g>8 [ <c g' c es g>16 <c g' c es g>16 ] \stopTextSpan |
    \barNumberCheck #90
     %\barre "II" #0 #UP #'(-0.5 . -1) #8 #1 
     \once \override Script #'padding = #8
    <fis, cis' fis a cis fis>4 ^ \markup { \center-align { \null \raise #1.4  \small { "CII" } } }
     \barre "IV" #0 #UP #'(-0.5 . -1) #8 #1 
    <cis' gis' cis e gis>4 \startTextSpan <cis gis' cis e gis>8 
    [ <cis gis' cis e gis>8 <cis gis' cis e gis>8 <cis gis' cis e gis>8 ] \stopTextSpan | % 91
    \barre "V" #0 #UP #'(-0.5 . -1) #8 #1 
    \time 6/8  <a e' a c e a>8 \startTextSpan [ <a e' a c e a>8. <a e' a c e a>16 ] 
    <a e' a c e a>8 [ <a e' a c e a>8. <a e' a c e a>16 ] | % 92
    <d a' d fis a>8 [ <d a' d fis a>16 <d a' d fis a>16 <d a' d fis a>8
    ] <d a' d fis a>8 [ <d a' d fis a>16 <d a' d fis a>16 <d a' d fis a>8
    ] | % 93
    \time 5/8  <a e' a c e a>8 [ <a e' a c e a>16 <a e' a c e a>16 
    <a e' a c e a>8 ] <a dis-2 a'-3 dis-4 e a>4 \stopTextSpan | % 94
    \numericTimeSignature\time 4/4  
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    <c g' c es g>4. \startTextSpan <c' es g>8 <c, g' c
        es g>8 [ <c g' c es g>8 ] <c g' c es g>8 [ <c g' c es g>16 <c g'
        c es g>16 ] \stopTextSpan | % 95
    \time 6/8  <a-0 e'-2 a-3 c-1 e-0>8 
    [ <a e' a c e>8. <a e' a c e>16 ] <a e' a c
        e>8 [ <a e' a c e>8. <a e' a c e>16 ] | % 96
    \time 5/8  <a e' a c e>8 [ <a e' a c e>16 <a e' a c e>16 <a e' a c
        e>8 ] <a dis-1 a'-2 dis-4 e>4 | % 97
	\stemUp
    \numericTimeSignature\time 4/4  
    
    \femUpper
    
    \defaultTimeSignature 
    \time 2/2
    \stemNeutral
    e8 \p [ a'8 f,8 a'8 ] a8 [ a8 a8 a8 ] | % 106
    e,8 [ a'8 g8 g8 ] a8 [ a8 a8 g8 ] | % 107
    e,8 [ b'8 f8 g'8 ] g8 [ c8 a8 a8 ] | % 108
    a8 [ a8 a8 g8 ] a8 [ g8 a8 g8 ] | % 109
    g8 [ a8 g8 e,8 ] a'8 [ c8 a8 c8 ] | \barNumberCheck #110
    \barre "I" #0 #UP #'(-0.5 . -1) #8 #1 
    a8 [ c8 c8 f,,8 ] g'8 [ a8 c8 \startTextSpan b,8 ] | % 111
    a'8 [ c8 f,,8 \stopTextSpan g'8 ] a8 [ g8 e,8 b'8 ] | % 112
    g'8 [ c8 e,,8 g'8 ] e,8 [ g'8 ] <a, g' c>4 | % 113
    
    \nine
    
    % 117
    g'8 \mp [ g8 ] \times 2/3 {
        g8 [ g8 g8 ] }
    b16 [ b16 b16 b16 ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] }
    | % 118
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    g,4 \startTextSpan \times 2/3 {
        fis'8 [ fis8 fis8 ] }
    g16 [ g16 g16 g16 ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] \stopTextSpan }
    | % 119
    \barre "II" #0 #UP #'(-0.5 . -1) #8 #1 
    \times 4/5  {
        b,16 \startTextSpan \< [ fis'16 b16 d16 fis16 ~ ] }
    fis16 [ fis16 fis16 fis16 ] \times 4/6 {
        fis,,16 [ cis'16 fis16 a16 cis16 fis16 ~ ] }
    fis16 [ fis16 \times 2/3 {
      \slurUp
        fis16 ( g16 fis16 ) ] \stopTextSpan }
    | \barNumberCheck #120
    e,,16 [ b'16 dis16 g16 ] b16 [ e8 e16 ] \times 2/3 {
        e16 [ e16 e16 }
    \times 4/5  {
        e16 e16 e16 e16 e16 }
    \times 2/3  {
        e16 e16 b16 ] }
    | % 121
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    <c, g' c es g>4. \startTextSpan \mf \! <c' es g>8 <c, g' c es g>8 
    [ <c g' c es g>8] <c g' c es g>8 [ <c g' c es g>16 <c g' c es g>16 ] \stopTextSpan | % 122
    <fis, cis' fis a cis fis>4 ^\markup {\center-align { \null \raise #1 \small {"CII"}}} 
    \barre "IV" #0 #UP #'(-0.5 . -1) #8 #1 
    <cis' gis' cis e gis>4 \startTextSpan <cis gis' cis e gis>8 
    [ <cis gis' cis e gis>8 <cis gis' cis e gis>8 <cis gis' cis e gis>8 ] \stopTextSpan | % 123
        \barre "V" #0 #UP #'(-0.5 . -1) #8 #1 
    \time 6/8  <a e' a c e a>8 \startTextSpan [ <a e' a c e a>8. <a e' a c e a>16 ] <a e' a c
        e a>8 [ <a e' a c e a>8. <a e' a c e a>16 ] | % 124
    <d a' d fis a>8 [ <d a' d fis a>16 <d a' d fis a>16 <d a' d fis a>8
    ] <d a' d fis a>8 [ <d a' d fis a>16 <d a' d fis a>16 <d a' d fis a>8
    ] | % 125
    \time 5/8  <a e' a c e a>8 [ <a e' a c e a>16 <a e' a c e a>16 <a e' a c
        e a>8 ] <a dis a' dis e a>4 \stopTextSpan | % 126
    \numericTimeSignature\time 4/4  
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    <c g' c es g>4. <c' es g>8 \startTextSpan <c, g' c es g>8 [ <c g' c es g>8 ] <c g' c es g>8 [ <c g' c es g>16 <c g'
        c es g>16 ] \stopTextSpan | % 127
    \time 6/8  <a e' a c e>8 [ <a e' a c e>8. <a e' a c e>16 ] <a e' a c
        e>8 [ <a e' a c e>8. <a e' a c e>16 ] | % 128
    \time 5/8  <a e' a c e>8 [ <a e' a c e>16 <a e' a c e>16 <a e' a c
        e>8 ] <a dis a' dis e>4 | % 129
    \numericTimeSignature\time 4/4  | % 129
    g'8 \f [ g8 ] \times 2/3 {
        g8 [ g8 g8 ] }
    b16 [ b16 b16 b16 ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] }
    | \barNumberCheck #130
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    g,8 \startTextSpan [ g'8 ] g'8 [ c,16 ( b16 ) ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] \stopTextSpan }
    \slurDown
    a8 ( [ g8 ) ] | % 131
    \times 2/3  {
        e,4 e'4 e'4 }
    \times 4/7  {
        g,8 [ g8 b8 b8 cis8 cis8 dis8 ] }
    | % 132
    \times 2/3  {
        e4 e,4 e,4 }
    \times 4/6  {
      \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
        g16 \startTextSpan [ d'16 g16 bes16 d16 g16 ~ ] }
    g16 [ g16 g16 g16 ] | % 133
    g,8 [ g8 ] \times 2/3 {
        g8 [ g8 g8 ] }
    b16 [ b16 b16 b16 ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] }
    | % 134
    g,4 \times 2/3 {
        fis'8 [ fis8 fis8 ] }
    g16 [ g16 g16 g16 ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] \stopTextSpan }
    | % 135
    \barre "II" #0 #UP #'(-0.5 . -1) #8 #1 
    \times 4/5  {
        b,16 \startTextSpan [ fis'16 b16 d16 fis16 ~ ] }
    fis16 [ fis16 fis16 fis16 ] \times 4/6 {
        fis,,16 [ cis'16 fis16 a16 cis16 fis16 ~ ] }
    \set baseMoment = #(ly:make-moment 1 8)
    fis16 [ fis16 \times 2/3 {    
      \slurUp
        fis16 ( g16 fis16 ) ] \stopTextSpan }
    | % 136
    \set baseMoment = #(ly:make-moment 1 4)
    e,,16 [ b'16 dis16 g16 ] b16 [ e8 e16 ] 
    \set baseMoment = #(ly:make-moment 1 8)
    \times 2/3 {
        e16 [ e16 e16 }
    \times 4/5  {
        e16 e16 e16 e16 e16 }
    \times 2/3  {
        e16 e16 b16 ] }
    | % 137
    
    \time 5/8  <a, e' a c e>8 [ <a e' a c e>16 <a e' a c e>16 <a e' a c
        e>8 ] <a dis a' dis e>4 | % 138
    \numericTimeSignature\time 4/4  
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    <c g' c es g>4. \startTextSpan <c' es g>8 <c, g' c
        es g>8 [ <c g' c es g>8 ] <c g' c es g>8 [ <c g' c es g>16 <c g'
        c es g>16 ] \stopTextSpan | % 139
    \time 6/8  <a-0 e'-2 a-3 c-1 e-0>8 [ <a e' a c e>8. <a e' a c e>16 ] <a e' a c
        e>8 [ <a e' a c e>8. <a e' a c e>16 ] | \barNumberCheck #140
    \time 5/8  <a e' a c e>8 [ <a e' a c e>16 <a e' a c e>16 <a e' a c
        e>8 ] <a dis a' dis e>4 | % 141
    \time 6/8  <e-0 b'-2 e-1 g-0 b-0 e-0>8 [ <e b' e g b e>8 <e b' e g b e>8 ] 
    <e-0 ais-2 dis-1 g-0 b-0 e-0>8 [ <e ais dis g b e>8 <e ais dis g b e>8 ] | % 142
    <e a d g b e>8 [ <e a d g b e>8 <e a d g b e>8 ] <e a d g c e>8 [ <e
        a d g c e>8 <e a d g c e>8 ] | % 143
    <e a d g cis-1 fis-2>8 [ <e a d g cis fis>8 <e a d g cis fis>8 ] <e a d
        a'-1 d-2 gis-3>8 [ <e a d a' d gis>8 <e a d a' d gis>8 ] | % 144
    <e a d b'-2 e-\tweak #'X-extent #'(0 . 1) -3 g!-1>8 [ <e a d b' e g>8 <e a d b' e g>8 ] <e a d b'
        dis g>8 [ <e a d b' dis g>8 <e a d b' dis g>8 ] | % 145
    \time 12/8
    \stemUp
    <e''-0>4 \mf <c-2>8 e4 <f-1>8 <g-4>4 f8 e4 c8 | % 146
    e4 c8 e4 f8 g4 f8 e4 c8 | % 147
    e4 g8 c,4 f8 e4 g8 c,4 f8 | % 148
    e4 g8 f4 a8 g4 e8 f4 a8 | % 149
    g4 f8 g4 a8 b4 a8 g4 f8 | \barNumberCheck #150
    g4 f8 g4 a8 b4 a8 g4 f8 | % 151
    \stemNeutral
    \time 10/8  
    g8-1 [ e'8-3 b8-2 ] g8 [ b8 g8 ]
    \times 2/3 {
        e8-1 [ e'8-4 f,8-2 ] }
    \times 2/3  {
        g8-2 [ b8-1 f8-4 ] }
     | % 152
    \numericTimeSignature\time 4/4  \times 2/3 {
        e'8-4 [ e,8-1 (f8-2) ] }
    \times 2/3  {
        g8 [ b8 f8 ] }
    \times 2/3  {
        g8 [ e'8 b8 ] }
    \times 2/3  {
        g8 [ b8 g8 ] }
    | % 153
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    <c,, g' c es g>4. \startTextSpan \f <c' es g>8 <c, g' c es g>8 [ <c g' c es g>8 ]
    <c g' c es g>8 [ <c g' c es g>16 <c g' c es g>16 ] \stopTextSpan | % 154
    <fis, cis' fis a cis fis>4 ^\markup { \center-align { \null \raise #1 \small {"CII"}}} 
      \barre "IV" #0 #UP #'(-0.5 . -1) #8 #1 
      <cis' gis' cis e gis>4 \startTextSpan <cis gis' cis e gis>8 
      [ <cis gis' cis e gis>8 <cis gis' cis e gis>8 <cis gis' cis e gis>8 ] \stopTextSpan | % 155
        \barre "V" #0 #UP #'(-0.5 . -1) #8 #1 
    \time 6/8  <a e' a c e a>8 \startTextSpan [ <a e' a c e a>8. <a e' a c e a>16 ] 
    <a e' a c e a>8 [ <a e' a c e a>8. <a e' a c e a>16 ] | % 156
    <d a' d fis a>8 [ <d a' d fis a>16 <d a' d fis a>16 <d a' d fis a>8
    ] <d a' d fis a>8 [ <d a' d fis a>16 <d a' d fis a>16 <d a' d fis a>8
    ] \stopTextSpan | % 157
    <e,-0 b'-2 e-1 g-0 b-0 e-0>8 [ <e b' e g b e>8 <e b' e g b e>8 ] <e ais dis g b
        e>8 [ <e ais dis g b e>8 <e ais dis g b e>8 ] | % 158
    <e a d g b e>8 [ <e a d g b e>8 <e a d g b e>8 ] <e a d g c e>8 [ <e
        a d g c e>8 <e a d g c e>8 ] | % 159
    <e a d g cis fis>8 [ <e a d g cis fis>8 <e a d g cis fis>8 ] <e a d
        a' d gis>8 [ <e a d a' d gis>8 <e a d a' d gis>8 ] |
    \barNumberCheck #160
    <e b' e b' e g!>8 [ <e b' e b' e g>8 <e b' e b' e g>8 ] <e b' f' b
        dis g>8 [ <e b' f' b dis g>8 <e b' f' b dis g>8 ] | % 161
    \numericTimeSignature\time 4/4  g'8 [ g8 ] \times 2/3 {
        g8 [ g8 g8 ] }
    b16 [ b16 b16 b16 ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] }
    | % 162
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    g,8 \startTextSpan [ g'8 ] g'8 [ c,16 ( b16 ) ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] \stopTextSpan }
    a8 ( [ g8 ) ] | % 163
    \times 2/3  {
        e,4 e'4 e'4 }
    \times 4/7  {
        g,8 [ g8 b8 b8 cis8 cis8 dis8 ] }
    | % 164
    \times 2/3  {
        e4 e,4 e,4 }
    \times 4/6  {
        g16 \startTextSpan [ d'16 g16 bes16 d16 g16 ~ ] }
    g16 [ g16 g16 g16 ] | % 165
    g,8 [ g8 ] \times 2/3 {
        g8 [ g8 g8 ] }
    b16 [ b16 b16 b16 ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] }
    | % 166
    g,4 \times 2/3 {
        fis'8 [ fis8 fis8 ] }
    g16 [ g16 g16 g16 ] \times 4/5 {
        b16 [ b16 b16 b16 b16 ] \stopTextSpan }
    | % 167
    \barre "II" #0 #UP #'(-0.5 . -1) #8 #1 
    \times 4/5  {
        b,16 \startTextSpan [ fis'16 b16 d16 fis16 ~ ] }
    fis16 [ fis16 fis16 fis16 ] \times 4/6 {
        fis,,16 [ cis'16 fis16 a16 cis16 fis16 ~ ] }
    fis16 [ fis16 \times 2/3 {
      \slurUp
        fis16 ( g16 fis16 ) ] \stopTextSpan }
    | % 168
    e,,16 [ b'16 dis16 g16 ] b16 [ e8 e16 ] \times 2/3 {
        e16 [ e16 e16 }
    \times 4/5  {
        e16 e16 e16 e16 e16 }
    \times 2/3  {
        e16 e16 b16 ~ ^\markup{l.v.} ] }
    | % 169
    \tieDown
    b4 \laissezVibrer b,2. ~ | \barNumberCheck #170
    b1 ~ | % 171
    b1 | % 172
    e,1 ^\fermata \bar "|."
    }

PartPOneVoiceTwo =  \relative c' {
    \transposition c \clef "treble" \key c \major
    \numericTimeSignature\time 4/4 | % 1
    \tempo 4=108 s1*8 | % 9
    \override Fingering #'staff-padding = #'()
    \set fingeringOrientations = #'(left)
    
    \small
    \override NoteHead #'font-size = #1
   
   \oneLower
   
    b'4 a4 g4 fis4 | % 16
    <e-2>4 d4 <des-2>4 c4 | % 17
    s1*8  | % 25
    s1*1/12  s1*11/12 | % 26
    \time 10/8  s4*5 | % 27
    \time 12/8 
    c8 \rest <e-3>4 c8 \rest e4 c8 \rest e4 c8 \rest e4 | % 28
    c8 \rest e4 c8 \rest e4 c8 \rest e4 c8 \rest e4 | % 29
    c8 \rest e4 c8 \rest e4 c8 \rest e4 c8 \rest e4 | \barNumberCheck
    #30
    c8 \rest e4 c8 \rest e4 c8 \rest e4 c8 \rest e4 | % 31
    c8 \rest e4 c8 \rest e4 c8 \rest e4 c8 \rest e4 | % 32
    c8 \rest e4 c8 \rest e4 c8 \rest e4 c8 \rest e4 | % 33
    \numericTimeSignature\time 4/4  | % 33
    s1*8 | % 41
    
    \femLower
   
    \time 2/2
    e,8 [ e'8 b8 e8 ] <g,-3>8 [ g'8 b,8 e8 ] | \barNumberCheck #50
    | \barNumberCheck #50
    a,8 [ <a'-2>8 d,8 a'8 ] c,8 [ g'8 g,8 c8 ] | % 51
    | % 51
    e,4 e'4 b4 e4 | % 52
    g,4 g'4 b,4 e4 | % 53
    a,4 a'4 d,4 a'4 | % 54
    c,4 g'4 g,4 b4 s1*10 | % 65
    a8 [ <a'-3>8 <e-2>8 a8 ] a,8 [ a'8 e8 a8 ] | % 66 
    \barre "IV" #0 #UP #'(-0.5 . -1) #8 #1 
    gis,8 \startTextSpan [ <e'-4>8 gis,8 \stopTextSpan 
    \barre "V" #0 #UP #'(-0.5 . -1) #8 #1 
    d'8 \startTextSpan ] a8 [ a'8 d,8 a'8 ] \stopTextSpan | % 67
    \barre "IV" #0 #UP #'(-0.5 . -1) #8 #1 
    gis,8 \startTextSpan [ dis'8 gis,8 dis'8 ] \stopTextSpan
    \barre "V" #0 #UP #'(-0.5 . -1) #8 #1 
    ais8-2 \startTextSpan [ cis'8-3 g8 cis8 ] \stopTextSpan | % 68
    \barre "IV" #0 #UP #'(-0.5 . -1) #8 #1 
    gis,8 \startTextSpan [ e'8 gis,8 \stopTextSpan
    \barre "V" #0 #UP #'(-0.5 . -1) #8 #1 
    d'8 \startTextSpan ] a8 [ a'8 d,8 a'8 ] \stopTextSpan | % 69
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    g,8 \startTextSpan [ g'8 d8 g8 ] g,8 [ g'8 d8 g8 ] \stopTextSpan | \barNumberCheck #70
    \barre "IV" #0 #UP #'(-0.5 . -1) #8 #1 
    gis,8 \startTextSpan [ e'8 gis,8 \stopTextSpan
    \barre "III" #0 #UP #'(-0.5 . -1) #8 #1 
    d'8 \startTextSpan ] g,8 [ f'8 d8 f8 ] \stopTextSpan | % 71
    \barre "IV" #0 #UP #'(-0.5 . -1) #8 #1 
    gis,8 \startTextSpan [ dis'8 b8 dis8 ] \stopTextSpan
    \barre "V" #0 #UP #'(-0.5 . -1) #8 #1 
    ais8 \startTextSpan [ cis'8 g8 cis8 ] \stopTextSpan | % 72
    \barre "IV" #0 #UP #'(-0.5 . -1) #8 #1 
    gis,8 \startTextSpan [ e'8 gis,8 \stopTextSpan
    \barre "V" #0 #UP #'(-0.5 . -1) #8 #1 
    d'8 \startTextSpan ] a8 [ a'8 e8 a8 ] \stopTextSpan  | % 77
    \numericTimeSignature\time 4/4  
    s1 | \time 10/8 s8*10 | s8*10 |
    \numericTimeSignature\time 4/4 
    s1*5
    | % 81
    
    \oneLower
    
    b4 a4 g4 fis4 | % 88
    e4 d4 des4 c4 | % 89
    s1*2 | % 91
    \time 6/8  s1. | % 93
    \time 5/8  s8*5 | % 94
    \numericTimeSignature\time 4/4  s1 | % 95
    \time 6/8  s2. | % 96
    \time 5/8  s8*5 | % 97
    \numericTimeSignature\time 4/4  
    
    \femLower
    
    \time 2/2  | % 105
    s1*8 | % 113
    \numericTimeSignature\time 4/4  s1 |
    \time 10/8
    s8*10 | s8*10 | 
     \numericTimeSignature\time 4/4
    s1
    | % 117
    s1*2 | % 119
    s1*2 | % 121
    s1*2 | % 123
    \time 6/8  s1. | % 125
    \time 5/8  s8*5 | % 126
    \numericTimeSignature\time 4/4  s1 | % 127
    \time 6/8  s2. | % 128
    \time 5/8  s8*5 | % 129
    \numericTimeSignature\time 4/4  | % 129
    s1*8 | % 137
    \time 5/8  s8*5 | % 138
    \numericTimeSignature\time 4/4  s1 | % 139
    \time 6/8  s2. | \barNumberCheck #140
    \time 5/8  s8*5 | % 141
    \time 6/8  s1*3 | % 145
    \time 12/8  | % 145
    c8 \rest <e-3>4 c8 \rest e4 c8 \rest e4 c8 \rest e4 | % 146
    c8 \rest e4 c8 \rest e4 c8 \rest e4 c8 \rest e4 | % 147
    c8 \rest e4 c8 \rest e4 c8 \rest e4 c8 \rest e4 | % 148
    c8 \rest e4 c8 \rest e4 c8 \rest e4 c8 \rest e4 | % 149
    c8 \rest e4 c8 \rest e4 c8 \rest e4 c8 \rest e4 | \barNumberCheck
    #150
    c8 \rest e4 c8 \rest e4 c8 \rest e4 c8 \rest e4 | % 151
    \time 10/8  s4*5 | % 152
    \numericTimeSignature\time 4/4  s1 | % 153
    s1*2 | % 155
    \time 6/8  s2*9 | % 161
    \numericTimeSignature\time 4/4  s1*12 \bar "|."
    }


% The score definition

\score {
  
\new Staff <<
    \set Staff.instrumentName = "Guitar"
    \set midiInstrument = #"guitar"
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
        \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
        >>
    >>

    \layout {}
    \midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
     
    
}
}





%{
convert-ly (GNU LilyPond) 2.14.2   Not smart enough to convert foot-separation. 
Adjust settings for last-bottom-spacing instead. Please refer to the manual for details, and update
manually.2.13.42, 2.13.44, 2.13.46, 
Not smart enough to convert
between-system-space, -padding.  Please refer to the manual for
details, and update manually.2.13.48, 2.13.51, 2.14.0
%}
