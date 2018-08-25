;;;; Clojure and ClojureScript

(require-or-install 'clojure-mode)
(require-or-install 'cljsbuild-mode)
(require-or-install 'elein)

(add-hook 'clojure-mode-hook 'subword-mode)


(require-or-install 'cider)
(setq cider-prompt-for-symbol nil)
(add-hook 'cider-mode-hook 'eldoc-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'smartparens-strict-mode)
(add-hook 'clojure-mode-hook 'smartparens-strict-mode)

(require 'company)
(add-hook 'cider-repl-mode-hook 'company-mode)
(add-hook 'cider-mode-hook 'company-mode)
(add-hook 'cider-repl-mode-hook 'cider-company-enable-fuzzy-completion)
(add-hook 'cider-mode-hook 'cider-company-enable-fuzzy-completion)

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
