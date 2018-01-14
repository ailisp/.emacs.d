(require-or-install 'anaconda-mode)
(require-or-install 'company-anaconda)

(add-hook 'python-mode-hook
          (lambda ()
            (anaconda-mode)
            (anaconda-eldoc-mode)
            (auto-complete-mode -1)
            (company-mode 1)
            (add-to-list 'company-backends 'company-anaconda)))

(define-key anaconda-mode-map (kbd "M-,") 'anaconda-mode-go-back)
