;;;; Clojure and ClojureScript

(require-or-install 'clojure-mode)
(require-or-install 'cljsbuild-mode)
(require-or-install 'elein)

(add-hook 'clojure-mode-hook 'subword-mode)

(require-or-install 'paredit-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)
(define-key paredit-mode-map (kbd "M-[") 'paredit-wrap-square)
(define-key paredit-mode-map (kbd "M-{") 'paredit-wrap-curly)

;; Give a try on smartparens, seems good, move it to other modes as well
(require-or-install 'smartparens)
(require 'smartparens-config)
(add-hook 'clojure-mode-hook 'smartparens-mode)
;; smartparens-mode-map sp-use-smartparens-mode-map sp-use-paredit-mode-map
(define-key smartparens-mode-map (kbd "M-)") (lambda () (interactive) (sp-rewrap-sexp '("(" . ")"))))
(define-key smartparens-mode-map (kbd "M-}") (lambda () (interactive) (sp-rewrap-sexp '("{" . "}"))))
(define-key smartparens-mode-map (kbd "M-]") (lambda () (interactive) (sp-rewrap-sexp '("[" . "]"))))

;; TODO seems very helpful, should be used for other modes
(require-or-install 'aggressive-indent)
(add-hook 'clojure-mode-hook 'aggressive-indent-mode)

(require-or-install 'cider)
(setq cider-prompt-for-symbol nil)
(add-hook 'cider-mode-hook 'eldoc-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'smartparens-mode)

(require-or-install 'company)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)
(add-hook 'cider-repl-mode-hook #'cider-company-enable-fuzzy-completion)
(add-hook 'cider-mode-hook #'cider-company-enable-fuzzy-completion)
(require-or-install 'company-quickhelp)
(company-quickhelp-mode)

;; TODO: need some config to make flycheck working
;; (require-or-install 'flycheck-clojure)
;; (flycheck-clojure-setup)

;; Seems ac-cider doesn't work now. Have to use company-mode
;; (require-or-install 'ac-cider)
;; (add-hook 'cider-mode-hook 'ac-flyspell-workaround)
;; (add-hook 'cider-mode-hook 'ac-cider-setup)
;; (add-hook 'cider-repl-mode-hook 'ac-cider-setup)
;; (eval-after-load "auto-complete"
;;   '(progn
;;      (add-to-list 'ac-modes 'cider-mode)
;;      (add-to-list 'ac-modes 'cider-repl-mode)))
