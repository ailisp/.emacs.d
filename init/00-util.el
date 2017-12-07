;;;; Utilities used in emacs

(defun unfill-region (start end)
  "Replace newline chars in region by single spaces.
This command does the inverse of `fill-region'.
URL `http://ergoemacs.org/emacs/emacs_unfill-paragraph.html'
Version 2016-07-13"
  (interactive "r")
  (let ((fill-column most-positive-fixnum))
    (fill-region start end)))

(defun kill-backward-sexp ()
  (interactive)
  (backward-sexp)
  (kill-sexp))

(defun split-window-conditional ()
  (interactive)
  (if (>= (* 39 (window-height)) (* 17 (window-width)))
      (split-window-vertically)
    (split-window-horizontally)))

(defun windowsp ()
  (eql window-system 'w32))

(defun linuxp ()
  (eql system-type 'gnu/linux))
