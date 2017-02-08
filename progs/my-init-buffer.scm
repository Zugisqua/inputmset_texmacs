;;;;;;redefine the prefix-key;;;;;;

;based on emacs preference
(kbd-wildcards pre
	       ("emacs" "noop" #t)
	       ("emacs:meta" "noop" #t)
	       ("std" "noop" #t)
	       ("cmd" "M-q" #t)
	       ("altcmd" "noop" #t)
	       ("special" "noop")
	       ("accent" "noop" #t)
	       ("copyto" "noop")
	       ("cutto" "C-")
	       ("pastefrom" "M-")
	       	       	       
	       ("math:structure" "C-q")
	       ("math:over" "math:structure o" #t)
	       ("math:under" "math:structure u" #t)
	       ("math:small" "math:structure" #t)
	       ("math:left" "math:structure l" #t)
	       ("math:middle" "math:structure m" #t)
	       ("math:right" "math:structure r" #t)
	       ("math:syntax" "math:structure x" #t)

	       ("math" "C-")
	       ("math:symbol" "mathe n")
	       ("search" "noop")
	       
	       ("font" "C-q")
	       ("math:cal" "math p" #t)
	       
	       ("mathe" "A-")
	       ("grid" "C-]")
	       ("move:A" "M-")
	       ("move:C" "C-")
;	       ("eqn" "escape")
	       )


(load "/usr/share/TeXmacs/progs/generic/generic-kbd.scm")
(load "/usr/share/TeXmacs/progs/math/math-kbd.scm")
(load "/home/zugisqua/.TeXmacs/progs/prefix-explain.scm")


;math-mode-start
;(kbd-map
; (:mode in-std-text?)
; ("eqn" (make-eqnarray*)))


(kbd-wildcards
 ("S-escape" "M-q $" #t)
 ("escape" "M-q &" #t)
 ("`" "$" #t))

(kbd-map
 (:mode in-math?)
 ("grid c" (make 'choice))
 ("grid m" (make 'matrix))
 ("grid d" (make 'det))
 ("grid s" (make 'stack))

 ("move:A n" (make-script #f #t))
 ("move:A i" (make-script #t #t))
 ("move:A I" (make-above))
 ("move:A N" (make-below))
 
 ("mathe x" (make-neg))
 
 ("math:symbol q" (make-wide "<vect>"))
 ("math:symbol q var" (make 'embold))
 ("math:symbol q var var" (make-wide "<dot>"))
 ("math:symbol q var var var" (make-wide "<ddot>"))
 ("math:symbol r" (make-wide "~"))
 ("math:symbol r var" (make-wide "^"))
 ("math:symbol r var var" (make-wide "<bar>"))
 ("math:symbol e" (make-rprime "<dag>"))
 ("math:symbol e var" (make-rprime "<asterisk>"))

 ("space" "<nospace>")
 ("space space" (make-space "1.5spc"))
 
 ("move:C g" (structured-exit-right))
 ("move:C h" (structured-exit-left))
 ("move:A g" (structured-right))
 ("move:A h" (structured-left))
 ("move:A [" (structured-insert-left))
 ("move:A ]" (structured-insert-right))
 ("move:A space" (kbd-select-enlarge))


;;;;;;;;special demands;;;;;;;;;;
 ("0 var" (math-bracket-open "|" "<rangle>" #f))
 ("9 var" (math-bracket-open "<langle>" "|" #f))

 ("math:symbol s" (math-bracket-open "sin" "" #f))
 ("math:symbol s var" (math-bracket-open "sin(" ")" #f))
 ("math:symbol c" (math-bracket-open "cos" "" #f))
 ("math:symbol c var" (math-bracket-open "cos(" ")" #f))
 ("math:symbol t" (math-bracket-open "tan" "" #f))
 ("math:symbol t var" (math-bracket-open "tan(" ")" #f))
 ("math:symbol l" (math-bracket-open "ln" "" #f))
 ("math:symbol l var" (math-bracket-open "ln(" ")" #f))
 
 )

;normal
(kbd-map
 
 ("move:A d" (kbd-up))
 ("move:A k" (kbd-down))
 ("move:A f" (traverse-right))
 ("move:A F" (kbd-select traverse-right))
 ("move:A j" (traverse-left))
 ("move:A J" (kbd-select traverse-left))
 ("move:C f" (kbd-right))
 ("move:C j" (kbd-left))
 ("move:C \\" (undo 0))
 ("move:C |" (redo 0))

 ("move:A \\" (make 'new-line))

 ("cmd [" (make 'footnote))
 ("cmd ]" (make-marginal-note))

 ("cmd ~" (make-toggle 'folded-std))

 ("cmd l" (make 'label))
 ("cmd r" (make 'reference))
 ("cmd h" (make 'hlink)) 
)

;explain
(kbd-map
 ("mathe" "")
 ("math:structure" "")
 ("grid" "")
 ("move:A" "")
 ("move:C" "")
; ("eqn" "")
 )

;markcolor
(kbd-map
 ("A-F1" (make-with "color" "brown"))
 ("A-F2" (make-with "color" "blue"))
 ("A-F3" (make-with "color" "red"))
 ("A-F4" (make-with "color" "black")))



