(font-lock-mode)
;; Things that I usually write are abbreviated like this
(global-set-key (kbd "<f2>") "#! /bin/bash")
(global-set-key (kbd "<f3>") "#! /usr/bin/python")
; keys calling my functions
(global-set-key (kbd "<f5> g") 'make-graph)
(global-set-key (kbd "<f5> c") 'make-canvas)
(global-set-key (kbd "<f5> h") 'make-histo)

;; SHELL commands
(global-set-key (kbd "<f5> p") (lambda () (interactive) (insert "//File Path: ") (insert (shell-command-to-string "pwd"))))
; equivalent to C-u M-! <shell-command> ;; it calls an anonymous function

; Defining eLisp functions
(defun make-graph (name)
  "Creating a TGraph via M-x make-graph"
  (interactive "sWhat's the name of the graph?")
  (insert (format "TGraph* %s = new TGraph();"name)))

(defun make-canvas (name title)
  "Creating a TCanvas via M-x make-canvas"
  (interactive "sWhat's the name of the canvas? \nsWhat's the title of the canvas? ")
  (insert (format "TCanvas* %s = new TCanvas(\"%s\",\"%s\");" name name title)))

(defun make-histo (name title bin xmin xmax)
  "Creating a TH1F via M-x make-histo"
  (interactive "sWhat's the name of the histo? \nsWhat's the title of the histo? \nsNumber of bin \nsXmin \nsXmax ")
  (insert (format "TH1F* %s = new TH1F(\"%s\",\"%s\",%s,%s,%s);" name name title bin xmin xmax)))

(defun multiple-hello (someone num)
  "Say hello to SOMEONE via M-x hello, for NUM times."
  (interactive "sWho do you want to say hello to? \nnHow many times? ")
  (dotimes (i num)
    (insert (format "Hello %s!\n" someone))))
