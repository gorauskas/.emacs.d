;; This file is part of emacs init for Jonas Gorauskas
;; modified: 2014-09-04 18:13:57
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

;; file modes that are not obvious
(add-to-list 'auto-mode-alist '(".bashrc" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".bash_alias" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".bash_function" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".bash_logout" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".bash_profile" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".bash_prompt" . shell-script-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; python coding with elpy, but not on windows
(if (not (system-type 'windows-nt))
    (progn
      (elpy-enable)
      (elpy-use-ipython)
      (setq elpy-rpc-backend "jedi")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Markdown
(require 'markdown-mode)

(setq markdown-command "markdown_py -x extra"
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
