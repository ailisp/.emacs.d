(require-or-install 'telephone-line)
(setq telephone-line-lhs
      '((accent . (telephone-line-buffer-segment
                   telephone-line-position-segment))
        (nil    . (telephone-line-major-mode-segment))))

(setq telephone-line-rhs
      '((nil    . (telephone-line-flycheck-segment
                   telephone-line-projectile-segment))
        (accent . (telephone-line-vc-segment))))

(telephone-line-defsegment telephone-line-projectile-segment ()
  "Displays the current project name, according to projectile."
  (if (fboundp 'projectile-project-name)
      (propertize (projectile-project-name)
                  'face 'telephone-line-projectile
                  'display '(raise 0.0)
                  'help-echo "Switch project"
                  'mouse-face '(:box 1)
                  'local-map (make-mode-line-mouse-map
                              'mouse-1 (lambda ()
                                         (interactive)
                                         (counsel-projectile-switch-project))))))
(set-face-attribute
 'telephone-line-accent-active nil
 :background "#43655d")
(set-face-attribute
 'telephone-line-projectile nil
 :inherit nil)
(set-face-attribute
 'telephone-line-accent-inactive nil
 :background "#435364")
(telephone-line-mode 1)
