;;; Currently semantics (for c/c++) and anaconda (for python)
;;; doesn't work with auto-complete, have to use company-mode
;;; for these buffers.
(require-or-install 'company)
(define-key company-active-map [tab] 'company-complete-selection)

(require-or-install 'company-quickhelp)
(company-quickhelp-mode)
