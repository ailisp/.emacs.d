(require-or-install 'smartparens)
(require 'smartparens-config)
(smartparens-global-mode)

(global-set-key (kbd "<f8>") 'smartparens-strict-mode)
;; (sp-use-smartparens-bindings)
(sp-use-paredit-bindings)
(define-key smartparens-mode-map (kbd "M-)") (lambda () (interactive) (sp-rewrap-sexp '("(" . ")"))))
(define-key smartparens-mode-map (kbd "M-}") (lambda () (interactive) (sp-rewrap-sexp '("{" . "}"))))
(define-key smartparens-mode-map (kbd "M-]") (lambda () (interactive) (sp-rewrap-sexp '("[" . "]"))))
(define-key smartparens-mode-map (kbd "M-[") 'sp-wrap-square)
(define-key smartparens-mode-map (kbd "M-]") 'sp-wrap-curly)
(define-key smartparens-mode-map (kbd "C-M-<backspace>") 'sp-backward-kill-sexp)
