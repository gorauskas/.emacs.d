;; part of emacs init for Jonas Gorauskas
;; modified: 2013-05-09 01:36 by jgg
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/

(message "JGG: Loading key bindings...")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keyboard macros
(fset 'prep-list-items-for-sql
      (lambda (&optional arg)
        "Keyboard macro."
        (interactive "p")
        (kmacro-exec-ring-item
         '("''," 0 "%d") arg)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Bindings Definitions

;; registers
(set-register ?i '(file . "~/.emacs.d/init.el"))
(set-register ?t '(file . "~/Dropbox/temp.txt"))

;; Open a recently visited file
(global-set-key (kbd "C-x C-r") 'recentf-ido-find-file)

;; Try to expand the current symbol based on recently used symbols and buffers
(global-set-key (kbd "M-/") 'hippie-expand)

;; indent automatically everywhere
(global-set-key (kbd "RET") 'newline-and-indent)

;; Generic apropos is MUCH more useful than apropos-command
(global-set-key (kbd "C-h a") 'apropos)

;; use smex instead of standard M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) ; This is your old M-x.

;; suspend-frame is dumb + I want to use C-z as my personal custom prefix
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))

(global-set-key (kbd "C-z k") 'comment-or-uncomment-region)
(global-set-key (kbd "C-z n") 'cleanup-buffer)
(global-set-key (kbd "C-z r") 'revert-buffer)
(global-set-key (kbd "C-z C-k s") 'prep-list-items-for-sql)
(global-set-key (kbd "C-z u") 'unfill-paragraph)
(global-set-key (kbd "C-z y") 'bury-buffer)
(global-set-key (kbd "C-z w") 'count-words)
(global-set-key (kbd "C-z W") 'word-count)
(global-set-key (kbd "C-z i") 'imenu)
(global-set-key (kbd "C-z f") 'find-file-at-point)
(global-set-key (kbd "C-z +") 'jgg/zoom-in)
(global-set-key (kbd "C-z -") 'jgg/zoom-out)
(global-set-key (kbd "C-z o") 'jgg/open-line-below)
(global-set-key (kbd "C-z O") 'jgg/open-line-above)

(global-set-key (kbd "<f8>") 'toggle-truncate-lines)
(global-set-key (kbd "<f9>") 'whitespace-mode)
(global-set-key (kbd "<S-f9>") 'rainbow-mode)
(global-set-key (kbd "<f10>") 'linum-mode)
(global-set-key (kbd "<S-f10>") 'toggle-highlight-indentation-mode)
(global-set-key (kbd "<f11>") 'ruler-mode)
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)
(global-set-key (kbd "<S-f12>") 'toggle-fullscreen)

(when (fboundp 'ibuffer)
  (global-set-key (kbd "C-x C-b") 'ibuffer))   ;; ibuffer

(provide 'jgg-keys)
;; eof
