;; This file is part of the emacs init for Jonas Gorauskas
;; modified: 2013-12-05 00:59 by jgg
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/

(message "JGG: Loading session save support...")

;; Save sessions
(require 'desktop)
(desktop-save-mode 1)
(setq desktop-enable t)
(setq desktop-path '("~/.emacs.d")
      desktop-dirname "~/.emacs.d"
      desktop-base-file-name ".emacs-desktop"
      use-file-dialog nil)

;; Save the cursor position within files
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/.emacs-places")

;; Save windows and frames within sessions
(require 'revive+)
(setq revive-plus:all-frames t)
(revive-plus:minimal-setup)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Hooks
(add-hook 'auto-save-hook #'(lambda () (call-interactively #'desktop-save)))

(provide 'jgg-session)

;; eof
