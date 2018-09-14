(require-or-install 'rust-mode)
(setq rust-format-on-save t)

(require-or-install 'flycheck-rust)
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(require-or-install 'cargo)
(require-or-install 'racer)
