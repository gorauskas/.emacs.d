;; part of emacs init for Jonas Gorauskas
;; modified: 2014-12-05 19:12:54
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/

(message "JGG: Loading packages...")

;; packages shipped with Emacs
(require 'cl)
(require 'eldoc)
(require 'ffap)
(require 'ibuffer)
(require 'ido)
(require 'imenu)
(require 'org)
(require 'recentf)
(require 'server)
(require 'speedbar)
(require 'thingatpt)
(require 'uniquify)
(require 'windmove)

;; ELPA (package.el) stuff - package manager that ships with Emacs
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(setq package-enable-at-startup nil)
(package-initialize)

;; a list of my favorite packages
(defvar jgg-packages
  '(anti-zenburn-theme
    darkburn-theme
    desktop
    elfeed
    elpy
    highlight-indentation
    ido-ubiquitous
    markdown-mode
    paredit
    rainbow-mode
    smex
    solarized-theme
    sr-speedbar
    switch-window
    windsize
    yasnippet
    zenburn-theme))

;; check if a package is installed
(defun jgg-packages-installed-p ()
  (loop for p in jgg-packages
        when (not (package-installed-p p))
        do (return nil)
        finally (return t)))

;; check if package in favorites list above are currently installed
;; install if not available
(unless (jgg-packages-installed-p)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done! ")
  (dolist (p jgg-packages)
    (when (not (package-installed-p p))
      (package-install p))))

;; EL-GET stuff - fall-back to el-get for anything that's not available
;;  through melpa e.g. revive & revive-plus.
;; TODO: Needs work to make it work on windows - Proxy
;;       Can't reach github & emacs wiki from Intuit
;; So the idea is that you copy/paste this code into your *scratch* buffer,
;; hit C-x C-e, and you have a working el-get.
;; (url-retrieve
;;  "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
;;  (lambda (s)
;;    (goto-char (point-max))
;;    (eval-print-last-sexp)))
;; (if (eq system-type 'windows-nt)
;;     (message "JGG: Windows - skipping EL-GET setup")
;;   (progn
;;     (message "JGG: loading EL-GET setup")
;;     (add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;;     ;; install it if not already
;;     (unless (require 'el-get nil 'noerror)
;;       (with-current-buffer
;;           (url-retrieve-synchronously
;;            "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
;;         (goto-char (point-max))
;;         (eval-print-last-sexp)))

;;     (setq el-get-sources
;;           '(el-get
;;             revive-plus)) ;; el-get will handle revive and revive+

;;     (el-get 'sync)))

(provide 'jgg-package)
;; eof
