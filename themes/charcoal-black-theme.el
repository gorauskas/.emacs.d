;;; charcoal-black-theme --- charcoal black theme for GNU Emacs 24
;; Author: Jonas Gorauskas
;; Created: 2013-04-26 00:57:22
;; Modified: 2014-02-23 04:28:45
;; Version: 0.1
;;
;; Ported to GNU Emacs 24 from the original Charcoal Black theme
;; by Lars Chr. Hausmann, created 2003-03-24.
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3 of
;; the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be
;; useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public
;; License along with this program; if not, write to the Free
;; Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,
;; MA 02111-1307 USA
;;
;; Commentary:
;;
;; To install the theme, M-x `load-theme' then enter `charcoal-black'.
;; If you run into any issues, check the `custom-theme-load-path' variable.
;;
;; Code:
;;

(deftheme charcoal-black
  "Provides a dark background with font colors in the brighter greens and blues
spectrums.")

(custom-theme-set-faces
 'charcoal-black
 '(default ((t (:background "Grey15" :foreground "Grey"))))
 '(cursor ((t (:background "Grey"))))
 '(border ((t (:background "Grey"))))
 '(cursor-color ((t (:background "Grey"))))
 '(border-color ((t (:background "Grey"))))
 '(region ((t (:background "DarkSlateBlue"))))
 '(fringe ((t (:background "Grey15"))))
 '(mouse ((t (:background "Grey"))))
 '(highlight ((t (:background "Grey10"))))
 '(minibuffer-prompt ((t (:bold t :foreground "sky blue"))))
 '(scroll-bar ((t (:background "grey75"))))
 '(menu ((t (:background "MidnightBlue" :foreground "Grey"))))

 '(bold ((t (:bold t :weight bold))))
 '(bold-italic ((t (:bold t :foreground "beige" :weight bold))))
 '(italic ((t (:foreground "sky blue"))))
 '(underline ((t (:underline t))))
 '(excerpt ((t (:italic t :slant italic))))

 '(isearch ((t (:background "slate blue"))))
 '(isearch-lazy-highlight-face ((t (:background "paleturquoise4"))))
 '(secondary-selection ((t (:background "steel blue"))))

 '(header-line ((t (:box (:line-width -1 :style released-button) :background "grey20" :foreground "grey90" :box nil))))
 '(mode-line ((t (:background "grey75" :foreground "black" :box (:line-width -1 :style released-button)))))

 '(highline-face ((t (:background "DeepSkyBlue4"))))
 '(holiday-face ((t (:background "pink"))))
 '(calendar-today-face ((t (:underline t))))
 '(diary-face ((t (:foreground "red"))))

 '(highlight-current-line-face ((t (:background "Grey10"))))
 '(hl-line ((t (:background "Grey10"))))
 '(show-paren-match-face ((t (:background "light slate blue" :foreground "white"))))
 '(show-paren-mismatch-face ((t (:background "red" :foreground "white"))))

 '(tool-bar ((t (:background "grey75" :foreground "black" :box (:line-width 1 :style released-button)))))
 '(tooltip ((t (:background "lightyellow" :foreground "black"))))
 '(trailing-whitespace ((t (:background "red"))))

 '(font-lock-builtin-face ((t (:foreground "aquamarine"))))
 '(font-lock-comment-face ((t (:foreground "light blue"))))
 '(font-lock-constant-face ((t (:foreground "pale green"))))
 '(font-lock-doc-face ((t (:foreground "light sky blue"))))
 '(font-lock-doc-string-face ((t (:foreground "sky blue"))))
 '(font-lock-function-name-face ((t (:bold t :foreground "aquamarine" :weight bold))))
 '(font-lock-keyword-face ((t (:bold t :foreground "pale turquoise" :weight bold))))
 '(font-lock-reference-face ((t (:foreground "pale green"))))
 '(font-lock-string-face ((t (:foreground "light sky blue"))))
 '(font-lock-type-face ((t (:bold t :foreground "sky blue" :weight bold))))
 '(font-lock-variable-name-face ((t (:bold t :foreground "turquoise" :weight bold))))
 '(font-lock-warning-face ((t (:bold t :foreground "Red" :weight bold))))

 '(dired-face-directory ((t (:bold t :foreground "sky blue" :weight bold))))
 '(dired-face-executable ((t (:foreground "green yellow"))))
 '(dired-face-flagged ((t (:foreground "tomato"))))
 '(dired-face-marked ((t (:foreground "light salmon"))))
 '(dired-face-permissions ((t (:foreground "aquamarine"))))

 '(eshell-ls-archive-face ((t (:bold t :foreground "medium purple" :weight bold))))
 '(eshell-ls-backup-face ((t (:foreground "dim gray"))))
 '(eshell-ls-clutter-face ((t (:foreground "dim gray"))))
 '(eshell-ls-directory-face ((t (:bold t :foreground "medium slate blue" :weight bold))))
 '(eshell-ls-executable-face ((t (:bold t :foreground "aquamarine" :weight bold))))
 '(eshell-ls-missing-face ((t (:foreground "black"))))
 '(eshell-ls-picture-face ((t (:foreground "violet"))))
 '(eshell-ls-product-face ((t (:foreground "light steel blue"))))
 '(eshell-ls-readonly-face ((t (:foreground "aquamarine"))))
 '(eshell-ls-special-face ((t (:foreground "gold"))))
 '(eshell-ls-symlink-face ((t (:foreground "white"))))
 '(eshell-ls-unreadable-face ((t (:foreground "dim gray"))))
 '(eshell-prompt-face ((t (:bold t :foreground "light sky blue" :weight bold))))

 '(flyspell-duplicate-face ((t (:bold t :foreground "Gold3" :underline t :weight bold))))
 '(flyspell-incorrect-face ((t (:bold t :foreground "OrangeRed" :underline t :weight bold))))
 '(makefile-space-face ((t (:background "hotpink"))))
 '(semantic-dirty-token-face ((t (:background "gray10"))))
 '(semantic-unmatched-syntax-face ((t (:underline "red"))))
 '(comint-highlight-input ((t (:bold t :weight bold))))
 '(comint-highlight-prompt ((t (:foreground "cyan"))))
 '(cperl-array-face ((t (:bold t :foreground "light salmon" :weight bold))))
 '(cperl-hash-face ((t (:italic t :bold t :foreground "beige" :slant italic :weight bold))))
 '(cperl-nonoverridable-face ((t (:foreground "aquamarine"))))

 '(speedbar-button-face ((t (:foreground "seashell2"))))
 '(speedbar-directory-face ((t (:foreground "seashell3"))))
 '(speedbar-file-face ((t (:foreground "seashell4"))))
 '(speedbar-highlight-face ((t (:background "dark slate blue" :foreground "wheat"))))
 '(speedbar-selected-face ((t (:foreground "seashell1" :underline t))))
 '(speedbar-separator-face ((t (:background "blue" :foreground "white" :overline "gray"))))
 '(speedbar-tag-face ((t (:foreground "antique white"))))

 '(custom-button-face ((t (:foreground "gainsboro"))))
 '(custom-button-pressed-face ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style pressed-button)))))
 '(custom-changed-face ((t (:background "blue" :foreground "white"))))
 '(custom-comment-face ((t (:background "dim gray"))))
 '(custom-comment-tag-face ((t (:foreground "gray80"))))
 '(custom-documentation-face ((t (:foreground "light blue"))))
 '(custom-face-tag-face ((t (:underline t))))
 '(custom-group-tag-face ((t (:bold t :foreground "pale turquoise" :weight bold))))
 '(custom-group-tag-face-1 ((t (:foreground "pale turquoise" :underline t))))
 '(custom-invalid-face ((t (:background "red" :foreground "yellow"))))
 '(custom-modified-face ((t (:background "blue" :foreground "white"))))
 '(custom-rogue-face ((t (:background "black" :foreground "pink"))))
 '(custom-saved-face ((t (:underline t))))
 '(custom-set-face ((t (:background "white" :foreground "blue"))))
 '(custom-state-face ((t (:foreground "light salmon"))))
 '(custom-variable-button-face ((t (:bold t :underline t :weight bold))))
 '(custom-variable-tag-face ((t (:bold t :foreground "turquoise" :weight bold))))

 '(widget-button-face ((t (:bold t :weight bold))))
 '(widget-button-pressed-face ((t (:foreground "red"))))
 '(widget-documentation-face ((t (:foreground "light blue"))))
 '(widget-field-face ((t (:background "RoyalBlue4" :foreground "wheat"))))
 '(widget-inactive-face ((t (:foreground "dim gray"))))
 '(widget-single-line-field-face ((t (:background "slate blue" :foreground "wheat"))))

 '(Info-title-1-face ((t (:bold t :weight bold :height 1.728))))
 '(Info-title-2-face ((t (:bold t :weight bold :height 1.44))))
 '(Info-title-3-face ((t (:bold t :weight bold :height 1.2))))
 '(Info-title-4-face ((t (:bold t :weight bold))))

 '(info-header-node ((t (:bold t :weight bold))))
 '(info-header-xref ((t (:bold t :weight bold :foreground "sky blue"))))
 '(info-menu-5 ((t (:underline t))))
 '(info-menu-header ((t (:bold t :weight bold))))
 '(info-node ((t (:bold t :weight bold))))
 '(info-xref ((t (:bold t :foreground "sky blue" :weight bold))))

 '(message-cited-text-face ((t (:foreground "LightSalmon"))))
 '(message-header-cc-face ((t (:foreground "light cyan"))))
 '(message-header-name-face ((t (:foreground "LightBlue"))))
 '(message-header-newsgroups-face ((t (:italic t :bold t :foreground "MediumAquamarine" :slant italic :weight bold))))
 '(message-header-other-face ((t (:foreground "MediumAquamarine"))))
 '(message-header-subject-face ((t (:bold t :foreground "light cyan" :weight bold))))
 '(message-header-to-face ((t (:bold t :foreground "light cyan" :weight bold))))
 '(message-header-xheader-face ((t (:foreground "MediumAquamarine"))))
 '(message-mml-face ((t (:foreground "ForestGreen"))))
 '(message-separator-face ((t (:foreground "chocolate"))))

 '(gnus-cite-face-1 ((t (:foreground "LightSalmon"))))
 '(gnus-cite-face-2 ((t (:foreground "Khaki"))))
 '(gnus-cite-face-3 ((t (:foreground "Coral"))))
 '(gnus-cite-face-4 ((t (:foreground "yellow green"))))
 '(gnus-cite-face-5 ((t (:foreground "dark khaki"))))
 '(gnus-cite-face-6 ((t (:foreground "bisque"))))
 '(gnus-cite-face-7 ((t (:foreground "peru"))))
 '(gnus-cite-face-8 ((t (:foreground "light coral"))))
 '(gnus-cite-face-9 ((t (:foreground "plum"))))
 '(gnus-emphasis-bold ((t (:bold t :weight bold))))
 '(gnus-emphasis-bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
 '(gnus-emphasis-highlight-words ((t (:background "black" :foreground "yellow"))))
 '(gnus-emphasis-italic ((t (:italic t :slant italic))))
 '(gnus-emphasis-strikethru ((t (nil))))
 '(gnus-emphasis-underline ((t (:underline t))))
 '(gnus-emphasis-underline-bold ((t (:bold t :underline t :weight bold))))
 '(gnus-emphasis-underline-bold-italic ((t (:italic t :bold t :underline t :slant italic :weight bold))))
 '(gnus-emphasis-underline-italic ((t (:italic t :underline t :slant italic))))
 '(gnus-group-mail-1-empty-face ((t (:foreground "White"))))
 '(gnus-group-mail-1-face ((t (:bold t :foreground "White" :weight bold))))
 '(gnus-group-mail-2-empty-face ((t (:foreground "light cyan"))))
 '(gnus-group-mail-2-face ((t (:bold t :foreground "light cyan" :weight bold))))
 '(gnus-group-mail-3-empty-face ((t (:foreground "LightBlue"))))
 '(gnus-group-mail-3-face ((t (:bold t :foreground "LightBlue" :weight bold))))
 '(gnus-group-mail-low-empty-face ((t (:foreground "Aquamarine"))))
 '(gnus-group-mail-low-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
 '(gnus-group-news-1-empty-face ((t (:foreground "White"))))
 '(gnus-group-news-1-face ((t (:bold t :foreground "White" :weight bold))))
 '(gnus-group-news-2-empty-face ((t (:foreground "light cyan"))))
 '(gnus-group-news-2-face ((t (:bold t :foreground "light cyan" :weight bold))))
 '(gnus-group-news-3-empty-face ((t (:foreground "LightBlue"))))
 '(gnus-group-news-3-face ((t (:bold t :foreground "LightBlue" :weight bold))))
 '(gnus-group-news-4-empty-face ((t (:foreground "Aquamarine"))))
 '(gnus-group-news-4-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
 '(gnus-group-news-5-empty-face ((t (:foreground "MediumAquamarine"))))
 '(gnus-group-news-5-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
 '(gnus-group-news-6-empty-face ((t (:foreground "MediumAquamarine"))))
 '(gnus-group-news-6-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
 '(gnus-group-news-low-empty-face ((t (:foreground "MediumAquamarine"))))
 '(gnus-group-news-low-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
 '(gnus-header-content-face ((t (:foreground "LightSkyBlue3"))))
 '(gnus-header-from-face ((t (:bold t :foreground "light cyan" :weight bold))))
 '(gnus-header-name-face ((t (:bold t :foreground "LightBlue" :weight bold))))
 '(gnus-header-newsgroups-face ((t (:italic t :bold t :foreground "MediumAquamarine" :slant italic :weight bold))))
 '(gnus-header-subject-face ((t (:bold t :foreground "light cyan" :weight bold))))
 '(gnus-server-agent-face ((t (:bold t :foreground "PaleTurquoise" :weight bold))))
 '(gnus-server-closed-face ((t (:italic t :foreground "Light Steel Blue" :slant italic))))
 '(gnus-server-denied-face ((t (:bold t :foreground "Pink" :weight bold))))
 '(gnus-server-offline-face ((t (:bold t :foreground "Yellow" :weight bold))))
 '(gnus-server-opened-face ((t (:bold t :foreground "Green1" :weight bold))))
 '(gnus-signature-face ((t (:foreground "Grey"))))
 '(gnus-splash-face ((t (:foreground "ForestGreen"))))
 '(gnus-summary-cancelled-face ((t (:background "Black" :foreground "Yellow"))))
 '(gnus-summary-high-ancient-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
 '(gnus-summary-high-read-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
 '(gnus-summary-high-ticked-face ((t (:bold t :foreground "LightSalmon" :weight bold))))
 '(gnus-summary-high-unread-face ((t (:italic t :bold t :foreground "beige" :slant italic :weight bold))))
 '(gnus-summary-low-ancient-face ((t (:italic t :foreground "DimGray" :slant italic))))
 '(gnus-summary-low-read-face ((t (:foreground "slate gray"))))
 '(gnus-summary-low-ticked-face ((t (:foreground "Pink"))))
 '(gnus-summary-low-unread-face ((t (:foreground "LightGray"))))
 '(gnus-summary-normal-ancient-face ((t (:foreground "MediumAquamarine"))))
 '(gnus-summary-normal-read-face ((t (:foreground "Aquamarine"))))
 '(gnus-summary-normal-ticked-face ((t (:foreground "LightSalmon"))))
 '(gnus-summary-normal-unread-face ((t (nil))))
 '(gnus-summary-selected-face ((t (:underline t))))

 '(bg:erc-color-face0 ((t (nil))))
 '(bg:erc-color-face1 ((t (nil))))
 '(bg:erc-color-face10 ((t (nil))))
 '(bg:erc-color-face11 ((t (nil))))
 '(bg:erc-color-face12 ((t (nil))))
 '(bg:erc-color-face13 ((t (nil))))
 '(bg:erc-color-face14 ((t (nil))))
 '(bg:erc-color-face15 ((t (nil))))
 '(bg:erc-color-face2 ((t (nil))))
 '(bg:erc-color-face3 ((t (nil))))
 '(bg:erc-color-face4 ((t (nil))))
 '(bg:erc-color-face5 ((t (nil))))
 '(bg:erc-color-face6 ((t (nil))))
 '(bg:erc-color-face7 ((t (nil))))
 '(bg:erc-color-face8 ((t (nil))))
 '(bg:erc-color-face9 ((t (nil))))

 '(fg:erc-color-face0 ((t (:foreground "white"))))
 '(fg:erc-color-face1 ((t (:foreground "beige"))))
 '(fg:erc-color-face10 ((t (:foreground "pale goldenrod"))))
 '(fg:erc-color-face11 ((t (:foreground "light goldenrod yellow"))))
 '(fg:erc-color-face12 ((t (:foreground "light yellow"))))
 '(fg:erc-color-face13 ((t (:foreground "yellow"))))
 '(fg:erc-color-face14 ((t (:foreground "light goldenrod"))))
 '(fg:erc-color-face15 ((t (:foreground "lime green"))))
 '(fg:erc-color-face2 ((t (:foreground "lemon chiffon"))))
 '(fg:erc-color-face3 ((t (:foreground "light cyan"))))
 '(fg:erc-color-face4 ((t (:foreground "powder blue"))))
 '(fg:erc-color-face5 ((t (:foreground "sky blue"))))
 '(fg:erc-color-face6 ((t (:foreground "dark sea green"))))
 '(fg:erc-color-face7 ((t (:foreground "pale green"))))
 '(fg:erc-color-face8 ((t (:foreground "medium spring green"))))
 '(fg:erc-color-face9 ((t (:foreground "khaki"))))

 '(erc-action-face ((t (nil))))
 '(erc-bold-face ((t (:bold t :weight bold))))
 '(erc-default-face ((t (nil))))
 '(erc-direct-msg-face ((t (:foreground "pale green"))))
 '(erc-error-face ((t (:bold t :foreground "IndianRed" :weight bold))))
 '(erc-highlight-face ((t (:bold t :foreground "pale green" :weight bold))))
 '(erc-input-face ((t (:foreground "light blue"))))
 '(erc-inverse-face ((t (:background "steel blue"))))
 '(erc-notice-face ((t (:foreground "light salmon"))))
 '(erc-pal-face ((t (:foreground "pale green"))))
 '(erc-prompt-face ((t (:bold t :foreground "light blue" :weight bold)))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'charcoal-black)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; charcoal-black-theme.el eof
