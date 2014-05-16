%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Examples (copy these for easy handling and just change fretnum.)
% Don't forget to start and stop textspann!
%
% Barré: \barre "IV" #0 #UP #'(-0.5 . -1) #8 #1 
%
% Half barré: \hbarre "IV" "3" #0 #UP #'(-0.5 . -1) #8 #1 
%
% Position: \pos "IV" #0 #UP #'(-0.5 . -1) #8 #1
%
% see: http://lilypond.1069038.n5.nabble.com/Barres-and-enclose-bounds-td55885.html
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% more attractive barring indication than the inbuilt one 
% Parameters 
% 
% "<fretnum>"        % fret number (eg "5") 
% #osp               % outside-staff-priority - normally set to #0 unless barre is colliding with other elements 
% #dirn              % set to #UP for above the staff, #DOWN for below 
% #'(lpad . rpad)    % left and right padding to apply to TextSpanner (shorten or lengthen) 
% #adjBreak          % when barre wraps to following stave, set value to prevent TextSpanner on following stave starting above the clef symbol 
% #adjend            % when barre wraps to following stave, set value to prevent TextSpanner going to the very end of the stave 
% 
% Example: 
%    \barre "5" #0 #UP #'(-0.5 . -1) #8 #1 
% <g,-2>\startTextSpan <c-3> <bf'-4>-> <ef,-1> <af-1>-> <c,-3>\stopTextSpan 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
barre = #(define-music-function (parser location fretnum osp dirn shorten adjBreak adjEnd) (string? number? number? pair? number? number?) 
#{ 
     \override TextSpanner #'outside-staff-priority = #$osp 
     \override TextSpanner #'bound-details #'left #'text = \markup { \small { \concat { "C" $fretnum " " } } } 
     \override TextSpanner #'style = #'line 
     \override TextSpanner #'font-shape = #'upright 
     \override TextSpanner #'direction = #$dirn
     %draw a bracket edge on RHS 
     \override TextSpanner #'bound-details #'right #'text =  \markup { \draw-line #(cons 0 (/ $dirn -1)) } 
     % set alignment of line with reference to left text 
     \override TextSpanner #'bound-details #'left #'stencil-align-dir-y = #CENTER 
     % change X pos of LH and RH end as desired 
     \override TextSpanner #'bound-details #'left #'padding = #(car $shorten) 
     \override TextSpanner #'bound-details #'right #'padding = #(cdr $shorten) 
     % allow adjustment of line end when it wraps to following stave 
     \override TextSpanner #'bound-details #'right-broken #'padding = #$adjEnd 
     % adjust LH end of line when it wraps to following stave so that it doesn't 
     % extend to the left of the notes on the stave 
     \override TextSpanner #'bound-details #'left-broken #'X = #$adjBreak 
     % optional override to remove text and bracket edge at line breaks 
     \override TextSpanner #'bound-details #'left-broken #'text = ##f 
     \override TextSpanner #'bound-details #'right-broken #'text = ##f 
#}) 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%
%and here's one for half barres that slashes the C and subscripts the 
%number of strings covered: 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 
% postscript slash for half barres 
#(define slash "0.18 setlinewidth 0.76 1.53 moveto 0 -1.62 rlineto stroke") 
% 
% Half barre 
% Parameters 
% 
% "<fretnum>"        % fret number (eg "5") 
% "<partial>"        % number of strings to cover - subscripted to the fret number 
% #osp               % outside-staff-priority - normally set to #0 unless barre is colliding with other elements 
% #dirn              % set to #UP for above the staff, #DOWN for below 
% #'(lpad . rpad)    % left and right padding to apply to TextSpanner (shorten or lengthen) 
% #adjBreak          % when barre wraps to following stave, set value to prevent TextSpanner on following stave starting above the clef symbol 
% #adjend            % when barre wraps to following stave, set value to prevent TextSpanner going to the very end of the stave 
% 
% Example: 
%    \hbarre "V" "3" #0 #UP #'(-0.5 . -1) #8 #1 
% <g,-2>\startTextSpan <c-3> <bf'-4>-> <ef,-1> <af-1>-> <c,-3>\stopTextSpan 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hbarre = #(define-music-function (parser location fretnum partial osp dirn shorten adjBreak adjEnd) (string? string? number? number? pair? number? number?) 
#{ 
     \override TextSpanner #'outside-staff-priority = #$osp 
     \override TextSpanner #'bound-details #'left #'text = \markup { \small { \concat { \postscript #slash "C" $fretnum \raise #0.8 \sub $partial " " } } } 
     \override TextSpanner #'style = #'line 
     \override TextSpanner #'font-shape = #'upright 
     \override TextSpanner #'direction = #$dirn 
     %draw a bracket edge on RHS 
     \override TextSpanner #'bound-details #'right #'text = \markup { \draw-line #(cons 0 (/ $dirn -1)) } 
     % set alignment of line with reference to left text 
     \override TextSpanner #'bound-details #'left #'stencil-align-dir-y = #CENTER 
     % change X pos of LH and RH end as desired 
     \override TextSpanner #'bound-details #'left #'padding = #(car $shorten) 
     \override TextSpanner #'bound-details #'right #'padding = #(cdr $shorten) 
     % allow adjustment of line end when it wraps to following stave 
     \override TextSpanner #'bound-details #'right-broken #'padding = #$adjEnd 
     % adjust LH end of line when it wraps to following stave so that it doesn't 
     % extend to the left of the notes on the stave 
     \override TextSpanner #'bound-details #'left-broken #'X = #$adjBreak 
     % optional override to remove text and bracket edge at line breaks 
     \override TextSpanner #'bound-details #'left-broken #'text = ##f 
     \override TextSpanner #'bound-details #'right-broken #'text = ##f 
#}) 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Positions
% Parameters 
% 
% "<fretnum>"        % fret number (eg "5") 
% #osp               % outside-staff-priority - normally set to #0 unless barre is colliding with other elements 
% #dirn              % set to #UP for above the staff, #DOWN for below 
% #'(lpad . rpad)    % left and right padding to apply to TextSpanner (shorten or lengthen) 
% #adjBreak          % when barre wraps to following stave, set value to prevent TextSpanner on following stave starting above the clef symbol 
% #adjend            % when barre wraps to following stave, set value to prevent TextSpanner going to the very end of the stave 
% 
% Example: 
%    \pos "V" #0 #UP #'(-0.5 . -1) #8 #1 
% <g,-2>\startTextSpan <c-3> <bf'-4>-> <ef,-1> <af-1>-> <c,-3>\stopTextSpan 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
pos = #(define-music-function (parser location fretnum osp dirn shorten adjBreak adjEnd) (string? number? number? pair? number? number?) 
#{ 
     \override TextSpanner #'outside-staff-priority = #$osp 
     \override TextSpanner #'bound-details #'left #'text = \markup { \small { \concat { $fretnum " " } } } 
     \override TextSpanner #'style = #'dashed-line 
     \override TextSpanner #'font-shape = #'upright 
     \override TextSpanner #'direction = #$dirn
     %draw a bracket edge on RHS 
     \override TextSpanner #'bound-details #'right #'text =  \markup { \draw-line #(cons 0 (/ $dirn -1)) } 
     % set alignment of line with reference to left text 
     \override TextSpanner #'bound-details #'left #'stencil-align-dir-y = #CENTER 
     % change X pos of LH and RH end as desired 
     \override TextSpanner #'bound-details #'left #'padding = #(car $shorten) 
     \override TextSpanner #'bound-details #'right #'padding = #(cdr $shorten) 
     % allow adjustment of line end when it wraps to following stave 
     \override TextSpanner #'bound-details #'right-broken #'padding = #$adjEnd 
     % adjust LH end of line when it wraps to following stave so that it doesn't 
     % extend to the left of the notes on the stave 
     \override TextSpanner #'bound-details #'left-broken #'X = #$adjBreak 
     % optional override to remove text and bracket edge at line breaks 
     \override TextSpanner #'bound-details #'left-broken #'text = ##f 
     \override TextSpanner #'bound-details #'right-broken #'text = ##f 
#})