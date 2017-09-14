;;;; Global init, setup package manager, el-get and init-loader

(defvar *emacs-config-directory* (file-name-directory load-file-name))


;;; Package archieves and helper functions
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(defun package-install-with-refresh (package)
  (unless (assq package package-alist)
    (package-refresh-contents))
  (unless (package-installed-p package)
    (package-install package)))

(defun require-or-install (package &optional package-to-install)
  (or (require package nil t)
      (progn
	(package-install-with-refresh (or package-to-install package))
	(require package))))


;;;; el-get
(defvar *el-get-directory*
  (expand-file-name "el-get/el-get" *emacs-config-directory*))

(add-to-list 'load-path *el-get-directory*)

(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(require 'el-get)

(setq el-get-recipe-path
      (list (expand-file-name "recipe" *el-get-directory*)
            (expand-file-name "el-get/user/recipe" *emacs-config-directory*)))

(setq el-get-user-package-directory
      (expand-file-name "el-get/user/package" *emacs-config-directory*))

(el-get 'sync)


;;; init-loader
(require-or-install 'init-loader)

(setq init-loader-show-log-after-init nil)

(init-loader-load
 (expand-file-name "init/" *emacs-config-directory*))

