;;;; Theme, font and some tweak in UI

(when (or (linuxp) (macp))
  (require-or-install 'yascroll)
  (global-yascroll-bar-mode 1))

(require 'pixel-scroll)
(pixel-scroll-mode)

(require-or-install 'telephone-line)
(setq telephone-line-lhs
  '((accent . (telephone-line-vc-segment
               telephone-line-erc-modified-channels-segment
               telephone-line-process-segment))
    (nil    . (telephone-line-projectile-segment
               telephone-line-buffer-segment))))
(set-face-attribute
 'telephone-line-accent-inactive nil
 :background "#435364")
(telephone-line-mode 1)
