(font-lock-mode)
;; Things that I usually write are abbreviated like this
(global-set-key (kbd "<f2>") "#! /bin/bash")
(global-set-key (kbd "<f3>") "#! /usr/bin/python")
(global-set-key (kbd "<f9> g") "TGraph * gr= new TGraph();")
; keys calling my functions
(global-set-key (kbd "<f9> p") 'previous-my)

; Defining eLisp functions
(defun previous-my ()
  (interactive);; if you need to use the minibuffer
  (previous-line))

(defun myFunction (myArg)
  "Prints the argument" ;; This is just a description
  (interactive "p")
  (message "Your argument is: %d" myArg))

(defun yay ()
  "Insert “Yay!” at cursor position."
  (interactive)
  (insert "Yay!"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; I don't like use abbreviations like this: I prefer mapping keys
;;(setq-default abbrev-mode t)
;;(read-abbrev-file "~/.emacs.d/.abbrev_defs")
;;(setq save-abbrevs t)