;; This file is part of the emacs init for Jonas Gorauskas
;; modified: 2013-04-27 20:25 by jgg
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/

(message "JGG: Loading session save support...")

(require 'revive)
(setq revive:configuration-file "~/.emacs.d/.layout")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Key Bindings
(global-set-key (kbd "<C-S-f12>") 'save-current-configuration)
(global-set-key (kbd "<C-S-f11>") 'resume)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Hooks
(add-hook 'kill-emacs-hook 'save-current-configuration)

(provide 'jgg-session)

;; eof
