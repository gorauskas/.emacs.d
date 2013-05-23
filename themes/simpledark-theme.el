
(deftheme simpledark)

(custom-theme-set-faces
  'simpledark
  '(default ((t (:foreground "gainsboro" :background "#202020" :family "DejaVu Sans Mono" :height 100))))
  '(cursor ((t (:background "aquamarine"))))
  '(fringe ((t (:background "#333333"))))
  '(mode-line ((t (:foreground "#ffffff" :background "#000000"))))
  '(region ((t (:background "#333" :foreground "#ccc"))))
  '(font-lock-builtin-face ((t (:foreground "thistle"))))
  '(font-lock-comment-face ((t (:foreground "#808080" :italic t :slant italic))))
  '(font-lock-function-name-face ((t (:foreground "SteelBlue1" :bold t))))
  '(font-lock-keyword-face ((t (:foreground "SkyBlue1"))))
  '(font-lock-string-face ((t (:foreground "gray"))))
  '(font-lock-type-face ((t (:foreground "SteelBlue1" :weight bold :slant italic))))
  '(font-lock-constant-face ((t (:foreground "DeepSkyBlue" :italic t))))
  '(font-lock-variable-name-face ((t (:foreground "DodgerBlue1"))))
  '(highlight-current-line-face ((t (:background "black"))))
  '(hl-line ((t (:background "black"))))
  '(minibuffer-prompt ((t (:foreground "CornflowerBlue" :bold t))))
  '(font-lock-warning-face ((t (:foreground "gold" :background "IndianRed" :bold t)))))

(provide-theme 'simpledark)
