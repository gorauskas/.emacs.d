;; This file is part of emacs init for Jonas Gorauskas
;; modified: 2014-03-08 15:42:15
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/

(message "JGG: Loading programming support...")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Hooks
(add-hook 'emacs-lisp-mode-hook 'use-lambda-symbol)
(add-hook 'lisp-mode-hook 'use-lambda-symbol)
(add-hook 'lisp-interaction-mode-hook 'use-lambda-symbol)
(add-hook 'scheme-mode-hook 'use-lambda-symbol)

;; in elisp the - char should not be considered a word boundary
(add-hook 'emacs-lisp-mode-hook '(lambda () (modify-syntax-entry ?- "w")))
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'remove-elc-on-save)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Markdown
(require 'markdown-mode)

(setq markdown-command "python /usr/local/bin/markdown_py -x extra"
      markdown-css-path "notes.css"
      markdown-coding-system 'utf-8
      markdown-content-type "text/html")

(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; highlight indentation
(require 'highlight-indentation)

(defun toggle-highlight-indentation-mode ()
  (interactive)
  (highlight-indentation-mode)
  (highlight-indentation-current-column-mode))

(set-face-background 'highlight-indentation-face "#333333")
(set-face-background 'highlight-indentation-current-column-face "#222222")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'jgg-code)

;; eof
