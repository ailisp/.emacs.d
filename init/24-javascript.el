(require-or-install 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(setq js2-basic-offset 2)
(setq js2-skip-preprocessor-directives t)
(setq js2-strict-missing-semi-warning nil)
(setq js2-missing-semi-one-line-override t)
;; Skewer mode for html and css live editing repl
;; Indium mode for node/browser js live editing
;; tide for typescript and javascript jump to definition, find referene, auto complete
;; js2-refactor for refactoring
