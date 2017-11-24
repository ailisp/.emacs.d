;;;; Helm

(require-or-install 'helm)
(require 'helm-config)
(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(helm-mode 1)

(require-or-install 'helm-smex)
(global-set-key [remap execute-extended-command] #'helm-smex)
(global-set-key (kbd "M-X") #'helm-smex-major-mode-commands)

(custom-set-faces
 '(helm-ff-directory ((t (:foreground "font-lock-function-name-face"))))
 '(helm-ff-dotted-directory ((t (:foreground "font-lock-function-name-face"))))
 '(helm-ff-dotted-symlink-directory ((t (:background "DimGray" :foreground "font-lock-function-name-face"))))
 '(helm-selection ((t (:background "#4c5e72" :foreground "#e1e1e0" :weight bold))))
 '(helm-source-header ((t (:inherit mode-line-inactive :foreground "white" :weight bold :height 1.3 :family "Sans Serif"))))
 )
