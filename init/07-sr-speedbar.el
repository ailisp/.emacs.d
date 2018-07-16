(require-or-install 'sr-speedbar)

(setq sr-speedbar-right-side nil)
(setq speedbar-show-unknown-files t)
(setq sr-speedbar-width 25)
(setq sr-speedbar-max-width 25)
(setq speedbar-use-images nil)
(sr-speedbar-refresh-turn-off)

(global-set-key (kbd "C-x 3") 'sr-speedbar-toggle)
(global-set-key (kbd "C-o") 'sr-speedbar-select-window)

(defvar speedbar-need-refresh nil)

(add-hook 'buffer-list-update-hook 'check-refresh-speedbar)

(defun check-refresh-speedbar ()
  (when (and (sr-speedbar-exist-p)
             (or (string= "buffers" speedbar-initial-expansion-list-name)
                 (string= "quick buffers" speedbar-initial-expansion-list-name)))
    (setq speedbar-need-refresh t)))

(add-hook 'speedbar-timer-hook 'my-refresh-speedbar)

(defun my-refresh-speedbar ()
  (when speedbar-need-refresh
    (setq speedbar-need-refresh nil)
    (speedbar-refresh)))

(speedbar-add-supported-extension ".lisp")
(speedbar-add-supported-extension ".clj")
(speedbar-add-supported-extension ".cljs")
(speedbar-add-supported-extension ".go")
(speedbar-add-supported-extension ".js")

;; (defun speedbar-find-file-in-frame (file)
;;   "This will load FILE into the speedbar attached frame.
;; If the file is being displayed in a different frame already, then raise that
;; frame instead."
;;   (let* ((buff (find-file ;;-noselect
;;                 file))
;; 	 (bwin (get-buffer-window buff 0)))
;;     (if bwin
;; 	(progn
;; 	  (select-window bwin)
;; 	  (raise-frame (window-frame bwin)))
;;       (if dframe-power-click
;; 	  (let ((pop-up-frames t)) (select-window (display-buffer buff)))
;; 	(if (numberp speedbar-select-frame-method)
;; 	    (other-frame speedbar-select-frame-method)
;; 	  (dframe-select-attached-frame speedbar-frame))
;; 	(switch-to-buffer buff)))))
;; '(lambda ()
;;    (interactive)
;;    (sr-speedbar-toggle)
;;    (if (sr-speedbar-exist-p)
;;        (with-current-buffer sr-speedbar-buffer-name
;;          (setq window-size-fixed 'width))))

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
