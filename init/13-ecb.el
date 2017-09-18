;;; Arrange buffers and navigate files and code
(require-or-install 'ecb)
(set-face-attribute 'ecb-default-highlight-face nil
                    :background "#464646")
(set-face-attribute 'ecb-tag-header-face nil
		    :background  "#008b8b")

(custom-set-variables
 '(imenu-auto-rescan t)
 '(ecb-auto-update-methods-after-save t)
 '(ecb-compilation-buffer-names
   (quote
    (("*Calculator*")
     ("*Apropos*")
     ("*Occur*")
     ("*shell*")
     ("\\*[cC]ompilation.*\\*" . t)
     ("\\*i?grep.*\\*" . t)
     ("*Help*")
     ("*eww*")
     ("\\.*w3\\.*")
     ("*Completions*")
     ("*Backtrace*")
     ("*Compile-Log*")
     ("*Messages*")
     ("*scratch*")
     ("*slime-events*")
     ("*inferior-lisp*"))))
 '(ecb-compilation-major-modes (quote (compilation-mode slime-repl-mode)))
 '(ecb-compile-window-height 0.3)
 '(ecb-compile-window-width (quote edit-window))
 '(ecb-display-default-dir-after-start t)
 '(ecb-enlarged-compilation-window-max-height 1.0)
 '(ecb-layout-always-operate-in-edit-window (quote (delete-other-windows switch-to-buffer)))
 '(ecb-options-version "2.50")
 '(ecb-other-window-behavior (quote edit-and-compile))
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-select-edit-window-on-redraw t)
 '(ecb-source-path (quote ("~")))
 '(ecb-tip-of-the-day nil)
 '(ecb-windows-width 0.2))
 
