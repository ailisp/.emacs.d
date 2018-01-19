;;;; auto-complete

(require-or-install 'auto-complete)
(ac-config-default)

;;; Currently semantics (for c/c++) and anaconda (for python)
;;; doesn't work with auto-complete, have to use company-mode
;;; for these buffers.
(require-or-install 'company)
(define-key company-active-map [tab] 'company-complete-selection)

(require 'color)
(let ((bg (face-attribute 'default :background)))
  (custom-set-faces
   `(company-preview-common ((t :inherit ac-completion-face)))
   `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 10)))))
   `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 30)))))
   `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 20)))))
   `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
   `(company-tooltip-common ((t (:inherit font-lock-builtin-face))))
   `(company-template-field ((t (:background ,(color-lighten-name bg 10)))))
   `(company-tooltip-annotation ((t (:inherit font-lock-builtin-face))))))
