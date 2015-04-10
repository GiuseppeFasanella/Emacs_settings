(font-lock-mode)
;; Things that I usually write are abbreviated like this
(global-set-key (kbd "<f2>") "#! /bin/bash")
(global-set-key (kbd "<f3>") "#! /usr/bin/python")
; keys calling my functions
(global-set-key (kbd "<f5> g") 'make-graph)
(global-set-key (kbd "<f5> c") 'make-canvas)

; Defining eLisp functions
(defun make-graph (name)
  "Creating a TGraph via M-x make-graph"
  (interactive "sWhat's the name of the graph?")
    (insert (format "TGraph* %s = new TGraph();"name)))

(defun make-canvas (name title)
  "Creating a TCanvas via M-x make-canvas"
  (interactive "sWhat's the name of the canvas? \nsWhat's the title of the canvas ")
    (insert (format "TCanvas* %s = new TCanvas(\"%s\",\"%s\");" name name title))

(defun multiple-hello (someone num)
  "Say hello to SOMEONE via M-x hello, for NUM times."
  (interactive "sWho do you want to say hello to? \nnHow many times? ")
  (dotimes (i num)
    (insert (format "Hello %s!\n" someone))))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; I don't like use abbreviations like this: I prefer mapping keys
;;(setq-default abbrev-mode t)
;;(read-abbrev-file "~/.emacs.d/.abbrev_defs")
;;(setq save-abbrevs t)