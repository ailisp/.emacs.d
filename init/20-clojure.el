;;;; Clojure and ClojureScript

(require-or-install 'clojure-mode)
(require-or-install 'cljsbuild-mode)
(require-or-install 'elein)

(add-hook 'clojure-mode-hook 'subword-mode)

(require-or-install 'cider)
(add-hook 'cider-mode-hook 'eldoc-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)

(require-or-install 'flycheck-clojure)
(flycheck-clojure-setup)
