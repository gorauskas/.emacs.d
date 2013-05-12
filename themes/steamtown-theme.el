
(deftheme steamtown
  "Steamtown theme uses a color palette based on the image
   http://www.bing.com/az/hprichbg/rb/Steamtown_EN-US9261658794_1366x768.jpg")

(custom-theme-set-faces
  'steamtown
  '(default ((t (:foreground "#080808" :background "#C8C7CA"))))
  '(cursor ((t (:background "#081325"))))
  '(fringe ((t (:background "#081325"))))
  '(mode-line ((t (:foreground "#C8C7CA" :background "#211f22"))))
  '(region ((t (:background "#96A2AC"))))
  '(font-lock-builtin-face ((t (:foreground "#51473D"))))
  '(font-lock-comment-face ((t (:foreground "#787679" :italic t :slant italic))))
  '(font-lock-function-name-face ((t (:foreground "#2C4559" :bold t))))
  '(font-lock-keyword-face ((t (:foreground "#545B6D" :bold t))))
  '(font-lock-string-face ((t (:foreground "#665333"))))
  '(font-lock-type-face ((t (:foreground "#2C4559" :weight bold :slant italic))))
  '(font-lock-constant-face ((t (:foreground "#6f6059" :italic t))))
  '(font-lock-variable-name-face ((t (:foreground "#6f6059"))))
  '(highlight-current-line-face ((t (:background "#D8D7DA"))))
  '(hl-line ((t (:background "#D8D7DA"))))
  '(minibuffer-prompt ((t (:foreground "#51473D" :bold t))))
  '(font-lock-warning-face ((t (:foreground "663366" :background "#888899" :bold t)))))

(provide-theme 'steamtown)
