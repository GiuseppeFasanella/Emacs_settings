# Emacs_settings
dotfiles I use to customize Emacs

Emacs è un LISP= sono quei linguaggi “personalizzabili” tramite “dotfile” (file che iniziano con . )

I customization settings di emacs si trovano in ~/.emacs

* M-x apre una linea di comando nel minibuffer di emacs
* M sta per Meta (che era un carattere presente sulle tastiere degli anni 80). Nelle tastiere moderne il tasto Meta non c'è, quindi deve essere cercato "a tentoni". Sulla mia tastiera del DELL recnicamente e' ESC, ma anche Alt puo' andar bene, per certi comandi. 

* C-n new line

**Navigare tra file aperti**
* Apri un terminale e apri un file `emacs file.dat`
* Dentro emancs, `C-x C-f` : apri un altro file (Tieni premuto Ctrl)
* C-x f : Lista di file che hai aperto di recente (Ctrl-x e POI f)
* `C-x (tenuto premuto) e freccia` per spostarsi da un buffer all'altro (pure vero e' che emacs crea dei file suoi "scratch" e "Messages" e ti trovi a navigare pure quelli)
* C-x e poi k (kill del buffer)

**Modalita' 2**
*`C-x e poi 2 (oppure 3)` apre una sub-finestra in orizzontale o verticale
* `C-x e poi o` ti sposta nella divisione che vuoi
* Quando arrivi alla divisione che vuoi `C-x C-f` e apri un file li'

**Modalita' 3**
*Lancia screen e in screen apri emacs (e' piu' comodo da navigare)
* `C-a c` (create)
* `C-a n` (next)
* `C-a p` (previous)
* `C-a k` (kill)
