(require-or-install 'solidity-mode)
(require-or-install 'company-solidity)

(define-key solidity-mode-map (kbd "C-c g") 'solidity-estimate-gas-at-point)
(add-hook 'solidity-mode #'flycheck-mode)
(setq solidity-flycheck-solc-checker-active t)
