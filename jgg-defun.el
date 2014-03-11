;; This file is part of the emacs init for Jonas Gorauskas
;; modified: 2014-03-10 15:35:03
;; http://jonas.gorauskas.com/
;; http://www.thestandardoutput.com/

(message "JGG: Loading function definitions...")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Function Definitions

(defun use-lambda-symbol ()
  "Real Lisp hackers use a lambda symbol"
  (font-lock-add-keywords
   nil `(("\\<lambda\\>"
          (0 (progn (compose-region (match-beginning 0) (match-end 0)
                                    ,(make-char 'greek-iso8859-7 107))
                    nil))))))

(defun recentf-ido-find-file ()
  "Find a recent file using Ido"
  (interactive)
  (let ((file (ido-completing-read "Recently: " recentf-list nil t)))
    (when file
      (find-file file))))

(defun insert-datetime ()
  "Insert current date and time in ISO format at the point"
  (interactive)
  (insert
   (format-time-string "%Y-%m-%d %H:%M:%S")))

(defun insert-signature ()
  "Insert the authors signature"
  (interactive)
  (insert "Jonas Gorauskas"))

(defun word-count ()
  "Count words in region or buffer"
  (interactive)
  (if (region-active-p)
      (message "Word Count: %s" (how-many "\\w+" (region-beginning) (region-end)))
    (message "Word Count: %s" (how-many "\\w+" (point-min) (point-max)))))

(defun unfill-paragraph ()
  "Takes a multiline paragraph and makes it into a single line of text"
  (interactive)
  (let ((fill-column (point-max)))
    (fill-paragraph nil)))

(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
  "Perform operations on the whitespace of the buffer"
  (interactive)
  (indent-buffer)
  (untabify-buffer)
  (delete-trailing-whitespace))

(defun sudo-edit (&optional arg)
  (interactive "p")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:" (ido-read-file-name "File: ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

(defun pairing-bot ()
  "If you can't program with a human, use this instead..."
  (interactive)
  (message (if (y-or-n-p "Do you have a test for that? ") "Good!" "Bad!")))

(defun remove-elc-on-save ()
  "If you are saving an elisp file. likely the .elc is no longer valid"
  (make-local-variable 'after-save-hook)
  (add-hook 'after-save-hook
            (lambda ()
              (if (file-exists-p (concat buffer-file-name "c"))
                  (delete-file (concat buffer-file-name "c"))))))

(defun uniquify-all-lines-region (start end)
  "Find dupe lines in region keeping the first occurence"
  (interactive "*r")
  (save-excursion
    (let ((end (copy-marker end)))
      (while
          (progn
            (goto-char start)
            (re-search-forward "^\\(.*\\)\n\\(\\(.*\n\\)*\\)\\1\n" end t))
        (replace-match "\\1\n\\2")))))

(defun uniquify-all-lines-buffer ()
  "Delete dupe lines in buffer; keep first occurrence"
  (interactive "*")
  (uniquify-all-lines-region (point-min) (point-max)))

(defun uniquify-all-lines-buffer-or-region ()
  "Find dupe lines on region or buffer"
  (interactive)
  (if (region-active-p)
      (uniquify-all-lines-region (region-beginning) (region-end))
    (uniquify-all-lines-buffer)))

(defun insert-uuid ()
  "wont work on windows"
  (interactive)
  (if (not (eq system-type 'windows-nt))
      (shell-command "uuidgen" t)))

(defun transparency (value)
  (interactive "nTransparency Value [0 - 100]: ")
  (set-frame-parameter (selected-frame) 'alpha value))

(defun jgg/maximize-frame ()
  "Maximize the current frame (linux & windows)"
  (interactive)
  (if (eq system-type 'windows-nt)
      (w32-send-sys-command 61488)
    (set-frame-parameter nil 'fullscreen 'maximized)))

(defun toggle-fullscreen ()
  "Toggle fullscreen mode for the current frame. When on the selected frame
will consume the entire display area"
  (interactive)
  (let ((f (selected-frame)))
    (modify-frame-parameters f `((fullscreen . ,(if (eq nil (frame-parameter f 'fullscreen)) 'fullboth nil))))))

(defun jgg/zoom-in ()
  "Increase font size on the fly"
  (interactive)
  (set-face-attribute 'default nil :height
                      (ceiling (* 1.10
                                  (face-attribute 'default :height)))))

(defun jgg/zoom-out ()
  "Decrease the font size on the fly"
  (interactive)
  (set-face-attribute 'default nil :height
                      (floor (* 0.9
                                (face-attribute 'default :height)))))

(defun reload-init ()
  (interactive)
  (if (bufferp (get-file-buffer "init.el"))
      (save-buffer (get-buffer "init.el")))
  (load-file "~/.emacs.d/init.el")
  (message "Init file reloaded successfully"))

(defun ask-before-quit ()
  "I have the tendency to hit C-x C-c at the most innoportune times"
  (interactive)
  (y-or-n-p "Do you really want to quit Emacs?"))

(defun jgg/open-line-below ()
  "Insert a new line below the current line and put the point at beggining.
The regular elisp open-line function bound to C-o is fine for most uses
but sometimes I want the newline to open below the current line without
splitting."
  (interactive)
  (unless (eolp)
    (end-of-line))
  (newline-and-indent))

(defun jgg/open-line-above ()
  "Insert a new line above the current line and put the point at beggining.
The regular elisp open-line function bound to C-o is fine for most uses
but sometimes I want the newline to open above the current line without
splitting."
  (interactive)
  (unless (bolp)
    (beginning-of-line))
  (newline)
  (forward-line -1)
  (indent-according-to-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Slick Copy - When there is no active region then copy the current line
(defadvice kill-ring-save (before slick-copy activate compile)
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (message "Copied Line")
     (list (line-beginning-position)
           (line-beginning-position 2)))))

(defadvice kill-region (before slick-cut activate compile)
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

(provide 'jgg-defun)
;; eof
