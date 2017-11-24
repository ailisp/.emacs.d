;;;; Theme, font and some tweak in UI

(when (null window-system)
  (require-or-install 'yascroll)
  (global-yascroll-bar-mode 1))
