(require-or-install 'sr-speedbar)

(setq sr-speedbar-right-side nil)
(setq speedbar-show-unknown-files t)
(setq sr-speedbar-width 25)
(setq sr-speedbar-max-width 25)
(setq speedbar-use-images nil)
(sr-speedbar-refresh-turn-off)

(global-set-key (kbd "C-x 3") 'sr-speedbar-toggle)
(global-set-key (kbd "C-o") 'sr-speedbar-select-window)

;; (defvar speedbar-need-refresh nil)

;; (add-hook 'buffer-list-update-hook 'check-refresh-speedbar)

;; (defun check-refresh-speedbar ()
;;   (when (and (sr-speedbar-exist-p)
;;              (or (string= "buffers" speedbar-initial-expansion-list-name)
;;                  (string= "quick buffers" speedbar-initial-expansion-list-name)))
;;     (setq speedbar-need-refresh t)))

;; (add-hook 'speedbar-timer-hook 'my-refresh-speedbar)

;; (defun my-refresh-speedbar ()
;;   (when speedbar-need-refresh
;;     (setq speedbar-need-refresh nil)
;;     (speedbar-refresh)))

(speedbar-add-supported-extension ".lisp")
(speedbar-add-supported-extension ".clj")
(speedbar-add-supported-extension ".cljs")
(speedbar-add-supported-extension ".go")
(speedbar-add-supported-extension ".js")

(define-key speedbar-key-map "\C-b"
  (lambda () (interactive)
    (speedbar-change-initial-expansion-list "buffers")))

(define-key speedbar-key-map "s" 'fit-window-horizontally)

(defun split-window-conditional ()
  (interactive)
  (unless (eq sr-speedbar-window (selected-window))
   (if (>= (* 39 (window-height)) (* 17 (window-width)))
       (split-window-vertically)
     (split-window-horizontally))))

;; (message "%s" (selected-window))
;; (setq ring-bell-function nil)
;; (ding)
