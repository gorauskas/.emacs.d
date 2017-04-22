;; GNU Emacs init for Jonas Gorauskas
;; Modified: 2017-04-22 14:42:28
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/
;; Copyright 1997-2017 by Jonas Gorauskas

;(package-initialize)

(message "JGG: This is EMACS INIT")

;;(debug)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; path stuff
(setq debug-on-error t)
(cd "~/")
(add-to-list 'load-path "~/.emacs.d/lisp")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; packages

(require 'jgg-package)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; behavior
(unless (server-running-p)
  (server-start))

(fset 'yes-or-no-p 'y-or-n-p)

(auto-compression-mode t)
(show-paren-mode t)
(yas-global-mode 1)
(global-hl-line-mode t)
(winner-mode t)
(bash-completion-setup)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(setq-default case-fold-search nil
              fill-column 80
              indent-tabs-mode nil
              indicate-buffer-boundaries 'left
              indicate-empty-lines t
              major-mode 'text-mode
              tab-width 4
              truncate-lines t
              version-control t)

(setq apropos-do-all t
      backup-directory-alist '((".*" . "~/.emacs.d/backup"))
      bookmark-default-file "~/.emacs.d/bookmarks"
      color-theme-is-global t
      completion-ignore-case t
      default-directory "~/"
      delete-old-versions t                          ;; prevent the 'Delete excess backup versions ... ' message
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
      history-length 100
      history-delete-duplicates t
      inhibit-startup-screen t
      initial-scratch-message ";; Happy Hacking!\n\n"
      make-backup-files t
      make-pointer-invisible nil
      mouse-yank-at-point t
      query-replace-highlight t
      read-file-name-completion-ignore-case t
      recentf-auto-cleanup 'never
      recentf-exclude '("[/\\]\\.elpa/" "[/\\]\\.ido\\.last\\'" "[/\\]\\.git/" ".*\\.gz\\'" ".*-autoloads\\.el\\'" "[/\\]archive-contents\\'" "[/\\]\\.loaddefs\\.el\\'" "url/cookies")
      recentf-save-file "~/.emacs.d/.recentf"
      recentf-save-file-coding-system "utf-8"
      recentf-max-menu-items 20
      recentf-max-saved-items 30
      require-final-newline t
      save-interprogram-paste-before-kill t
      savehist-mode t
      scroll-margin 0
      scroll-conservately 100000
      ;scroll-up-aggressively 0
      ;scroll-down-aggressively 0
      scroll-preserve-screen-position t
      search-highlight t
      show-paren-style 'mixed
      smex-history-length 16
      smex-save-file "~/.emacs.d/.smex-items"
      speedbar-directory-unshown-regexp "^$"
      speedbar-show-unknown-files t
      tab-always-indent 'complete
      time-stamp-pattern "10/[Mm]odified:\\\\?[ ]+%:y-%02m-%02d %02H:%02M:%02S\$"
      truncate-partial-width-windows nil
      twittering-icon-mode t
      twittering-icon-storage-file "~/.emacs.d/.twittering-mode-icons.gz"
      twittering-private-info-file "~/.emacs.d/.twittering-mode.gpg"
      twittering-status-format "%FOLD{%RT{%FACE[bold]{RT by %S %s} @ %C{%Y-%m-%d %H:%M:%S} %@}\n%i %S %s >> %r@ %C{%Y-%m-%d %H:%M:%S} %@{}\n%FOLD[    ]{%T}\n\n%FOLD[  ]{from %l, using %f}}\n\n"
      twittering-timer-interval 60
      twittering-use-icon-storage t
      twittering-use-master-password t
      uniquify-buffer-name-style 'post-forward
      uniquify-separator ":"
      uniquify-strip-common-suffix t  ;strip common buffer suffixes
      uniquify-after-kill-buffer-p t  ;re-uniquify buffer names after killing one
      user-full-name "Jonas Gorauskas"
      user-mail-address "jonas@gorauskas.com"
      visible-bell t
      winner-dont-bind-my-keys t
      x-select-enable-clipboard t
      x-select-enable-primary t
      yas-prompt-functions '(yas-x-prompt yas-ido-prompt)
      yas-wrap-around-region t)

(add-to-list 'recentf-filename-handlers 'abbreviate-file-name)
(recentf-mode t)     ;; this must happen after the recentf-save-file value is set

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Unicode enabled everywhere
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)

(if (boundp 'buffer-file-coding-system)
    (setq-default buffer-file-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8))

(if (eq system-type 'windows-nt)
    (set-selection-coding-system 'utf-16-le)
  (set-selection-coding-system 'utf-8))

;; Treat clipboard input as UTF-8 string first; compound text next, etc.
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ido Mode Everywhere
(ido-mode t)
(setq ido-save-directory-list-file "~/.emacs.d/.ido.last")

(eval-after-load 'ido
  '(setq
    ido-max-prospects 16
    ido-enable-prefix nil
    ido-enable-flex-matching t
    ido-create-new-buffer 'always
    ido-use-filename-at-point nil
    ido-case-fold t
    ido-use-virtual-buffers nil))

(ido-ubiquitous-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Function definitions from elsewhere
(require 'jgg-defun)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Enable rectangular selections using CUA mode
(setq cua-enable-cua-keys nil)     ;; Don't emulate windows keys like C-z for undo
(cua-mode t)
(cua-selection-mode nil)           ;; Don't use Shift + Arrow for marking

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Hooks
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'before-save-hook 'copyright-update)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'before-save-hook 'time-stamp)
(add-hook 'kill-emacs-query-functions 'ask-before-quit)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Session management from elsewhere
(require 'jgg-session)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Coding setup from elsewhere
(require 'jgg-code)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setup feed reader
(require 'jgg-feeds)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Key Binding definition from elsewhere
(require 'jgg-keys)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Frame Dimensions & Look
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(defvar zenburn-override-colors-alist
  '(("zenburn-bg" . "#111111")))
(load-theme 'zenburn t)

;; Easily resize windows within a frame
(require 'windsize)
(windsize-default-keybindings)

(add-hook 'window-setup-hook 'jgg/maximize-frame t)

(set-face-attribute 'default nil
                    :family "Envy Code R"
                    :height 98)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Modeline
(setq column-number-mode t
      line-number-mode t
      size-indication-mode t
      display-time-format " %Y-%m-%d %R ")

(display-time-mode t)
(which-function-mode t)

(set-face-attribute 'mode-line nil
                    :family "Share Tech Mono"
                    :height 90)

(set-face-attribute 'mode-line-inactive nil
                    :family "Share Tech Mono"
                    :height 90)

(message "JGG: EMACS INIT Done Loading...")

;; eof
