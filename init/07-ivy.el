;; counsel depends on swiper and swiper depends on ivy
(require-or-install 'counsel)
(require-or-install 'ivy-hydra)

(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))

(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-r") 'swiper-all)
(global-set-key (kbd "C-x C-b") 'counsel-locate)
(global-set-key (kbd "C-x g") 'counsel-rg)
