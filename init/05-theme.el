;;;; Theme

(load-theme 'misterioso)
(when (windowsp)
  (set-face-attribute
   'default nil
   :family "DejaVu Sans Mono"))
(set-face-attribute
 'cursor nil
 :background "sky blue")
(set-face-attribute
 'mode-line-inactive nil
 :background "#435364")
(set-face-attribute
 'header-line nil
 :background "#506478"
 :foreground "white")
