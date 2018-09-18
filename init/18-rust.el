(require-or-install 'rust-mode)
(setq rust-format-on-save t)

(require-or-install 'cargo)
(require-or-install 'racer)

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(require-or-install 'company-mode)
(add-hook 'racer-mode-hook #'company-mode)

(require-or-install 'flycheck-rust)
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(require-or-install 'rust-snippets)
