(font-lock-mode)
;; Things that I usually write are abbreviated like this
(global-set-key (kbd "<f2>") "#! /bin/bash")
(global-set-key (kbd "<f3>") "#! /usr/bin/python")
(global-set-key (kbd "<f9> g") "TGraph * gr= new TGraph();")

;; I don't like use abbreviations like this: I prefer mapping keys
;;(setq-default abbrev-mode t)
;;(read-abbrev-file "~/.emacs.d/.abbrev_defs")
;;(setq save-abbrevs t)