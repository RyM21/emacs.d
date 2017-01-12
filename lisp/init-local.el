(add-to-list 'load-path "~/src/org-mode/lisp")
(add-to-list 'load-path "~/src/org-mode/contrib/lisp" t)

(custom-set-variables
 '(ansi-color-map
   [default default default italic underline success warning error nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil
     (foreground-color . "black")
     (foreground-color . "#d55e00")
     (foreground-color . "#009e73")
     (foreground-color . "#f8ec59")
     (foreground-color . "#0072b2")
     (foreground-color . "#cc79a7")
     (foreground-color . "#56b4e9")
     (foreground-color . "white")
     nil nil
     (background-color . "black")
     (background-color . "#d55e00")
     (background-color . "#009e73")
     (background-color . "#f8ec59")
     (background-color . "#0072b2")
     (background-color . "#cc79a7")
     (background-color . "#56b4e9")
     (background-color . "white")
     nil nil] t)
 '(auth-source-protocols
   (quote
    (quote
     (quote
      ((imap "imap" "imaps" "143" "993" "995")
       (pop3 "pop3" "pop" "pop3s" "110" "995" "993")
       (ssh "ssh" "22")
       (sftp "sftp" "115")
       (smtp "smtp" "25" "587"))))))
 '(company-auto-complete (quote (quote (quote (quote company-explicit-action-p)))))

 '(diary-entry-marker (quote (quote (quote font-lock-variable-name-face))))
 '(gnus-logo-colors (quote (quote (quote ("#528d8d" "#c0c0c0")))))
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-echo-area-message "ryan")
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/notes/todo.org")
 '(initial-major-mode (quote org-mode))
 '(initial-scratch-message nil)
 '(org-after-todo-state-change-hook nil)
 '(org-agenda-before-write-hook
   (quote
    (org-agenda-add-entry-text org-carry-forward-uncompleted-tasks)))
 '(org-agenda-columns-compute-summary-properties nil)
 '(org-agenda-columns-show-summaries nil)
 '(org-agenda-compact-blocks t)
 '(org-agenda-deadline-faces
   (quote
    ((0.0)
     (1.0 . org-warning)
     (0.5 . org-upcoming-deadline)
     (0.0 . default))))
 '(org-agenda-deadline-leaders (quote ("DUE:  " "Due in %3d d.: " "OVERDUE by %2d d.: ")))
 '(org-agenda-default-appointment-duration 60)
 '(org-agenda-files
   (quote
    ("~/notes/todo.org" "~/notes/wbblog.org" "~/notes/mobileorg.org" "~/notes/habits.org")))
 '(org-agenda-ignore-properties (quote (appt stats category)))
 '(org-agenda-inactive-leader "")
 '(org-agenda-mouse-1-follows-link t)
 '(org-agenda-prefix-format "")
 '(org-agenda-remove-tags t)
 '(org-agenda-scheduled-leaders (quote ("" "")))
 '(org-agenda-show-inherited-tags nil)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-skip-timestamp-if-deadline-is-shown t)
 '(org-agenda-skip-timestamp-if-done t)
 '(org-agenda-skip-unavailable-files t)
 '(org-agenda-sorting-strategy
   (quote
    (todo-state-up deadline-down priority-down scheduled-up habit-up effort-up category-keep tag-up alpha-up)))
 '(org-agenda-span 7)
 '(org-agenda-start-on-weekday nil)
 '(org-agenda-start-with-clockreport-mode t)
 '(org-agenda-sticky nil)
 '(org-agenda-tags-todo-honor-ignore-options t)
 '(org-agenda-todo-keyword-format "")
 '(org-agenda-view-columns-initially t)
 '(org-agenda-window-setup (quote other-window))
 '(org-clone-delete-id t)
 '(org-closed-keep-when-no-todo t)
 '(org-deadline-warning-days 10)
 '(org-export-backends (quote (ascii beamer html icalendar latex md odt)))
 '(org-export-creator-string "")
 '(org-export-headline-levels 4)
 '(org-export-in-background t)
 '(org-export-with-archived-trees nil)
 '(org-export-with-author nil)
 '(org-export-with-drawers (quote (not "LOGBOOK" "PROPERTIES")))
 '(org-export-with-priority t)
 '(org-export-with-section-numbers nil)
 '(org-export-with-smart-quotes t)
 '(org-export-with-statistics-cookies nil)
 '(org-export-with-tags nil)
 '(org-export-with-timestamps (quote active))
 '(org-hide-leading-stars t)
 '(org-html-doctype "html")
 '(org-html-html5-fancy t)
 '(org-icalendar-combined-agenda-file "~/notes/org.ics")
 '(org-log-repeat nil)
 '(org-mobile-directory "~/notes")
 '(org-mobile-inbox-for-pull "~/notes/from-mobile.org")
 '(org-sort-agenda-noeffort-is-high nil)
 '(org-sort-agenda-notime-is-late nil)
 '(org-todo-keywords
   (quote
    ((sequence "NEXT(n)" "TODO(t)" "|" "DONE(x)" "DELEGATED(d)" "WAITING(w)" "SOMEDAY(s)" "NOT DOING(o)"))))
 '(org-todo-repeat-to-state "TODO")
 '(safe-local-variable-values (quote ((no-byte-compile t)))))

(setq org-agenda-mouse-1-follows-link t)
(setq org-agenda-skip-archived-trees t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-deadline-prewarning-if-scheduled nil)
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-timestamp-if-deadline-is-shown t)
(setq org-agenda-skip-scheduled-if-deadline-is-shown nil)
(setq org-agenda-skip-timestamp-if-done t)
(setq org-agenda-skip-unavailable-files t)
                                        ;(setq org-agenda-sorting-strategy
                                        ;'((agenda todo-state-down habit-down deadline-up priority-down scheduled-up time-up effort-up category-keep)
                                        ;(todo todo-state-down habit-down deadline-up priority-down scheduled-up time-up effort-up category-keep)
                                        ;(tags todo-state-down habit-down deadline-up priority-down scheduled-up time-up effort-up category-keep)
                                        ;(search todo-state-down habit-down deadline-up priority-down scheduled-up time-up effort-up category-keep)))
(setq org-agenda-span 7)
(setq org-columns-default-format " %TODO %PRIORITY %ITEM %DEADLINE %EFFORT")

(setq org-todo-keywords
      (quote ((sequence "NEXT(n)" "TODO(t)" "|" "DONE(x)" "DELEGATED(d)" "WAITING(w)" "SOMEDAY(s)" "NOT DOING(o)"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight default)
              ("WAITING" :foreground "orange" :weight default)
              ("DELEGATED" :foreground "magenta" :weight default)
              ("SOMEDAY" :foreground "gray" :weight default)
              ("NOT DOING" :foreground "black" :weight default)
              )))



(setq org-tag-alist '((:startgroup . "Category")
                      ("errand" . ?e)
                      ("habit" . ?h)
                      ("law" . ?l)
                      ("WB" . ?w)
                      ("personal" . ?p)
                      ("reading" . ?r)
                      ("writing" . ?i)
                      ("resisting" . ?r) ;; This indicates that I am resisting or procrastinating on the task
                      (:endgroup . "Category")))


;; Smart Mode Line

(sml/setup)

;; Keybindings

(global-set-key (kbd "<f9> c") 'calendar)
(global-set-key (kbd "<f9> f") 'boxquote-insert-file)
(global-set-key (kbd "<f9> g") 'gnus)
(global-set-key (kbd "<f9> r") 'boxquote-region)
(global-set-key (kbd "<f9> v") 'visible-mode)
(global-set-key (kbd "C-c +") 'text-scale-increase)
(global-set-key (kbd "C-c -") 'text-scale-decrease)
(global-set-key (kbd "C-c C-f") 'backward-kill-word)
(global-set-key (kbd "C-c C-k") 'kill-region)
(global-set-key (kbd "C-c C-o") 'other-window)
(global-set-key (kbd "C-c C-w") 'kill-word)
(global-set-key (kbd "C-c q") 'delete-indentation)
(global-set-key (kbd "C-o") 'other-window)
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-k" ) 'kill-line)
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "C-x C-m") 'save-macro)
(global-set-key (kbd "C-c C-b") 'bookmark-set)


                                        ; Macros

;; Global

(global-set-key (kbd "C-M-s") 'section-sign-plus-nonbreaking-space)
(global-set-key (kbd "C-M-.") 'add-ellipsis)
(global-set-key (kbd "C-M--") 'insert-em-dash)

;; RST-mode
(defun my-rst-mode-config ()
  "For use in rst-mode-hook."
  (local-set-key (kbd "C-x C-h 1") 'sphinx-first-level-heading)
  (local-set-key (kbd "C-x C-h 2") 'sphinx-second-level-heading)
  (local-set-key (kbd "C-x C-h 3") 'sphinx-third-level-heading)
  (local-set-key (kbd "C-c 8") 'add-star-emphasis) ; Surround line with single stars for emphasis
  (local-set-key (kbd "C-c *") 'add-star-emphasis) ; Surround line with single stars for emphasis
  (local-set-key (kbd "C-x -") 'make-list-item) ; Make informal list item within org structure
  (local-set-key (kbd "C-c [") 'make-checkbox) ; Create a list item starting with a checkbox
  )
;; add to hook
(eval-after-load "rst-mode"
  '(add-hook 'rst-mode-hook 'my-rst-mode-config))

;; HTML Mode

(defun my-html-mode-config ()
  "For use in html-mode-hook."
  (local-set-key (kbd "C-c C-l") 'html-li) ; li tag macro
  (local-set-key (kbd "<C-right>") 'sgml-skip-tag-forward) ; add a key
  (local-set-key (kbd "<C-left>") 'sgml-skip-tag-backward) ; add a key
  (local-set-key (kbd "C-c l") 'html-link-to-markdown) ; change HTML link to Markdown link
  )

;; add to hook
(add-hook 'html-mode-hook 'my-html-mode-config)

;; Markdown Mode

(defun my-markdown-mode-config ()
  "For use in markdown-mode-hook."
  (local-set-key (kbd "C-c 8") 'add-star-emphasis) ; Surround line with single stars for emphasis
  (local-set-key (kbd "C-c *") 'add-star-emphasis) ; Surround line with single stars for emphasis
  (local-set-key (kbd "C-x -") 'make-list-item) ; Create a list item starting with a hyphen as bullet
  (local-set-key (kbd "C-c [") 'make-checkbox) ; Create a list item starting with a checkbox
  (local-set-key (kbd "C-c l") 'make-markdown-link) ; Surround line with single stars for emphasis
  (local-set-key (kbd "C-c 0") 'newlines-around-audio-tags) ; Surround line with single stars for emphasis
  (require 'yasnippet)
  (yas-global-mode)
  )


(add-hook 'markdown-mode-hook 'my-markdown-mode-config)

(require 'xterm-color)
(require 'ansi-color)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(add-to-list 'load-path "~/.emacs.d/themes/color-theme-6.6.0/")

(require 'color-theme)
(color-theme-initialize)

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


(fset 'sphinx-first-level-heading
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 up 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 1 down down 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 1 down return up] 0 "%d")) arg)))


(fset 'sphinx-second-level-heading
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 up 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 down return 1 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 return 1 up down up down] 0 "%d")) arg)))


(fset 'sphinx-third-level-heading
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 up 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 down return 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 return 1] 0 "%d")) arg)))


(fset 'html-li
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 60 108 105 62 5 60 47 108 105 62 1 down] 0 "%d")) arg)))

(setq auto-fill-mode nil)
(setq visual-line-mode t)

(fset 'add-star-emphasis
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("**" 0 "%d")) arg)))


(fset 'make-list-item
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 45 32 down 1] 0 "%d")) arg)))


(fset 'make-markdown-link
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("\342[]()" 0 "%d")) arg)))


(fset 'newlines-around-audio-tags
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([19 97 117 100 105 111 return 1 return down down down return] 0 "%d")) arg)))


(fset 'make-checkbox
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("- [ ] " 0 "%d")) arg)))


(fset 'section-sign-plus-nonbreaking-space
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217848 up return up up return 134217848 up return up up return] 0 "%d")) arg)))


(fset 'section-sign-plus-nonbreaking-space
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217848 107 backspace 105 110 115 101 114 116 45 99 104 97 114 return 115 101 99 116 105 111 110 32 115 105 103 110 return 134217848 105 110 115 101 114 116 45 99 104 97 114 return 110 111 110 45 98 114 101 97 107 105 110 103 45 backspace 32 115 112 97 99 101 return] 0 "%d")) arg)))

(fset 'insert-em-dash
      (lambda (&optional arg) "Keyboard macro" (interactive "p") (kmacro-exec-ring-item (quote ([134217848 105 110 115 101 114 116 45 99 104 97 114 return 69 77 33554464 68 65 83 72 return] 0 "%d")) arg)))


(fset 'html-link-to-markdown
      (lambda (&optional arg) "Keyboard macro" (interactive "p") (kmacro-exec-ring-item (quote ([19 104 114 101 102 61 right 32 backspace 33554464 backspace 67108896 19 34 left 134217847 up right return up 109 100 tab backspace backspace backspace 45 32 91 73 backspace 32 93 40 25 41 down 19 62 right left S-right S-right S-right S-right S-right S-right S-right left left left left left left left 67108896 67108896 up down 67108896 19 60 left 134217847 up 1 19 41 18 40 backspace backspace 40 backspace backspace backspace 40 left left backspace 25 right right right right right right right right right right right right right right right right right right right right right right right right right right right right right left left left left left left left left left left left left left left left left 5 return] 0 "%d")) arg)))


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

'(org-agenda-date ((t (:inherit org-agenda-structure :weight semi-bold :height 1.2))) t)
'(org-date ((t (:foreground "Purple" :underline t :height 0.8 :family "Helvetica Neue"))))
'(org-done ((t (:foreground "gray57" :weight light))))
'(org-level-1 ((t (:weight semi-bold :height 1.1 :family "Helvetica Neue"))))
'(org-level-2 ((t (:inherit outline-2 :weight semi-bold :height 1.1))))
'(org-level-3 ((t (:inherit outline-3 :weight bold :family "Helvetica Neue"))))
'(org-level-5 ((t (:inherit outline-5 :family "Helvetica Neue"))))
'(org-link ((t (:inherit link :weight normal))))
'(org-meta-line ((t (:inherit font-lock-comment-face :height 0.8))))
'(org-property-value ((t (:height 0.9 :family "Helvetica Neue"))) t)
'(org-special-keyword ((t (:inherit font-lock-keyword-face :height 0.8 :family "Helvetica Neue"))))
'(org-table ((t (:foreground "dim gray" :height 0.9 :family "Menlo"))))
'(org-tag ((t (:foreground "dark gray" :weight bold :height 0.8))))
'(org-todo ((t (:foreground "#e67e22" :weight bold))))

(setq org-agenda-custom-commands
      '(("A" "Agenda" agenda "" nil ("agenda.html" "agenda.txt" "agenda.ics"))
        ("T" "Global to-do list" alltodo "" nil ("todo.html" "org-todo.txt"))
        ("L" "Law tasks" tags-todo "law" nil ("law.html" "law.txt" "law.ics"))
        ("E" "Errands" tags-todo "errands" nil ("errands.html" "errands.txt" "errands.ics"))
        ("W" "WordBrewery" tags-todo "WB" nil ("WBtasks.html" "WBtasks.txt" "WBcal.ics"))))

(defvar my/org-habit-show-graphs-everywhere nil
  "If non-nil, show habit graphs in all types of agenda buffers.

Normally, habits display consistency graphs only in
\"agenda\"-type agenda buffers, not in other types of agenda
buffers.  Set this variable to any non-nil variable to show
consistency graphs in all Org mode agendas.")

(setq org-gcal-client-id "536240286054-vvmfjq1kn8b1hhgoqgalkgnr44e6jdjn.apps.googleusercontent.com"
      org-gcal-client-secret "4xOImiVeBgaWMsh7vbeDcZww"
      org-gcal-file-alist '(("ryan.mccarl@gmail.com" .  "~/notes/todo.org")
                            ("0p193dqqm64rskq1mluijs71lvoj3rsf@import.calendar.google.com" .  "~/notes/todo.org")))




(defun my-org-mode-config ()
  (local-set-key (kbd "C-x C-h 3") 'org-insert-third-level-star-headline)
  (local-set-key (kbd "M-r") 'org-refile)
  (local-set-key (kbd "<f8>") 'org-cycle-agenda-files)
  (local-set-key (kbd "C-<down>") 'org-move-subtree-down)
  (local-set-key (kbd "C-<up>") 'org-move-subtree-up)
  (local-set-key (kbd "C-c a") 'org-agenda)
  (local-set-key (kbd "C-c C-d") 'org-deadline)
  (local-set-key (kbd "C-c d") 'org-deadline)
  (local-set-key (kbd "M-<f9>") 'org-toggle-inline-images)
  (local-set-key (kbd "M-<up>") 'org-move-subtree-up)
  (local-set-key (kbd "C-c [") 'make-checkbox) ;; Create a list item starting with a checkbox
  (local-set-key (kbd "C-c C-,") 'org-demote-subtree)
  (local-set-key (kbd "C-c C-.") 'org-promote-subtree)
  (local-set-key (kbd "C-c l") 'org-insert-link-global)
  (local-set-key (kbd "C-c o") 'org-open-at-point-global)
  (local-set-key (kbd "C-x -") 'make-list-item) ;; Make informal list item within org structure
  (global-set-key (kbd "<f12>") 'org-agenda)
  (global-set-key (kbd "C-c c") 'org-capture)
  (local-set-key (kbd "M-<down>") 'org-move-subtree-down)
  (global-set-key (kbd "M-c") 'org-capture)
  (global-set-key (kbd "M-p") 'org-capture)
  (local-set-key (kbd "<f9> l") 'org-toggle-link-display)
  (local-set-key (kbd "C-c ,") 'org-demote-subtree)
  (local-set-key (kbd "C-c .") 'org-promote-subtree)
  (require 'yasnippet)
  (yas-global-mode)
  (org-indent-mode 1)
  )


(add-hook 'org-mode-hook 'my-org-mode-config)


(defun send-agenda ()
  "Rebuild and export org-agenda files"
  (interactive)
  (setq inhibit-iso-escape-detection t)
  (setq org-export-with-broken-links t)
  (find-file "~/notes/todo.org")
  (org-carry-forward-uncompleted-tasks) ;; See http://emacs.stackexchange.com/questions/5699/org-mode-trigger-todo-status-on-a-certain-date/5700#5700
  (org-store-agenda-views))
                                        ;(org-icalendar-export-agenda-files)

                                        ;(eval-after-load "org"
                                        ;'(send-agenda))

(load-theme 'RyanTheme)
(provide 'init-local)
