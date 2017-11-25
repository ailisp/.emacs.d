;;;; C, C++, Objective-C

(c-add-style "my-c-style"
             '("linux"
               (c-basic-offset . 4)))
(setf (cdr (assoc 'other c-default-style)) "my-c-style")

(require-or-install 'rtags :install-action
                    #'(lambda ()
                        (rtags-install)))

(require-or-install 'flycheck-rtags)
(defun my-flycheck-rtags-setup ()
  (flycheck-select-checker 'rtags)
  (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
  (setq-local flycheck-check-syntax-automatically nil))

(require-or-install 'helm-rtags)
(setq rtags-display-result-backend 'helm)

(require-or-install 'auto-complete-clang)

(defun my-rtags-setup ()
  (rtags-start-process-unless-running)
  (add-to-list 'ac-sources 'ac-source-clang)
  (my-flycheck-rtags-setup))

(define-key c-mode-base-map (kbd "M-.") 'rtags-find-symbol-at-point)
(define-key c-mode-base-map (kbd "M-,") 'rtags-location-stack-back)
(define-key c-mode-base-map (kbd "M-?") 'rtags-find-references)

(add-hook 'c-mode-hook 'my-rtags-setup)
(add-hook 'c++-mode-hook 'my-rtags-setup)
(add-hook 'objc-mode-hook 'my-rtags-setup)
