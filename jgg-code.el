;; This file is part of emacs init for Jonas Gorauskas
;; modified: 2013-05-02 18:10 by jgg
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/

(message "JGG: Loading programming support...")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Markdown
(require 'markdown-mode)

;(setq markdown-command "pandoc --from=markdown --to=html5 --standalone")
(setq markdown-command "markdown_py")

(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


(provide 'jgg-code)

;; eof
