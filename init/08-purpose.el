(require-or-install 'window-purpose)

(purpose-mode)

(add-to-list 'purpose-user-mode-purposes '(slime-repl-mode . repl))
(add-to-list 'purpose-user-mode-purposes '(eshell-mode . repl))
(add-to-list 'purpose-user-mode-purposes '(cider-repl-mode . repl))

;; (add-to-list 'purpose-user-name-purposes '(<name> . <purpose>))
;; (add-to-list 'purpose-user-regexp-purposes '(<pattern> . <purpose>))
;; (setq purpose-use-default-configuration t) ; not really necessary, default is t
(purpose-compile-user-configuration) ; activates your changes

(define-key purpose-mode-map (kbd "C-c , s") 'purpose-save-window-layout)
(define-key purpose-mode-map (kbd "C-c , l") 'purpose-load-window-layout)
(define-key purpose-mode-map (kbd "C-c , r") 'purpose-reset-window-layout)
(define-key purpose-mode-map (kbd "C-x b") nil)
(define-key purpose-mode-map (kbd "C-x C-f") nil)
(define-key purpose-mode-map (kbd "C-x 1") nil)

(require 'window-purpose-x)
(purpose-x-magit-single-on)

(purpose-x-popwin-setup)
(define-key purpose-mode-map (kbd "C-z") 'purpose-x-popwin-close-windows)
;; (add-to-list 'purpose-x-popwin-major-modes 'xxx-mode)
;; purpose-x-popwin-buffer-names purpose-x-popwin-buffer-name-regexps
;; (purpose-x-popwin-update-conf)

(purpose-x-kill-setup)

;; Open an eshell window so load layout won't be empty
(eshell)
(switch-to-buffer "*scratch*")
