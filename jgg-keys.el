;; part of emacs init for Jonas Gorauskas
;; modified: 2013-04-27 12:40 by jgg
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

(global-set-key (kbd "C-x C-r")
                'recentf-ido-find-file)

(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C-c k") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c n") 'cleanup-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "C-c C-k s") 'prep-list-items-for-sql)
(global-set-key (kbd "C-c u") 'unfill-paragraph)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "C-c w") 'count-words)
(global-set-key (kbd "C-c W") 'word-count)
(global-set-key (kbd "C-c i") 'imenu)
(global-set-key (kbd "C-c f") 'find-file-at-point)

(global-set-key (kbd "<f8>") 'toggle-truncate-lines)
(global-set-key (kbd "<f9>") 'whitespace-mode)
(global-set-key (kbd "<S-f9>") 'rainbow-mode)
(global-set-key (kbd "<f10>") 'linum-mode)
(global-set-key (kbd "<f11>") 'ruler-mode)
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) ; This is your old M-x.

(when (fboundp 'ibuffer)
  (global-set-key (kbd "C-x C-b") 'ibuffer))   ;; ibuffer

(provide 'jgg-keys)
;; eof
