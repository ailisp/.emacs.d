;;;; Theme, font and some tweak in UI

(when (or (linuxp) (macp))
  (require-or-install 'yascroll)
  (global-yascroll-bar-mode 1))

;; (require-or-install 'sublimity)
;; (require 'sublimity-scroll)
;; ;; (require 'sublimity-map) ;; experimental
;; (require 'sublimity-attractive)
;; (sublimity-mode 1)

;; (require-or-install 'smooth-scrolling)
;; (smooth-scrolling-mode 1)

(require-or-install 'powerline)
(powerline-center-theme)
