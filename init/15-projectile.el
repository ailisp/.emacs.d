;;;; projectile

(require-or-install 'helm-projectile)
(projectile-mode)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)
(helm-projectile-on)
