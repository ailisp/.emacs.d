;;;; Misc config for better default

;;; Initial UI
(setq inhibit-splash-screen t)
(setq initial-scratch-message "")
(tool-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(setq ring-bell-function 'ignore)
(setq use-dialog-box nil)
(toggle-scroll-bar nil)
(defalias 'message-box 'message)

;;; Eile open, save and history
(global-auto-revert-mode 1)
(require 'saveplace)
(setq-default save-place t)
(recentf-mode 1)
(setq recentf-max-saved-items 3000)
(setq backup-directory-alist '(("." . "~/.emacs.d/.backups")))

;;; Editing
(setq-default line-spacing 0.1)
(show-paren-mode 1)
(cua-mode t)
(setq-default tab-width 4
              indent-tabs-mode nil)
(add-hook 'prog-mode-hook
          (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace)))

;(setq browse-url-browser-function 'eww-browse-url)

;;; Scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 5))) ; one line at a time
(setq mouse-wheel-progressive-speed nil) ; don't accelerate scrolling
(setq mouse-wheel-follow-mouse t) ; scroll window under mouse
(setq scroll-step 1) ; keyboard scroll one line at a time
