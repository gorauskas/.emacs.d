;; part of emacs init for Jonas Gorauskas
;; modified: 2014-02-21 00:57:45
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/

(message "JGG: Loading packages...")

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

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(setq package-enable-at-startup nil)
(package-initialize)

;; a list of my favorite packages
(defvar jgg-packages
  '(anti-zenburn-theme
    darkburn-theme
    desktop
    highlight-indentation
    ido-ubiquitous
    markdown-mode
    paredit
    rainbow-mode
    solarized-theme
    sr-speedbar
    windsize
    yasnippet
    zenburn-theme
    smex))

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

(provide 'jgg-package)
;; eof
