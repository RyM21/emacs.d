(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-to-list 'load-path "~/.emacs.d/themes/color-theme-6.6.0/")
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "wikipedia-this" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "amazon-this" user-emacs-directory))

(package-initialize)

(require 'amazon-this)
(require 'ansi-color)
(require 'auto-org-md)
(require 'bbdb)
(require 'cc-mode)
(require 'elfeed)
(require 'emmet-mode)
(require 'font-lock)
(require 'gnus)
(require 'google-this)
(require 'init-functions)
(require 'init-keybindings)
(require 'init-macros)
(require 'ng2-mode)
(require 'nodejs-repl)
(require 'ob-js)
(require 'ob-typescript)
(require 'org)
(require 'org-gcal)
(require 'pandoc)
(require 'smex)
(require 'sphinx-mode)
(require 'visual-regexp-steroids)
(require 'wc-mode)
(require 'wikipedia-this)
(require 'yasnippet)

;; (add-to-list 'load-path "~/lintnode")
;; (require 'flymake-jslint)
;; ;; Make sure we can find the lintnode executable
;; (setq lintnode-location "~/path/to/lintnode")
;; ;; JSLint can be... opinionated
;; (setq lintnode-jslint-excludes (list 'nomen 'undef 'plusplus 'onevar 'white))
;; ;; Start the server when we first open a js file and start checking
;; (add-hook 'js-mode-hook
;;           (lambda ()
;;             (lintnode-hook)))

(defun insert-current-date () (interactive)
       (insert (shell-command-to-string "echo -n $(date +%Y-%m-%d)")))

(add-hook 'html-mode-hook
          (lambda ()
            (emmet-mode)))

(add-hook 'typescript-mode-hook
          (lambda ()
            (tide-mode)))

(add-hook 'typescript-mode-hook
          (lambda ()
	    (ng2-ts-mode)))

(color-theme-initialize)

(add-to-list 'auto-mode-alist '("\\.dat$" . ledger-mode))

;; Word Count Mode

(wc-mode 1)

(load-theme 'RyanTheme t nil)

(yas-global-mode)


(defun save-macro (name)
  "Take a name as argument
     and save the last defined macro under
     this name at the end of your \.emacs"
  (interactive "SName of the macro :")  ; ask for the name of the macro
  (kmacro-name-last-macro name)         ; use this name for the macro
  (find-file user-init-file)            ; open ~/.emacs or other user init file
  (goto-char (point-max))               ; go to the end of the .emacs
  (newline)                             ; insert a newline
  (insert-kbd-macro name)               ; copy the macro
  (newline)                             ; insert a newline
  (switch-to-buffer nil))               ; return to the initial buffer


(defadvice paredit-mode (around undo/disable activate))


(setq auto-fill-mode nil)
(setq visual-line-mode t)
(setq global-visual-line-mode t)
(setq global-writeroom-mode t)

(defun org-carry-forward-uncompleted-tasks ()
  "Carry forward uncompleted tasks."
  (interactive)
  (save-excursion
    (goto-char (point-max))
    (while (re-search-backward "^\\*\\*" nil t)
      (unless (org-at-heading-p)
        (org-back-to-heading t))
      (let* (
             (element (org-element-at-point))
             (todo-state (org-element-property :todo-keyword element))
             (deadline (org-element-property :deadline element))
             (deadline-time-stamp
              (when deadline
                (time-to-days
                 (org-time-string-to-time
                  (org-element-property :raw-value deadline)))))
             (today (time-to-days (current-time))) )
        (when
            (and
             deadline-time-stamp
             (> today deadline-time-stamp) ;; deadline is overdue
             (string= todo-state "NEXT") ) ;; todo-state equals "X"
          (org-deadline nil ".") )))))


(setq org-agenda-custom-commands
      '(("A" "Agenda" agenda "" nil ("agenda.html" "agenda.txt" "agenda.ics"))
        ("T" "Global to-do list" alltodo "" nil ("todo.html" "org-todo.txt"))
        ("L" "Law tasks" tags-todo "law" nil ("law.html" "law.txt" "law.ics"))
        ("E" "Errands" tags-todo "errand" nil ("errands.html" "errands.txt" "errands.ics"))
        ("W" "WordBrewery" tags-todo "WB" nil ("WBtasks.html" "WBtasks.txt" "WBcal.ics"))))

(defvar my/org-habit-show-graphs-everywhere t
  "Normally, habits display consistency graphs only in
\"agenda\"-type agenda buffers, not in other types of agenda
buffers.  Set this variable to any non-nil variable to show
consistency graphs in all Org mode agendas.")


(setq org-gcal-client-id "536240286054-vvmfjq1kn8b1hhgoqgalkgnr44e6jdjn.apps.googleusercontent.com")
(setq org-gcal-client-secret "4xOImiVeBgaWMsh7vbeDcZww")
(setq org-gcal-file-alist '(("ryan.mccarl@gmail.com" .  "~/notes/calendar.org")
			    ("0p193dqqm64rskq1mluijs71lvoj3rsf@import.calendar.google.com" .  "~/notes/calendar2.org")))


(eval-after-load 'org-src
  '(define-key org-src-mode-map
     (kbd "C-x C-s") #'org-edit-src-exit))
(setq org-confirm-babel-evaluate nil)

(c-after-font-lock-init)
(setq org-export-with-smart-quotes t)

(setq org-export-babel-evaluate nil)
(after-load 'org
  (setq org-babel-load-languages
        '((clojure . nil)
          (css . t)
          (dot . t)
          (emacs-lisp . t)
          (gnuplot . t)
          (haskell . nil)
          (js . t)
          (latex . t)
          (ledger . t)
          (mongo . t)
          (ocaml . nil)
          (octave . nil)
          (org . t)
          (perl . nil)
          (plantum1 . nil)
          (python . t)
          (R . nil)
          (ruby . nil)
          (scala . nil)
          (screen . nil)
          (shell . t)
          (sql . nil)
          (sqlite . t)
          (typescript . t)
          )))

(setq org-src-preserve-indentation t)

(defun send-agenda ()
  "Rebuild and export org-agenda files"
  (interactive)
  (setq inhibit-iso-escape-detection t)
  (setq org-export-with-broken-links t)
  (setq org-export-with-smart-quotes t)
  (find-file "~/notes/todo.org")
  (org-carry-forward-uncompleted-tasks) ;; See http://emacs.stackexchange.com/questions/5699/org-mode-trigger-todo-status-on-a-certain-date/5700#5700
  (org-store-agenda-views))

(eval-after-load "org"
  '(send-agenda))

(eval-after-load "org"
  '(org-gcal-fetch))

(eval-after-load "org"
  '(org-gcal-sync))

(load-theme 'RyanTheme)


(make-variable-buffer-local 'hl-line-mode)

;; Keep global-font-lock-mode from turning on font-lock-mode
(setq-local font-lock-global-modes (not 'org-mode))
(setq-local hl-line-mode (not 'org-mode))
(setq org-edit-src-content-indentation 0)

(progn
  (autoload 'org-mobile-pull "org-mobile" nil t)
  (autoload 'org-mobile-push "org-mobile" nil t))

;; BBDB

(bbdb-initialize)

;; Pandoc

;; Ledger

;; Suppress warnings
;;
;; See https://goo.gl/xkZAfA

(setq sml/no-confirm-load-theme t)


					; https://www.emacswiki.org/emacs/InsertFileName
(defun my-insert-file-name (filename &optional args)
  "Insert name of file FILENAME into buffer after point.
    
  Prefixed with \\[universal-argument], expand the file name to
  its fully canocalized path.  See `expand-file-name'.
  
  Prefixed with \\[negative-argument], use relative path to file
  name from current directory, `default-directory'.  See
  `file-relative-name'.
  
  The default with no prefix is to insert the file name exactly as
  it appears in the minibuffer prompt."
  ;; Based on insert-file in Emacs -- ashawley 20080926
  (interactive "*fInsert file name: \nP")
  (cond ((eq '- args)
	 (insert (file-relative-name filename)))
	((not (null args))
	 (insert (expand-file-name filename)))
	(t
	 (insert filename))))

(global-set-key "\C-c\C-i" 'my-insert-file-name)

(setq org-link-abbrev-alist
      '(("bugzilla"  . "http://10.1.2.9/bugzilla/show_bug.cgi?id=")
        ("url-to-ja" . "http://translate.google.fr/translate?sl=en&tl=ja&u=%h")
        ("google"    . "http://www.google.com/search?q=")
        ("gmap"      . "http://maps.google.com/maps?q=%s")
        ("omap"      . "http://nominatim.openstreetmap.org/search?q=%s&polygon=1")
        ("ads"       . "http://adsabs.harvard.edu/cgi-bin/nph-abs_connect?author=%s&db_key=AST")))

(provide 'init-local)
