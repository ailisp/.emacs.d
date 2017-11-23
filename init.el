;;;; Global init, setup package manager, el-get and init-loader

(defvar *emacs-config-directory* (file-name-directory load-file-name))


;;; Package archieves and helper functions
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(defun package-install-with-refresh (package)
  (unless (assq package package-alist)
    (package-refresh-contents))
  (unless (package-installed-p package)
    (package-install package)))

(defun require-or-install (package &optional package-to-install)
  (or (require package nil t)
      (progn
	(package-install-with-refresh (or package-to-install package))
	(require package))))

(package-initialize)


;;; init-loader

(require-or-install 'init-loader)

(setq init-loader-show-log-after-init nil)

(init-loader-load
 (expand-file-name "init/" *emacs-config-directory*))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-auto-update-methods-after-save t)
 '(ecb-compilation-buffer-names
   (quote
    (("*Calculator*")
     ("*Apropos*")
     ("*Occur*")
     ("*shell*")
     ("\\*[cC]ompilation.*\\*" . t)
     ("\\*i?grep.*\\*" . t)
     ("*Help*")
     ("*eww*")
     ("\\.*w3\\.*")
     ("*Completions*")
     ("*Backtrace*")
     ("*Compile-Log*")
     ("*Messages*")
     ("*scratch*")
     ("*slime-events*")
     ("*inferior-lisp*"))))
 '(ecb-compilation-major-modes (quote (compilation-mode slime-repl-mode)))
 '(ecb-compile-window-height 0.3)
 '(ecb-compile-window-width (quote edit-window))
 '(ecb-display-default-dir-after-start t)
 '(ecb-enlarged-compilation-window-max-height 1.0)
 '(ecb-layout-always-operate-in-edit-window (quote (delete-other-windows switch-to-buffer)))
 '(ecb-options-version "2.50")
 '(ecb-other-window-behavior (quote edit-and-compile))
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-select-edit-window-on-redraw t)
 '(ecb-source-path (quote ("~")))
 '(ecb-tip-of-the-day nil)
 '(ecb-windows-width 0.2)
 '(imenu-auto-rescan t)
 '(package-selected-packages
   (quote
    (ecb undo-tree tabbar-ruler page-break-lines init-loader))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
