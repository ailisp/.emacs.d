;;;; Platform specific configuration with external libraries

(when (macp)
  (require-or-install 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

;; (when (windowsp)
;;   (add-to-list 'exec-path "C:\\"))
