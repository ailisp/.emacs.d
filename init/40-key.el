;;; Aliases
(defalias 'rr 'query-replace-regexp)

;;; Global Keybindings
(global-set-key (kbd "<f8>") 'paredit-mode)
(global-set-key (kbd "C-c s") 'slime-selector)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "<M-right>") 'tabbar-forward-tab)
(global-set-key (kbd "<M-left>") 'tabbar-backward-tab)
(global-set-key (kbd "<C-backspace>") 'delete-indentation)
(global-set-key (kbd "C-c m") 'mark-sexp)
(global-set-key (kbd "<C-M-backspace>")'kill-backward-sexp)
(global-set-key (kbd "C-x 2") 'split-window-conditional)
(global-set-key (kbd "C-z") popwin:keymap)

;;; Local keys for builtin modes
(define-key hs-minor-mode-map (kbd "C-c h") 'hs-toggle-hiding)

;; TODO: kill/mark/copy/delete/move backward/forward sexp/char/word/line/inner-sexp
;; TODO: try replace ecb with popwin+sr-speedbar
