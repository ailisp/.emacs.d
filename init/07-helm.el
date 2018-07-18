;;;; Helm

(require-or-install 'helm)
(require 'helm-config)

(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-for-files)
(helm-mode 1)

(defvar my-helm-window-height 0.3)

(defun my-helm-display-buffer-at-bottom (buffer &optional _resume)
  (let ((window (or (purpose-display-reuse-window-buffer buffer nil)
                    (purpose-display-reuse-window-purpose buffer nil)
                    (purpose-display-at-bottom buffer nil my-helm-window-height))))
    (if window
        (progn
          (select-window window)
          ;; don't know why, but it doesn't work without `switch-to-buffer'
          (switch-to-buffer buffer t t))
      ;; in case the above methods weren't successful, fallback to default
      ;; helm display function
      (funcall #'helm-default-display-buffer buffer))))

(setq helm-display-function #'my-helm-display-buffer-at-bottom)

(require-or-install 'helm-smex)
(global-set-key [remap execute-extended-command] #'helm-smex)
(global-set-key (kbd "M-X") #'helm-smex-major-mode-commands)

(custom-set-faces
 '(helm-ff-directory ((t (:foreground "white"))))
 '(helm-ff-dotted-directory ((t (:foreground "white"))))
 '(helm-ff-dotted-symlink-directory ((t (:background "DimGray" :foreground "font-lock-function-name-face"))))
 '(helm-selection ((t (:background "sky blue" :foreground "#212931" :weight bold))))
 '(helm-source-header ((t (:inherit mode-line-inactive :foreground "white" :weight bold :height 1.3 :family "Sans Serif"))))
 '(helm-candidate-number ((t (:foreground "yellow")))))
