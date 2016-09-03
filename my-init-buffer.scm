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
	       ("math:symbol" "mathe m")
	       ("search" "noop")

	       ("mathe" "M-")
	       ("grid" "C-]")
	       ("move:A" "A-")
	       ("move:C" "C-"))

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

 ("move:C n" (make-script #f #t))
 ("move:C i" (make-script #t #t))

 ("mathe f" (make-fraction))
 ("mathe f var" (make 'tfrac))
 ("mathe f var var" (make 'dfrac))
 ("mathe f var var var" (make 'frac*))
 ("mathe s" (make-sqrt))
 ("mathe s var" (make-var-sqrt))
 ("mathe /" (make-neg))
 ("move:C I" (make-above))
 ("move:C N" (make-below))

 ("mathe q" (make-wide "<vect>"))
 ("mathe q var" (make-wide "<dot>"))
 ("mathe q var var" (make-wide "<ddot>"))
 ("mathe w" (make-wide "~"))
 ("mathe w var" (make-wide "^"))
 ("mathe w var var" (make-wide "<bar>"))
 
 ("move:C g" (structured-exit-right))
 ("move:C h" (structured-exit-left))
 ("move:A g" (structured-right))
 ("move:A h" (structured-left))
 ("move:A [" (structured-insert-left))
 ("move:A ]" (structured-insert-right))
 )

;normal
(kbd-map
 ("move:A r" (kbd-up))
 ("move:A n" (kbd-down))
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
