;;;; C, C++, Objective-C

(c-add-style "my-c-style"
             '("linux"
               (c-basic-offset . 4)))
(setf (cdr (assoc 'other c-default-style)) "my-c-style")

(defun c/c++-mode-hook ()
  (semantic-mode 1)
  (semantic-idle-scheduler-mode 1)
  (auto-complete-mode -1)
  (company-mode 1))

(add-hook 'c-mode-hook 'c/c++-mode-hook)
(add-hook 'c++-mode-hook 'c/c++-mode-hook)

(defvar c/c++-jump-stack nil)

(defun my-c/c++-go-to-definition (point)
  (interactive "d")
  (let ((buffer (current-buffer))
        (pos (point)))
    (semantic-ia-fast-jump point)
    (push (cons buffer pos) c/c++-jump-stack)))

(defun my-c/c++-go-back ()
  (interactive)
  (let* ((buffer-and-pos (pop c/c++-jump-stack))
         (buffer (car buffer-and-pos))
         (pos (cdr buffer-and-pos)))
    (when buffer
      (switch-to-buffer buffer)
      (goto-char pos))))

(define-key c-mode-map (kbd "M-.") 'my-c/c++-go-to-definition)
(define-key c-mode-map (kbd "M-,") 'my-c/c++-go-back)
(define-key c++-mode-map (kbd "M-.") 'my-c/c++-go-to-definition)
(define-key c++-mode-map (kbd "M-,") 'my-c/c++-go-back)
