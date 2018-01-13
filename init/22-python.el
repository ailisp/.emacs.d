(require-or-install 'anaconda-mode)
(require-or-install 'company-anaconda)

(add-hook 'python-mode-hook
          (lambda ()
            (anaconda-mode)
            (anaconda-eldoc-mode)
            (auto-complete-mode -1)
            (company-mode 1)))

(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))
