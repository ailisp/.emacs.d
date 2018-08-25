;;;; Theme

(load-theme 'misterioso)
(when (windowsp)
  (set-face-attribute
   'default nil
   :family "DejaVu Sans Mono"))
(when (macp)
  (set-face-attribute
   'default nil
   :height 140
   :family "DejaVu Sans Mono"))
(when (linuxp)
  (set-face-attribute
   'default nil
   :family "Dejavu Sans Mono"))

;;; For some reason, cursor face doesn't change in new window
;;; call it after create new frame
(defun set-cursor-face ()
  (set-cursor-color "sky blue"))
(set-cursor-face)
(add-hook 'after-make-frame-functions
          (lambda (f)
            (with-selected-frame f
              (set-cursor-face))))

(set-face-attribute
 'mode-line-inactive nil
 :background "#435364")
(set-face-attribute
 'header-line nil
 :background "#506478"
 :foreground "white")
(set-face-attribute
 'region nil
 :background "#a0c5c4"
 :foreground "black")
(set-face-attribute
 'font-lock-constant-face nil
 :foreground "#b6e6fc")
