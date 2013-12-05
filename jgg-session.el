;; This file is part of the emacs init for Jonas Gorauskas
;; modified: 2013-12-05 02:02 by jgg
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/

(message "JGG: Loading session save support...")

;; Save sessions
(require 'desktop)
(setq desktop-enable t)
(setq desktop-dirname "~/.emacs.d/"
      desktop-base-file-name ".emacs-desktop"
      desktop-path (list desktop-dirname)
      desktop-base-lock-name ".emacs-desktop.lock"
      desktop-save t
      desktop-files-not-to-save "^$"
      desktop-load-locked-desktop nil)
(desktop-save-mode 1)

;; Save the cursor position within files
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/.emacs-places")

;; Save windows and frames within sessions
(require 'revive+)
(setq revive-plus:all-frames t)
(revive-plus:minimal-setup)

(provide 'jgg-session)

;; eof
