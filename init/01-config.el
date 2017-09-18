;;;; Misc config for better default

;;; Initial UI
(setq inhibit-splash-screen t)
(setq initial-scratch-message "")
(tool-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(setq ring-bell-function 'ignore)

;;; Eile open, save and history
(global-auto-revert-mode 1)
(require 'saveplace)
(setq-default save-place t)
(recentf-mode 1)
(setq backup-directory-alist '(("." . "~/.emacs.d/.backups")))

;;; Editing
(show-paren-mode 1)
(global-hl-line-mode 1)

;(setq browse-url-browser-function 'eww-browse-url)

;;; Scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse t) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time
