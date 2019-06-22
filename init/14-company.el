(require-or-install 'company)
(define-key company-active-map [tab] 'company-complete-selection)

(require-or-install 'company-quickhelp)
(company-quickhelp-mode)

(add-hook 'after-init-hook 'global-company-mode)
