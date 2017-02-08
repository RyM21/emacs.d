(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-to-list 'load-path "~/.emacs.d/themes/color-theme-6.6.0/")
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "wikipedia-this" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "amazon-this" user-emacs-directory))

(package-initialize)
(require 'ansi-color)
(require 'auto-org-md)
(require 'bbdb)
(require 'cc-mode)
(require 'emmet-mode)
(require 'font-lock)
(require 'init-functions)
(require 'init-keybindings)
(require 'init-macros)
(require 'jedi)
(require 'js3-mode)
(require 'ledger-mode)
(require 'lentic)
(require 'org)
(require 'org-gcal)
(require 'pandoc)
(require 'smex)
(require 'sphinx-mode)
(require 'visual-regexp-steroids)
(require 'yasnippet)
(require 'wc-mode)

(color-theme-initialize)

(add-to-list 'auto-mode-alist '("\\.dat$" . ledger-mode))

;; Word Count Mode

(wc-mode 1)

;; Projectile Mode

(projectile-global-mode)

;; Smart Mode Line

(sml/setup)


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



(c-after-font-lock-init)
(setq org-export-with-smart-quotes t)
(setq org-export-babel-evaluate nil)
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (latex . t)
   (python . t)
   (ledger . t)
   (sqlite . t)
   (org . t)
   ))
(setq org-src-preserve-indentation t)

(defun send-agenda ()
  "Rebuild and export org-agenda files"
  (interactive)
  (setq inhibit-iso-escape-detection t)
  (setq org-export-with-broken-links t)
  (setq org-export-with-smart-quotes t)
  (org-icalendar-export-agenda-files)
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
;(add-hook 'org-mode-hook (lambda () (setq hl-line-mode nil)))
					;(add-hook 'org-mode-hook (lambda () (setq hl-line-mode nil)))
(add-hook 'org-mode-hook (setq hl-line-mode nil))
(add-hook 'org-mode-hook (org-carry-forward-uncompleted-tasks))


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





(provide 'init-local)
