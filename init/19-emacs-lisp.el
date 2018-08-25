;;;; emacs lisp

(add-hook 'emacs-lisp-mode-hook 'my-add-pretty-lambda)

(add-hook 'emacs-lisp-mode-hook 'smartparens-strict-mode)

(require-or-install 'rainbow-delimiters)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
