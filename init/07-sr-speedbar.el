(require-or-install 'sr-speedbar)

(setq sr-speedbar-right-side nil)
(setq speedbar-show-unknown-files t)
(setq sr-speedbar-width 35)
(setq sr-speedbar-max-width 35)
(setq speedbar-use-images nil)
(setq speedbar-initial-expansion-list-name "files")
(with-current-buffer sr-speedbar-buffer-name
  (setq window-size-fixed 'width))

(global-set-key (kbd "C-x 3") 'sr-speedbar-toggle)
