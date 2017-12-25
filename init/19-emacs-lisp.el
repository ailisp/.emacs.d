;;;; emacs lisp

(add-hook 'emacs-lisp-mode-hook #'my-add-pretty-lambda)

(require-or-install 'paredit)
(eval-after-load "paredit"
  '(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode))
