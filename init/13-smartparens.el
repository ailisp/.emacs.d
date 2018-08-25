(require-or-install 'smartparens)
(require 'smartparens-config)
(smartparens-global-mode)
(setq sp-show-pair-from-inside t)
(show-smartparens-global-mode)

;; SEdit mimic
(set-face-attribute
 'sp-pair-overlay-face nil
 :inherit nil
 :background "#415160")
(set-face-attribute
 'sp-show-pair-match-content-face nil
 :inherit 'sp-pair-overlay-face)

(global-set-key (kbd "<f8>") 'smartparens-strict-mode)
(sp-use-paredit-bindings)
(define-key smartparens-mode-map (kbd "M-)") (lambda () (interactive) (sp-rewrap-sexp '("(" . ")"))))
(define-key smartparens-mode-map (kbd "M-}") (lambda () (interactive) (sp-rewrap-sexp '("{" . "}"))))
(define-key smartparens-mode-map (kbd "M-]") (lambda () (interactive) (sp-rewrap-sexp '("[" . "]"))))
(define-key smartparens-mode-map (kbd "M-[") 'sp-wrap-square)
(define-key smartparens-mode-map (kbd "M-]") 'sp-wrap-curly)
(define-key smartparens-mode-map (kbd "C-M-<backspace>") 'sp-backward-kill-sexp)
(define-key smartparens-mode-map (kbd "C-M-t") 'sp-transpose-sexp)
(define-key smartparens-mode-map (kbd "C-M-k") 'sp-kill-sexp)
(define-key smartparens-mode-map (kbd "C-M-w") 'sp-copy-sexp)
(define-key smartparens-mode-map (kbd "C-M-SPC") 'sp-mark-sexp)

(define-key smartparens-mode-map (kbd "M-F") 'sp-forward-symbol)
(define-key smartparens-mode-map (kbd "M-B") 'sp-backward-symbol)
(define-key smartparens-mode-map (kbd "C-(") 'sp-beginning-of-sexp)
(define-key smartparens-mode-map (kbd "C-)") 'sp-end-of-sexp)
(define-key smartparens-mode-map (kbd "C-{") 'sp-previous-sexp)
(define-key smartparens-mode-map (kbd "C-}") 'sp-next-sexp)

(define-key smartparens-mode-map (kbd "RET") 'sp-newline)
(define-key smartparens-strict-mode-map (kbd ";") 'sp-comment)
(define-key smartparens-strict-mode-map (kbd ")") 'sp-up-sexp)
(define-key smartparens-strict-mode-map (kbd "]") 'sp-up-sexp)
(define-key smartparens-strict-mode-map (kbd "}") 'sp-up-sexp)

(defun sp-show--pair-create-overlays (start end olen clen)
  "Create the show pair overlays."
  (when sp-show-pair-overlays
    (sp-show--pair-delete-overlays))
  (let* ((oleft (make-overlay start (+ start olen) nil t nil))
         (omiddle (make-overlay (+ start olen) (- end clen) nil t nil))
         (oright (make-overlay (- end clen) end nil t nil)))
    (setq sp-show-pair-overlays (list oleft omiddle oright))
    (overlay-put oleft 'face 'sp-show-pair-match-face)
    ;; Changed here, only put overlay if there's no region marked
    (unless (use-region-p)
      (overlay-put omiddle 'face 'sp-show-pair-match-content-face))
    (overlay-put oright 'face 'sp-show-pair-match-face)
    (overlay-put oleft 'priority 1000)
    (overlay-put omiddle 'priority 1000)
    (overlay-put oright 'priority 1000)
    (overlay-put oleft 'type 'show-pair)))
