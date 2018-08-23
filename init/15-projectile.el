;;;; projectile

(require-or-install 'helm-projectile)
(projectile-mode)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)
(helm-projectile-on)

(require-or-install 'ripgrep)
(require-or-install 'projectile-ripgrep)
(define-key projectile-command-map (kbd "g") 'projectile-ripgrep)
(global-set-key (kbd "C-x g") 'ripgrep-regexp)
