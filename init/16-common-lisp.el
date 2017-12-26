;;;; common lisp

;;; The path to lisp and slime
(load "~/quicklisp/slime-helper.el")
(load "~/quicklisp/clhs-use-local.el" t)

(when (linuxp)
  (setq slime-lisp-implementations
        `((ccl ("ccl") :coding-system utf-8-unix)
          (ccl-dev ("ccl-dev") :coding-system utf-8-unix)
          (ccl32 ("ccl32") :coding-system utf-8-unix)
          (ccl32-dev ("ccl32-dev") :coding-system utf-8-unix)
          (sbcl ("sbcl") :coding-system utf-8-unix))))
(when (windowsp)
  (setq slime-lisp-implementations
        `((ccl ("ccl.bat") :coding-system utf-8-unix))))

;;; slime
(add-hook 'slime-mode-hook
	  (lambda ()
	    (unless (slime-connected-p)
	      (save-excursion (slime)))))
(setq slime-net-coding-system 'utf-8-unix)
(eval-after-load 'slime
  `(define-key slime-prefix-map (kbd "M-h") 'slime-documentation-lookup))

;;; faces
(custom-set-faces
 '(secondary-selection ((t (:background "steel blue"))))
 '(slime-repl-inputed-output-face ((t (:foreground "chocolate")))))
(add-hook 'lisp-mode-hook #'my-add-pretty-lambda)
(add-hook 'slime-repl-mode #'my-add-pretty-lambda)

;;; auto completion
(require-or-install 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))

;;; paredit
(require-or-install 'paredit)
(eval-after-load "paredit"
  '(add-hook 'lisp-mode-hook #'enable-paredit-mode))
