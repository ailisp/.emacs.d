;;;; anything

(require-or-install 'anything)
(require-or-install 'anything-startup)
(global-set-key (kbd "C-x C-f") 'anything-find-file)
(global-set-key (kbd "C-x b") 'anything)
(global-set-key (kbd "M-x") 'anything-execute-extended-command)

