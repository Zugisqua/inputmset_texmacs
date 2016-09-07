;;;;;;redefine the prefix-key;;;;;;

;based on emacs preference
(kbd-wildcards pre
	       ("emacs" "noop" #t)
	       ("emacs:meta" "noop" #t)
	       ("std" "noop" #t)
	       ("cmd" "A-q" #t)
	       ("altcmd" "noop" #t)
	       ("special" "noop")
	       ("accent" "noop" #t)
	       ("copyto" "noop")
	       ("cutto" "C-")
	       ("pastefrom" "A-")
	       	       	       
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
	       ("dagger" "M-e")

	       ("mathe" "M-")
	       ("grid" "C-]")
	       ("move:A" "A-")
	       ("move:C" "C-")
	       ("font" "M-c"))


(load "/usr/share/TeXmacs/progs/generic/generic-kbd.scm")
(load "/usr/share/TeXmacs/progs/math/math-kbd.scm")
(load "/home/zugisqua/.TeXmacs/progs/prefix-explain.scm")


;math-mode-start
(kbd-wildcards
 ("S-escape" "A-q $" #t)
 ("escape" "A-q &" #t))

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
 
 ("mathe f" (make-fraction))
 ("mathe f var" (make 'tfrac))
 ("mathe f var var" (make 'dfrac))
 ("mathe f var var var" (make 'frac*))
 ("mathe s" (make-sqrt))
 ("mathe s var" (make-var-sqrt))
 ("mathe /" (make-neg))
 
 ("mathe q" (make-wide "<vect>"))
 ("mathe q var" (make-wide "<dot>"))
 ("mathe q var var" (make-wide "<ddot>"))
 ("mathe w" (make-wide "~"))
 ("mathe w var" (make-wide "^"))
 ("mathe w var var" (make-wide "<bar>"))

 ("mathe e" (make-rprime "<asterisk>"))
 ("mathe e var" (make-rprime "<dag>"))

 ("{ mathe r" (make 'choice))
 ("( mathe r" (make 'matrix))
 ("[ mathe r" (make 'bmatrix))
 ("| mathe r" (make 'det))
 ("mathe r" (make 'tabular*))
 ("mathe r var" (make 'matrix))
 ("mathe r var var" (make 'det))
 ("mathe r var var var" (make 'bmatrix))
 ("mathe r var var var var" (make 'choice))
 ("mathe r var var var var var" (make 'stack))
  
 ("space var" "<nospace>")
 ("space var var" "<space>")
 
 ("move:C g" (structured-exit-right))
 ("move:C h" (structured-exit-left))
 ("move:A g" (structured-right))
 ("move:A h" (structured-left))
 ("move:A [" (structured-insert-left))
 ("move:A ]" (structured-insert-right))
; ("movd:A {" (geometry-left)) ;here does not work ,M-left
; ("movd:A }" (geometry-right))
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

 ("cmd `" (make 'footnote)))

;explain
(kbd-map
 ("mathe" "")
 ("math:structure" "")
 ("grid" "")
 ("move:A" "")
 ("move:C" ""))

;markcolor
(kbd-map
 ("M-F1" (make-with "color" "brown"))
 ("M-F2" (make-with "color" "blue"))
 ("M-F3" (make-with "color" "red")))
