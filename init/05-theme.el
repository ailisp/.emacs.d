;; ;;;; Theme

(load-theme 'whiteboard)
;; (load-theme 'misterioso)
;; (when (windowsp)
;;   (set-face-attribute
;;    'default nil
;;    :family "DejaVu Sans Mono"))
;; (when (macp)
;;   (set-face-attribute
;;    'default nil
;;    :height 140
;;    :family "DejaVu Sans Mono"))

;; ;;; For some reason, cursor face doesn't change in new window
;; ;;; call it after create new frame
;; (defun set-cursor-face ()
;;   (set-cursor-color "sky blue"))
;; (set-cursor-face)
;; (add-hook 'after-make-frame-functions
;;           (lambda (f)
;;             (with-selected-frame f
;;               (set-cursor-face))))

;; (set-face-attribute
;;  'mode-line-inactive nil
;;  :background "#435364")
;; (set-face-attribute
;;  'header-line nil
;;  :background "#506478"
;;  :foreground "white")
