;; (require-or-install 'popwin)
;; (popwin-mode 1)

;; ;; M-x dired-jump-other-window
;; (push '(dired-mode :position top) popwin:special-display-config)

;; ;; M-!
;; (push "*Shell Command Output*" popwin:special-display-config)

;; ;; M-x compile
;; (push '(compilation-mode :noselect t) popwin:special-display-config)

;; ;; slime
;; (push "*slime-apropos*" popwin:special-display-config)
;; (push "*slime-macroexpansion*" popwin:special-display-config)
;; (push "*slime-description*" popwin:special-display-config)
;; (push '("*slime-compilation*" :noselect t) popwin:special-display-config)
;; (push "*slime-xref*" popwin:special-display-config)
;; (push '(sldb-mode :stick t) popwin:special-display-config)
;; ; (push 'slime-repl-mode popwin:special-display-config)
;; (push 'slime-connection-list-mode popwin:special-display-config)

;; ;; cider
;; (push "*cider-error*" popwin:special-display-config)

;; ;; vc
;; (push "*vc-diff*" popwin:special-display-config)
;; (push "*vc-change-log*" popwin:special-display-config)

;; ;; undo-tree
;; (push '(" *undo-tree*" :width 0.3 :position right) popwin:special-display-config)

;; ;; term
;; (require 'popwin-term)
;; (push '(term-mode :position :top :height 16 :stick t) popwin:special-display-config)

;; ;; kill ring
;; (require 'popwin-browse-kill-ring)
;; (push "*Kill Ring*" popwin:special-display-config)
