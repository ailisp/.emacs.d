;;;; projectile

;; (require-or-install 'projectile)
;; (setq projectile-completion-system 'ivy)
;; (projectile-mode)

(require-or-install 'counsel-projectile)
(counsel-projectile-mode)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)

(require-or-install 'projectile-ripgrep)
(define-key projectile-command-map (kbd "g") 'projectile-ripgrep)
