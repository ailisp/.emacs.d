;;;; Org-mode specific settings
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
(eval-after-load "org"
  '(progn
     (define-key org-mode-map (kbd "<M-left>") nil)
     (define-key org-mode-map (kbd "<M-right>") nil)
     (define-key org-mode-map (kbd "M-[") 'org-metaleft)
     (define-key org-mode-map (kbd "M-]") 'org-metaright)))
