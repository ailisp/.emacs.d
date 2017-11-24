;;;; c

(c-add-style "my-c-style"
             '("linux"
               (c-basic-offset . 4)))
(setf (cdr (assoc 'other c-default-style)) "my-c-style")
