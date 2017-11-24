;;;; Undo and Redo tree

(require-or-install 'undo-tree)

(global-undo-tree-mode 1)

;;; after undo/redo to saved state, update tabbar
(defun undo-tree-undo/tabbar (&optional arg)
  "Undo changes.
Repeat this command to undo more changes.
A numeric ARG serves as a repeat count.

In Transient Mark mode when the mark is active, only undo changes
within the current region. Similarly, when not in Transient Mark
mode, just \\[universal-argument] as an argument limits undo to
changes within the current region."
  (interactive "*P")
  (let ((previous-state (buffer-modified-p)))
    (undo-tree-undo)
    (when (not (eql previous-state (buffer-modified-p)))
      (tabbar-modification-state-change))))

(defun undo-tree-redo/tabbar (&optional arg)
  "Redo changes. A numeric ARG serves as a repeat count.

In Transient Mark mode when the mark is active, only redo changes
within the current region. Similarly, when not in Transient Mark
mode, just \\[universal-argument] as an argument limits redo to
changes within the current region."
  (interactive "*P")
  (let ((previous-state (buffer-modified-p)))
    (undo-tree-redo)
    (when (not (eql previous-state (buffer-modified-p)))
      (tabbar-modification-state-change))))

;; remap `undo' and `undo-only' to `undo-tree-undo/tabbar'
(define-key undo-tree-map [remap undo] 'undo-tree-undo/tabbar)
(define-key undo-tree-map [remap undo-only] 'undo-tree-undo/tabbar)
;; bind standard undo bindings (since these match redo counterparts)
(define-key undo-tree-map (kbd "C-/") 'undo-tree-undo/tabbar)
(define-key undo-tree-map "\C-_" 'undo-tree-undo/tabbar)
;; redo doesn't exist normally, so define our own keybindings
(define-key undo-tree-map (kbd "C-?") 'undo-tree-redo/tabbar)
(define-key undo-tree-map (kbd "M-_") 'undo-tree-redo/tabbar)
;; just in case something has defined `redo'...
(define-key undo-tree-map [remap redo] 'undo-tree-redo/tabbar)





