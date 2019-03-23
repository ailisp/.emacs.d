(deftheme bo-dark
  "A slightly tweaked theme based on misterioso")

(custom-theme-set-faces
 'bo-dark
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :width normal :height 128 :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "#e1e1e0" :background "#2d3743" :stipple nil :inherit nil))))
 '(cursor ((t (:background "sky blue"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:weight bold :foreground "#729fcf"))))
 '(highlight ((t (:foreground "#e1e1e0" :background "#338f86"))))
 '(region ((t (:foreground "black" :background "#a0c5c4"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((t (:background "steel blue"))))
 '(trailing-whitespace ((t (:background "#ff4242"))))
 '(font-lock-builtin-face ((t (:foreground "#23d7d7"))))
 '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:foreground "#74af68"))))
 '(font-lock-constant-face ((t (:foreground "#b6e6fc"))))
 '(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
 '(font-lock-function-name-face ((t (:weight bold :foreground "#00ede1"))))
 '(font-lock-keyword-face ((t (:weight bold :foreground "#ffad29"))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#e67128"))))
 '(font-lock-type-face ((t (:foreground "#34cae2"))))
 '(font-lock-variable-name-face ((t (:foreground "#dbdb95"))))
 '(font-lock-warning-face ((t (:weight bold :foreground "#ff4242"))))
 '(button ((t (:underline (:color foreground-color :style line)))))
 '(link ((t (:underline (:color foreground-color :style line) :foreground "#59e9ff"))))
 '(link-visited ((t (:underline (:color foreground-color :style line) :foreground "#ed74cd"))))
 '(fringe ((t (:background "#2e3748"))))
 '(header-line ((t (:foreground "white" :background "#506478"))))
 '(tooltip ((((class color)) (:inherit (variable-pitch) :foreground "black" :background "lightyellow")) (t (:inherit (variable-pitch)))))
 '(mode-line ((t (:foreground "#eeeeec" :background "#212931"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:foreground "#eeeeec" :background "#435364"))))
 '(isearch ((t (:foreground "#000000" :background "#fcffad"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((t (:background "#338f86"))))
 '(match ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3")) (((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow")) (((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))

 ;;; company
 '(company-preview ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common ((t (:inherit company-preview))))
 '(company-scrollbar-bg ((t (:background "#6c829c"))))
 '(company-scrollbar-fg ((t (:background "#556980"))))
 '(company-tooltip ((t (:inherit default :background "#415061"))))
 '(company-tooltip-annotation ((t (:inherit font-lock-builtin-face))))
 '(company-tooltip-common ((t (:inherit font-lock-builtin-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))

 ;;; slime
 '(slime-repl-inputed-output-face ((t (:foreground "chocolate"))))

 ;;; avy
 '(avy-lead-face ((t (:background "#8a498a"))))
 '(avy-lead-face-0 ((t (:background "#b979b9"))))

 ;;; smartparens
 ;; SEdit mimic
 '(sp-pair-overlay-face ((t (:inherit nil :background "#415160"))))
 '(sp-show-pair-match-content-face ((t (:inherit sp-pair-overlay-face))))

 ;;; treemacs
 '(hydra-face-red ((t (:foreground "#ffad29"))))

 ;;; telephone-line
 '(telephone-line-accent-active ((t (:background "#43655d"))))
 '(telephone-line-projectile ((t (:inherit nil))))
 '(telephone-line-accent-inactive ((t (:background "#435364")))))

(provide-theme 'bo-dark)
