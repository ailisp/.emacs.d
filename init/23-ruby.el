;;;; ruby

(require-or-install 'inf-ruby)
(require-or-install 'ruby-compilation)

(define-key ruby-mode-map (kbd "C-c C-k") 'ruby-compilation-this-buffer)
(define-key ruby-mode-map (kbd "C-c C-j") 'ruby-compilation-this-test)

(defalias 'rake 'ruby-compilation-rake)

(require-or-install 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'robe-mode-hook 'ac-robe-setup)

(require-or-install 'yari)
;; (define-key ruby-mode-map (kbd "C-c C-d") 'yari-helm)

(require-or-install 'goto-gem)
(require-or-install 'bundler)

(require-or-install 'projectile-rails)
(projectile-rails-global-mode)
