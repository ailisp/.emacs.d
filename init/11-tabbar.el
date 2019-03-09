;;;; Tabbar

(require-or-install 'tabbar)

;;; Tabbar settings
;;; These faces are acceptable with both dark and light themes
(set-face-attribute
 'tabbar-default nil
 :height 0.9
 :background "gray20"
 :foreground "gray20"
 :box '(:line-width 1 :color "gray20" :style nil))
(set-face-attribute
 'tabbar-unselected nil
 :background "gray30"
 :foreground "white"
 :box '(:line-width 2 :color "gray30" :style nil))
(set-face-attribute
 'tabbar-modified nil
 :background "gray30"
 :foreground "yellow"
 :box '(:line-width 2 :color "gray30" :style nil))
(set-face-attribute
 'tabbar-selected nil
 :background "gray75"
 :foreground "black"
 :box '(:line-width 2 :color "gray75" :style nil))
(set-face-attribute
 'tabbar-selected-modified nil
 :background "gray75"
 :foreground "midnight blue"
 :weight 'bold
 :box '(:line-width 2 :color "gray75" :style nil))
(set-face-attribute
 'tabbar-highlight nil
 :background "white"
 :foreground "black"
 :underline nil
 :box '(:line-width 2 :color "white" :style nil))
(set-face-attribute
 'tabbar-button nil
 :box '(:line-width 1 :color "gray20" :style nil))
(set-face-attribute
 'tabbar-separator nil
 :background "gray20"
 :height 0.6)

;;; Change padding of the tabs
;;; we also need to set separator to avoid overlapping tabs by highlighted tabs
;;; And hide scroll-button
(custom-set-variables
 '(tabbar-separator (quote (0.5)))
 '(tabbar-scroll-left-button (quote (("") "")))
 '(tabbar-scroll-right-button (quote (("") ""))))
;; adding spaces
(defun tabbar-buffer-tab-label (tab)
  "Return a label for TAB.
That is, a string used to represent it on the tab bar."
  (let ((label  (if tabbar--buffer-show-groups
                    (format "[%s]  " (tabbar-tab-tabset tab))
                  (format "%s  " (tabbar-tab-value tab)))))
    ;; Unless the tab bar auto scrolls to keep the selected tab
    ;; visible, shorten the tab label to keep as many tabs as possible
    ;; in the visible area of the tab bar.
    (if tabbar-auto-scroll-flag
        label
      (tabbar-shorten
       label (max 1 (/ (window-width)
                       (length (tabbar-view
                                (tabbar-current-tabset)))))))))

(defun tabbar-buffer-select-tab (event tab)
  "On mouse EVENT, select TAB."
  (let ((mouse-button (event-basic-type event))
        (buffer (tabbar-tab-value tab)))
    (cond
     ((eq mouse-button 'mouse-2)
      (pop-to-buffer buffer t))
     ((eq mouse-button 'mouse-3)
      (delete-other-windows))
     (t
      ;; Was (switch-to-buffer buffer)
      ;; Changed to work around purpose-mode
      (switch-to-buffer buffer nil t)))
    ;; Don't show groups.
    (tabbar-buffer-show-groups nil)
    ))

(defun tabbar-buffer-track-killed ()
  "Hook run just before actually killing a buffer.
In Tabbar mode, try to switch to a buffer in the current tab bar,
after the current buffer has been killed.  Try first the buffer in tab
after the current one, then the buffer in tab before.  On success, put
the sibling buffer in front of the buffer list, so it will be selected
first."
  (and (eq header-line-format tabbar-header-line-format)
       (eq tabbar-current-tabset-function 'tabbar-buffer-tabs)
       (eq (current-buffer) (window-buffer (selected-window)))
       (let ((bl (tabbar-tab-values (tabbar-current-tabset)))
             (b  (current-buffer))
             found sibling)
         (while (and bl (not found))
           (if (eq b (car bl))
               (setq found t)
             (setq sibling (car bl)))
           (setq bl (cdr bl)))
         (when (and (setq sibling (or (car bl) sibling))
                    (buffer-live-p sibling))
           ;; Move sibling buffer in front of the buffer list.
           (save-current-buffer
             ;; Was (switch-to-buffer sibling)
             ;; Changed to work around with purpose mode
             (switch-to-buffer sibling nil t))))))

(tabbar-mode 1)

(defun tabbar-modification-state-change ()
  (tabbar-set-template tabbar-current-tabset nil)
  (tabbar-display-update))

(add-hook 'after-save-hook 'tabbar-modification-state-change)
(add-hook 'first-change-hook 'tabbar-modification-state-change)

(require 'cl)

(setq tabbar-buffer-groups-function
      (lambda ()
        "Return the list of group names the current buffer belongs to.
Return a list of one element based on major mode."
        (list
         (cond
          ((tabbar-buffer-mode-derived-p
            major-mode '(comint-mode compilation-mode))
           "Compilation")
          ((memq major-mode
                 '(slime-repl-mode lisp-interaction-mode eshell-mode))
           "Compilation")
          ((cl-search "*" (buffer-name))
           "Misc")
          ((memq major-mode
                 '(help-mode apropos-mode Info-mode Man-mode))
           "Misc")
          ((memq major-mode
                 '(rmail-mode
                   rmail-edit-mode vm-summary-mode vm-mode mail-mode
                   mh-letter-mode mh-show-mode mh-folder-mode
                   gnus-summary-mode message-mode gnus-group-mode
                   gnus-article-mode score-mode gnus-browse-killed-mode))
           "Mail")
          (t
           "Main")))))

(global-set-key (kbd "<M-right>") 'tabbar-forward-tab)
(global-set-key (kbd "<M-left>") 'tabbar-backward-tab)
