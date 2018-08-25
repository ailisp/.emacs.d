(require-or-install 'avy)

(global-set-key (kbd "C-;") 'avy-goto-char-2)
(global-set-key (kbd "C-'") 'avy-goto-word-1)
(global-set-key (kbd "M-g g") 'avy-goto-line)

(require-or-install 'switch-window)
(setq-default switch-window-shortcut-style 'alphabet)
(setq-default switch-window-timeout nil)
(global-set-key (kbd "C-x o") 'switch-window)

(set-face-attribute
 'avy-lead-face nil
 :background "#8a498a")
(set-face-attribute
 'avy-lead-face-0 nil
 :background "#b979b9")
