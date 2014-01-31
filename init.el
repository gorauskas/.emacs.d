;; GNU Emacs init for Jonas Gorauskas
;; Modified: 2014-01-31 14:02 by jonasg211
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/
;; Copyright 1997-2014 by Jonas Gorauskas

(message "JGG: This is EMACS INIT")

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
(require 'ffap)
(require 'ibuffer)
(require 'ido)
(require 'imenu)
(require 'org)
(require 'paredit)
(require 'rainbow-mode)
(require 'recentf)
(require 'server)
(require 'smex)
(require 'sr-speedbar)
(require 'thingatpt)
(require 'uniquify)
(require 'windmove)
(require 'windsize)
(require 'winner)
(require 'yasnippet)

(require 'ido-ubiquitous)

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
(mouse-avoidance-mode 'cat-and-mouse)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(setq-default case-fold-search nil
              fill-column 80
              indent-tabs-mode nil
              indicate-buffer-boundaries 'left
              indicate-empty-lines t
              major-mode 'text-mode
              truncate-lines t
              version-control t)

(setq apropos-do-all t
      backup-directory-alist '((".*" . "~/.emacs.d/backup/"))
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
      recentf-max-saved-items 100
      require-final-newline t
      save-interprogram-paste-before-kill t
      savehist-mode t
      scroll-margin 0
      scroll-conservately 100000
      scroll-up-aggressively 0
      scroll-down-aggressively 0
      scroll-preserve-screen-position t
      search-highlight t
      show-paren-style 'mixed
      smex-history-length 16
      smex-save-file "~/.emacs.d/.smex-items"
      speedbar-directory-unshown-regexp "^$"
      speedbar-show-unknown-files t
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
      x-select-enable-primary t
      yas-prompt-functions '(yas-x-prompt yas-ido-prompt)
      yas-snippet-dirs '("~/.emacs.d/thirdparty/yasnippet/snippets")
      yas-wrap-around-region t)

(add-to-list 'recentf-filename-handlers 'abbreviate-file-name)
(add-to-list 'auto-mode-alist '("~/.emacs.d/thirdparty/yasnippet/snippets/.*" . snippet-mode))
(recentf-mode t)     ;; this must happen after the recentf-save-file value is set

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Unicode enabled everywhere
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

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
;; Frame Dimensions & Look

;; provide a sane size on windows and maximize otherwise
;; (if (eq system-type 'windows-nt)
;;     (w32-send-sys-command 61488)
;;   (set-frame-parameter nil 'fullscreen 'maximized))

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(load-theme 'darkburn t)
;; (load-theme 'anti-zenburn t)

(windsize-default-keybindings)

(set-face-attribute 'default nil
                    :family "DejaVu Sans Mono"
                    :height 100)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Modeline
(setq column-number-mode t
      line-number-mode t
      size-indication-mode t
      display-time-format " %Y-%m-%d %R ")

(display-time-mode t)
(which-function-mode t)

(set-face-attribute 'mode-line nil
                    :family "Ubuntu Mono"
                    :height 90)

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
(add-hook 'emacs-lisp-mode-hook 'use-lambda-symbol)
(add-hook 'lisp-mode-hook 'use-lambda-symbol)
(add-hook 'lisp-interaction-mode-hook 'use-lambda-symbol)
(add-hook 'scheme-mode-hook 'use-lambda-symbol)

;; in elisp the - char should not be considered a word boundary
(add-hook 'emacs-lisp-mode-hook '(lambda () (modify-syntax-entry ?- "w")))
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'remove-elc-on-save)

(add-hook 'text-mode-hook 'turn-on-auto-fill)

(add-hook 'before-save-hook 'copyright-update)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'before-save-hook 'time-stamp)

(add-hook 'kill-emacs-query-functions 'ask-before-quit)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Key Binding definition from elsewhere
(require 'jgg-keys)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Session management from elsewhere
(require 'jgg-session)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Coding setup from elsewhere
(require 'jgg-code)

(message "JGG: EMACS INIT Done Loading...")

;; eof
