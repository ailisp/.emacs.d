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
        `((sbcl ("sbcl") :coding-system utf-8-unix)
          (ccl ("ccl.bat") :coding-system utf-8-unix))))
(when (macp)
  (setq slime-lisp-implementations
        `((sbcl ("sbcl") :coding-system utf-8-unix))))

;;; slime
(add-hook 'slime-mode-hook
	  (lambda ()
	    (unless (slime-connected-p)
	      (save-excursion (slime)))))
(setq slime-net-coding-system 'utf-8-unix)
(global-set-key (kbd "C-c s") 'slime-selector)
(eval-after-load 'slime
  `(define-key slime-prefix-map (kbd "M-h") 'slime-documentation-lookup))

;;; faces
(add-hook 'lisp-mode-hook 'my-add-pretty-lambda)

;;; auto completion
(require-or-install 'slime-company)
(setq slime-contribs '(slime-fancy slime-indentation slime-company))

;;; smartparens
(add-hook 'lisp-mode-hook 'smartparens-strict-mode)
(add-hook 'slime-repl-mode-hook 'smartparens-strict-mode)

;; pretty lambda cause coloring not correct in slime-repl manual call
;; M-x font-lock-mode can fix but call that in function in lisp
;; doesn't work
