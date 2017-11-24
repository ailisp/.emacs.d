;;;; -*- lexical-binding: t -*-
;;;; Global init, setup package manager, el-get and init-loader

(defvar *emacs-config-directory* (file-name-directory load-file-name))


;;; GC
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'after-init-hook
	    (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))


;;; Package archieves and helper functions
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

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

(package-initialize)


;;; Server
(require 'server)
(unless (server-running-p)
  (server-start))


;;; Custom file
(setq custom-file (expand-file-name ".custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))


;;; init-loader
(require-or-install 'init-loader)

(setq init-loader-show-log-after-init nil)

(init-loader-load
 (expand-file-name "init/" *emacs-config-directory*))
