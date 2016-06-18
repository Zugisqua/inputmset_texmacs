;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;re- Explain prefixes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(kbd-map
  ("cmd" "" "TeXmacs command")
  ("altcmd" "" "Alternate TeXmacs command")
  ("special" "" "Special command")
  ("structured:move" "" "Structured move")
  ("structured:geometry" "" "Structured position or resize")
  ("symbol" "" "Insert a TeXmacs symbol")
  ("copyto" "" "Copy to (1, 2, 3, *:other)")
  ("cutto" "" "Cut to (1, 2, 3, *:other)")
  ("pastefrom" "" "Paste from (1, 2, 3, *:other)")
  ("noop" (set-message "" ""))

  ("font" "" "Change font")
  ("executable" "" "Insert executable markup")
  ("inactive" "" "Insert inactive markup")
  ("script" "" "Evaluate function or insert evaluation tag")
  ("link" "" "Linking command")
  ("version" "" "Versioning command")
  ("table" "" "Table command"))

(kbd-map
  (:profile emacs)
  ("altcmd" "" "Alternate TeXmacs command"))

(kbd-map
  (:mode in-text?)
  ("text" "" "TeXmacs command")
  ("text:symbol" "" "Insert a special character"))

(kbd-map
  (:mode in-math?)
  ("math" "" "Insert mathematical markup")
  ("math:greek" "" "Insert a Greek character")
  ("math:bold" "" "Insert a bold character")
  ("math:bold:up" "" "Insert an upright bold character")
  ("math:bold:greek" "" "Insert a bold Greek character")
  ("math:cal" "" "Insert a calligraphic character")
  ("math:bold:cal" "" "Insert a bold calligraphic character")
  ("math:frak" "" "Insert a fraktur character")
  ("math:bbb" "" "Insert a blackboard bold character")
  ("math:over" "" "Insert a wide symbol above")
  ("math:under" "" "Insert a wide symbol below")
  ("math:left" "" "Insert a large left delimiter or left subscript")
  ("math:middle" "" "Insert a large separator")
  ("math:right" "" "Insert a large right delimiter")
  ("math:symbol" "" "Insert a mathematical symbol")
  ("math:symbol:circled" "" "Insert a big circled operator")
  ("math:symbol:limits" "" "Insert a mathematical symbol with limits")
  ("math:syntax" "" "Specify an alternative semantics"))

(kbd-map
  (:mode in-prog?)
  ("prog" "" "TeXmacs command"))
