;; currently counsel depends on swiper and swiper depends on ivy
(require-or-install 'ivy)
(require-or-install 'ivy-hydra)
(ivy-mode 1)

;;; mimic helm behaviors
(setq ivy-wrap t)
(setq ivy-extra-directories nil)
(setq ivy-use-virtual-buffers t)
(setq ivy-use-selectable-prompt t)
(setq ivy-re-builders-alist
      '((read-file-name-internal . ivy--regex-fuzzy)
        (execute-extended-command . ivy--regex-fuzzy)
        (ivy-switch-buffer . ivy--regex-fuzzy)
        (t . ivy--regex-plus)))
(defun ivy-parent-dir ()
  (interactive)
  (ivy--cd (ivy--parent-dir (expand-file-name ivy--directory)))
  (ivy--exhibit))
(define-key ivy-minibuffer-map (kbd "C-l") 'ivy-parent-dir)
(define-key ivy-minibuffer-map (kbd "RET") 'ivy-alt-done)
(define-key ivy-minibuffer-map (kbd "TAB") 'ivy-dispatching-done)
(define-key ivy-minibuffer-map (kbd "C-j") 'ivy-immediate-done)

;;; xref
(require-or-install 'ivy-xref)
(setq xref-show-xrefs-function 'ivy-xref-show-xrefs)

;;; swiper
(require-or-install 'swiper)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-r") 'swiper-all)

;;; counsel, provide more helm like features and a few ivy enhancement
(require-or-install 'counsel)
(counsel-mode 1)
(global-set-key (kbd "C-x C-b") 'counsel-locate)
(global-set-key (kbd "C-x g") 'counsel-rg)
(defalias 'rg 'counsel-rg)
(setcdr (assoc 'counsel-M-x ivy-initial-inputs-alist) "")

;;; Though builtin projectile with ivy completion source mostly works, it
;;; doesn't work with ripgrep-projectile. Luckilly counsel-projectile works.
(require-or-install 'counsel-projectile)
(counsel-projectile-mode)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)
(define-key projectile-command-map (kbd "g") 'counsel-projectile-rg)

;;; visual tweak to make fuzzy match not too colorful
(set-face-attribute
 'ivy-minibuffer-match-face-3 nil
 :background "#777777")

(set-face-attribute
 'ivy-minibuffer-match-face-4 nil
 :background "#777777")
