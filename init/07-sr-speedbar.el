(require-or-install 'sr-speedbar)

(setq sr-speedbar-right-side nil)
(setq speedbar-show-unknown-files t)
(setq sr-speedbar-width 25)
(setq sr-speedbar-max-width 25)
(setq speedbar-use-images nil)
(setq speedbar-initial-expansion-list-name "files")

(global-set-key (kbd "C-x 3")
                '(lambda ()
                   (interactive)
                   (sr-speedbar-toggle)
                   (when (sr-speedbar-exist-p)
                     (with-current-buffer sr-speedbar-buffer-name
                       (setq window-size-fixed 'width)))))

;; (defun resize-speedbar-on-window-size-changed (&optional frame)
;;   (when (sr-speedbar-exist-p)
;;     (when (or (/= (window-pixel-width-before-size-change)
;;                   (window-pixel-width))
;;               (/= (window-pixel-height-before-size-change)
;;                   (window-pixel-height)))
;;       ;; (sr-speedbar-close)
;;       (with-current-buffer sr-speedbar-buffer-name
;;         (setq window-size-fixed nil))
;;       (setq sr-speedbar-width
;;             (max 30 (min 35 (round (* 0.3 (window-width))))))
;;       (setq sr-speedbar-max-width
;;             sr-speedbar-width)
;;       (with-current-buffer sr-speedbar-buffer-name
;;         (setq window-size-fixed 'width))
;;       (setq ring-bell-function nil)
;;       (ding)
;;       ;; (sr-speedbar-open)
;;       )))

;; (add-to-list 'window-size-change-functions #'resize-speedbar-on-window-size-changed)
