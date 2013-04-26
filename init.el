;; GNU Emacs init for Jonas Gorauskas
;; Modified: 2013-04-26 16:17 by jgg
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/
;; Copyright 1997-2013 by Jonas Gorauskas

(message "This is the JGG EMACS INIT")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; path stuff
(setq debug-on-error t)
(cd "~/")
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/thirdparty")
(add-to-list 'load-path "~/.emacs.d/thirdparty/yasnippet")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; requirements
(require 'cl)
(require 'eldoc)
(require 'ibuffer)
(require 'ido)
(require 'imenu)
(require 'org)
(require 'paredit)
(require 'recentf)
(require 'saveplace)
(require 'server)
(require 'smex)
(require 'thingatpt)
(require 'uniquify)
(require 'windmove)
(require 'winner)
(require 'yasnippet)
