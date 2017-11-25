;;;; c

(c-add-style "my-c-style"
             '("linux"
               (c-basic-offset . 4)))
(setf (cdr (assoc 'other c-default-style)) "my-c-style")

(require-or-install 'rtags :install-action
                    #'(lambda ()
                        (rtags-install)))

(require-or-install 'ac-rtags)
(setq rtags-autostart-diagnostics t)
(rtags-diagnostics)
(setq rtags-completions-enabled t)
(defun ac-rtags-prefix ()
  (point))

(require-or-install 'flycheck-rtags)
(defun my-flycheck-rtags-setup ()
  (flycheck-select-checker 'rtags)
  (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
  (setq-local flycheck-check-syntax-automatically nil))

(defun my-rtags-setup ()
  (rtags-start-process-unless-running)
  (push 'ac-source-rtags ac-source)
  (my-flycheck-rtags-setup))

(add-hook 'c-mode-hook #'my-rtags-setup)
(add-hook 'c++-mode-hook #'my-rtags-setup)
(add-hook 'objc-mode-hook #'my-rtags-setup)

(require-or-install 'helm-rtags)
(setq rtags-display-result-backend 'helm)
