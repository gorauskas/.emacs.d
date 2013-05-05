;; This file is part of emacs init for Jonas Gorauskas
;; modified: 2013-05-04 05:09 by jgg
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/

(message "JGG: Loading programming support...")

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



(provide 'jgg-code)

;; eof
