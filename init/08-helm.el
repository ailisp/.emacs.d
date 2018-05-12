;;;; Helm

(require-or-install 'helm)
(require 'helm-config)

(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-for-files)
(helm-mode 1)

(require-or-install 'helm-smex)
(global-set-key [remap execute-extended-command] #'helm-smex)
(global-set-key (kbd "M-X") #'helm-smex-major-mode-commands)

(defun *-popwin-help-mode-off ()
  "Turn `popwin-mode' off for *Help* buffers."
  (when (boundp 'popwin:special-display-config)
    (customize-set-variable 'popwin:special-display-config
                            (delq 'help-mode popwin:special-display-config))))

(defun *-popwin-help-mode-on ()
  "Turn `popwin-mode' on for *Help* buffers."
  (when (boundp 'popwin:special-display-config)
    (customize-set-variable 'popwin:special-display-config
                            (add-to-list 'popwin:special-display-config 'help-mode nil #'eq))))

(add-hook 'helm-minibuffer-set-up-hook #'*-popwin-help-mode-off)
(add-hook 'helm-cleanup-hook #'*-popwin-help-mode-on)

(custom-set-faces
 '(helm-ff-directory ((t (:foreground "white"))))
 '(helm-ff-dotted-directory ((t (:foreground "white"))))
 '(helm-ff-dotted-symlink-directory ((t (:background "DimGray" :foreground "font-lock-function-name-face"))))
 '(helm-selection ((t (:background "sky blue" :foreground "#212931" :weight bold))))
 '(helm-source-header ((t (:inherit mode-line-inactive :foreground "white" :weight bold :height 1.3 :family "Sans Serif"))))
 '(helm-candidate-number ((t (:foreground "yellow")))))
