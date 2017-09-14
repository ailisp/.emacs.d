;;;; Custiomize by emacs
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (manoj-dark)))
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
     ("*slime-events*")
     ("*inferior-lisp*"))))
 '(ecb-compilation-major-modes (quote (compilation-mode slime-repl-mode)))
 '(ecb-compile-window-height 0.3)
 '(ecb-compile-window-width (quote edit-window))
 '(ecb-display-default-dir-after-start t)
 '(ecb-enlarged-compilation-window-max-height 1.0)
 '(ecb-layout-always-operate-in-edit-window (quote (delete-other-windows switch-to-buffer)))
 '(ecb-layout-window-sizes
   (quote
    (("left8"
      (ecb-directories-buffer-name 0.1927710843373494 . 0.41379310344827586)
      (ecb-sources-buffer-name 0.1927710843373494 . 0.3448275862068966)
      (ecb-methods-buffer-name 0.1927710843373494 . 0.4482758620689655)
      (ecb-history-buffer-name 0.1927710843373494 . 0.2413793103448276)))))
 '(ecb-options-version "2.50")
 '(ecb-other-window-behavior (quote edit-and-compile))
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-select-edit-window-on-redraw t)
 '(ecb-source-path (quote ("~")))
 '(ecb-tip-of-the-day nil)
 '(ecb-windows-width 0.2)
 '(fci-rule-color "#37474f")
 '(hl-sexp-background-color "#1c1f26")
 '(imenu-auto-rescan t)
 '(package-selected-packages
   (quote
    (flymd markdown-mode paredit undo-tree tabbar-ruler page-break-lines material-theme ac-slime)))
 '(tabbar-ruler-swap-faces t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(secondary-selection ((t (:background "steel blue"))))
 '(slime-repl-inputed-output-face ((t (:foreground "chocolate"))))
 '(tabbar-selected-modified ((t (:inherit tabbar-default :foreground "deep sky blue" :box nil :height 98 :width normal :family "Sans Serif")))))
