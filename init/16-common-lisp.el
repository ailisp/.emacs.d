;;; The path to lisp and slime
(setq inferior-lisp-program "~/common-lisp/ccl/ccl.bat")
;(setq inferior-lisp-program "~/common-lisp/sbcl/1.3.9/sbcl")
;(setq inferior-lisp-program "~/common-lisp/clisp-2.49/clisp")
(load "~/quicklisp/slime-helper.el")
(load "~/quicklisp/clhs-use-local.el" t)

;;; Auto completion
(require-or-install 'ac-slime)
(ac-config-default)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))

;;; slime
(add-hook 'slime-mode-hook
	  (lambda ()
	    (unless (slime-connected-p)
	      (save-excursion (slime)))))
(setq slime-net-coding-system 'utf-8-unix)
(eval-after-load 'slime
  `(define-key slime-prefix-map (kbd "M-h") 'slime-documentation-lookup))

(require-or-install 'paredit)
(add-hook 'lisp-mode-hook #'enable-paredit-mode)
