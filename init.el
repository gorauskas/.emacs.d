;; GNU Emacs init for Jonas Gorauskas
;; Modified: 2013-04-26 16:18 by jgg
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/
;; Copyright 1997-2013 by Jonas Gorauskas

(message "This is the JGG EMACS INIT")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; path stuff
(setq debug-on-error t)
(cd "~/")
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/thirdparty")
(add-to-list 'load-path "~/.emacs.d/thirdparty/yasnippet")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; requirements
(require 'cl)
(require 'eldoc)
(require 'ibuffer)
(require 'ido)
(require 'imenu)
(require 'org)
(require 'paredit)
(require 'recentf)
(require 'saveplace)
(require 'server)
(require 'smex)
(require 'thingatpt)
(require 'uniquify)
(require 'windmove)
(require 'winner)
(require 'yasnippet)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; behavior
(unless (server-running-p)
  (server-start))

(fset 'yes-or-no-p 'y-or-n-p)

(auto-compression-mode t)
(recentf-mode t)
(show-paren-mode t)
(yas-global-mode 1)
(global-hl-line-mode t)
(winner-mode t)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(setq-default case-fold-search nil
              fill-column 80
              indent-tabs-mode nil
              indicate-buffer-boundaries 'left
              indicate-empty-lines t
              major-mode 'text-mode
              save-place t
              truncate-lines t
              version-control t)

(setq backup-directory-alist '((".*" . "~/.emacs.d/backup/"))
      color-theme-is-global t
      completion-ignore-case t
      default-directory "~/"
      delete-selection-mode t
      echo-keystrokes 0.1
      ediff-diff-options "-w"
      ediff-split-window-function 'split-window-horizontally
      ediff-window-setup-function 'ediff-setup-windows-plain
      enable-recursive-minibuffers t
      font-lock-maximum-decoration t
      frame-title-format '("" invocation-name ": " (:eval (if (buffer-file-name)
                                                              (abbreviate-file-name (buffer-file-name))
                                                            "%b")) " [%*]")
      global-font-lock-mode t
      hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol)
      inhibit-startup-screen t
      initial-scratch-message ";; Happy Hacking!\n\n"
      make-backup-files t
      mouse-avoidance-mode 'proteus
      query-replace-highlight t
      read-file-name-completion-ignore-case t
      recentf-auto-cleanup 'never
      recentf-exclude '("[/\\]\\.elpa/" "[/\\]\\.ido\\.last\\'" "[/\\]\\.git/" ".*\\.gz\\'" ".*-autoloads\\.el\\'" "[/\\]archive-contents\\'" "[/\\]\\.loaddefs\\.el\\'" "url/cookies")
      recentf-save-file "~/.emacs.d/.recentf"
      recentf-max-saved-items 100
      require-final-newline t
      save-place-file "~/.emacs.d/.emacs-places"
      scroll-margin 0
      scroll-conservately 100000
      scroll-up-aggressively 0
      scroll-down-aggressively 0
      scroll-preserve-screen-position t
      search-highlight t
      show-paren-style 'mixed
      smex-history-length 10
      smex-save-file "~/.emacs.d/.smex-items"
      tab-always-indent 'complete
      time-stamp-pattern "10/[Mm]odified: %:y-%02m-%02d %02H:%02M by %u$"
      truncate-partial-width-windows nil
      uniquify-buffer-name-style 'post-forward
      uniquify-separator ":"
      uniquify-strip-common-suffix t  ;strip common buffer suffixes
      uniquify-after-kill-buffer-p t  ;re-uniquify buffer names after killing one
      visible-bell t
      winner-dont-bind-my-keys t
      x-select-enable-clipboard t
      yas-prompt-functions '(yas-x-prompt yas-ido-prompt)
      yas-snippet-dirs '("~/.emacs.d/thirdparty/yasnippet/snippets")
      yas-wrap-around-region t)

(add-to-list 'recentf-filename-handlers 'abbreviate-file-name)
(add-to-list 'auto-mode-alist '("~/.emacs.d/thirdparty/yasnippet/snippets/.*" . snippet-mode))
