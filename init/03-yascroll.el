(when (or (linuxp) (macp))
  (require-or-install 'yascroll)
  (global-yascroll-bar-mode 1))
