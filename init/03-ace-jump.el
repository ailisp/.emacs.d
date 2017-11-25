;;;; ace-jump

(require-or-install 'ace-jump-mode)

(require-or-install 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)
(custom-set-variables
 '(aw-keys (quote (97 115 100 102 103 104 106 107 108 59 39))))
(custom-set-faces
 '(aw-leading-char-face ((t (:foreground "sky blue" :height 3.0)))))

