;;;; Theme

(defvar current-theme 'bo-dark)
(load-theme current-theme t)

(defun toggle-light-dark ()
  (interactive)
  (setf current-theme
        (if (eql current-theme 'bo-dark)
            'bo-light
          'bo-dark))
  (load-theme current-theme t))
