
(deftheme simplelite)

(custom-theme-set-faces
  'simplelite
  '(default ((t (:foreground "#111111" :background "#eeeeee" :family "DejaVu Sans Mono" :height 100))))
  '(cursor ((t (:background "#996699"))))
  '(fringe ((t (:background "#dddddd"))))
  '(mode-line ((t (:foreground "#000000" :background "#ffffff"))))
  '(region ((t (:background "#ffffff" :foreground "#111111"))))
  '(font-lock-builtin-face ((t (:foreground "#333333"))))
  '(font-lock-comment-face ((t (:foreground "#aaaaaa" :italic t))))
  '(font-lock-function-name-face ((t (:foreground "#666666" :bold t))))
  '(font-lock-keyword-face ((t (:foreground "#808080" :bold t))))
  '(font-lock-string-face ((t (:foreground "#999999"))))
  '(font-lock-type-face ((t (:foreground "#666666" :bold t :italic t))))
  '(font-lock-constant-face ((t (:foreground "#444444" :italic t))))
  '(font-lock-variable-name-face ((t (:foreground "#444444"))))
  '(highlight-current-line-face ((t (:background "#ffffff"))))
  '(hl-line ((t (:background "#ffffff"))))
  '(minibuffer-prompt ((t (:foreground "#666666" :bold t))))
  '(font-lock-warning-face ((t (:foreground "#996699" :background "#cccccc" :bold t)))))

(provide-theme 'simplelite)
