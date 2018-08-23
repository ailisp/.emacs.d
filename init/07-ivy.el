;; counsel depends on swiper and swiper depends on ivy
(require-or-install 'ivy)
(require-or-install 'swiper)
(require-or-install 'counsel)
(require-or-install 'ivy-hydra)

(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq ivy-re-builders-alist
      '((read-file-name-internal . ivy--regex-fuzzy)
        (execute-extended-command . ivy--regex-fuzzy)
        (ivy-switch-buffer . ivy--regex-fuzzy)
        (t . ivy--regex-plus)))

(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-r") 'swiper-all)
(global-set-key (kbd "C-x C-b") 'counsel-locate)
(global-set-key (kbd "C-x g") 'counsel-rg)

(require-or-install 'ivy-xref)
(setq xref-show-xrefs-function 'ivy-xref-show-xrefs)

(require-or-install 'counsel-projectile)
(counsel-projectile-mode)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)
(define-key projectile-command-map (kbd "g") 'counsel-projectile-rg)
