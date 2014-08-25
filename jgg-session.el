;; This file is part of the emacs init for Jonas Gorauskas
;; modified: 2014-08-24 20:28:20
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/

(message "JGG: Loading session save support...")

;; Save sessions
(require 'desktop)
(setq desktop-enable t)
(setq desktop-dirname user-emacs-directory
      desktop-base-file-name ".emacs-desktop"
      desktop-path (list desktop-dirname)
      desktop-base-lock-name ".emacs-desktop.lock"
      desktop-save t
      desktop-files-not-to-save "^$"
      desktop-load-locked-desktop nil)
(desktop-save-mode 1)

(defun emacs-process-p (pid)
  "If PID is the PID of an emacs process, return t, else nil.
   Also return nil if PID is nil."
  (when pid
    (let ((attributes (process-attributes pid)) (cmd))
      (dolist (attr attributes)
        (if (string= "comm" (car attr))
            (setq cmd (cdr attr))))
      (if (and cmd
               (or (string= "emacs" cmd)
                   (string= "emacs.exe" cmd)))
          t))))

(defadvice desktop-owner (after pry-from-cold-dead-hands activate)
  "Don't allow dead emacs to own the desktop file"
  (when (not (emacs-process-p ad-return-value))
    (setq ad-return-value nil)))


;; Save the cursor position within files
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (concat user-emacs-directory ".emacs-places"))

;; Save windows and frames within sessions
(if (eq system-type 'windows-nt)
    (message "JGG: In Windows - skipping revive setup")
  (progn
    (message "JGG: loading revive setup")
    (require 'revive+)
    (setq revive-plus:all-frames t)
    (revive-plus:minimal-setup)))

(provide 'jgg-session)

;; eof
