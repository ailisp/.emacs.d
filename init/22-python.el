(require-or-install 'anaconda-mode)
(require-or-install 'company-anaconda)
(require-or-install 'py-autopep8)

(add-hook 'python-mode-hook
          (lambda ()
            (anaconda-mode)
            (anaconda-eldoc-mode)
            (add-to-list 'company-backends 'company-anaconda)
            (py-autopep8-enable-on-save)))

(define-key anaconda-mode-map (kbd "M-,") 'anaconda-mode-go-back)
