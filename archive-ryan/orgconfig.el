(require 'org-install)
(setq-default org-tags-align-column 0)
(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)
(setq visual-line-mode t)
(setq ido-default-buffer-method 'selected-window)
(setq ido-default-file-method 'selected-window)
(setq ido-everywhere t)
(setq ido-max-directory-size 100000)
(setq line-spacing '0.25)
(setq opened-org-agenda-files nil)
(setq org-adapt-indentation t)
(setq org-agenda-add-entry-text-maxlines 5)
(setq org-auto-align-tags t)
(setq org-journal-directory "~/notes")
(setq org-agenda-columns-add-appointments-to-effort-sum t)
(setq org-agenda-diary-file "~/journal.org")
(setq org-agenda-dim-blocked-tasks t)
(setq org-agenda-files (quote ("~/notes/todo.org" "~/notes/wbblog.org" "~/notes/notes.org" "~/notes/calendar.org" "~/notes/habits.org")))
(setq org-agenda-include-all-todo t)
(setq org-agenda-inhibit-startup t)
(setq org-agenda-mouse-1-follows-link t)
(setq org-agenda-span 7)
(setq org-agenda-persistent-filter nil)
(setq org-agenda-remove-tags t)
(setq org-agenda-restore-windows-after-quit t)
(setq org-agenda-show-all-dates t)
(setq org-startup-indented t)
(setq org-agenda-show-inherited-tags nil)
(setq org-agenda-show-log nil)
(setq org-agenda-skip-archived-trees t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-deadline-prewarning-if-scheduled nil)
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-timestamp-if-deadline-is-shown t)
(setq org-agenda-skip-scheduled-if-deadline-is-shown nil)
(setq org-agenda-skip-timestamp-if-done t)
(setq org-agenda-skip-unavailable-files t)
(setq org-agenda-sorting-strategy
      '((agenda todo-state-down habit-down deadline-up priority-down scheduled-up time-up effort-up category-keep)
      (todo todo-state-down habit-down deadline-up priority-down scheduled-up time-up effort-up category-keep)
      (tags todo-state-down habit-down deadline-up priority-down scheduled-up time-up effort-up category-keep)
      (search todo-state-down habit-down deadline-up priority-down scheduled-up time-up effort-up category-keep)))
(setq org-agenda-span 7)
(setq org-agenda-start-on-weekday nil)
(setq org-agenda-start-with-log-mode t)
(setq org-agenda-todo-ignore-scheduled nil)
(setq org-agenda-todo-keyword-format "%-10s")
(setq org-agenda-todo-list-sublevels t)
(setq org-agenda-use-tag-inheritance t)
(setq org-agenda-window-setup 'current-window)
(setq org-list-allow-alphabetical t)
(setq org-archive-location "%s_archive::~/notes/archive")
(setq org-attach-auto-tag "ATTACHMENT")
(setq org-attach-store-link-p (quote attached))
(setq org-babel-load-languages (quote ((python . t) (emacs-lisp . t) (js . t))))
(org-babel-do-load-languages
  'org-babel-load-languages
  '((python . t))

  )
(org-babel-do-load-languages
 'org-babel-load-languages
  '((shell . t)) 
)

(setq org-babel-no-eval-on-ctrl-c-ctrl-c t)
(setq org-blank-before-new-entry nil)
(setq org-capture-templates nil)
(setq org-catch-invisible-edits 'error)
(setq org-closed-keep-when-no-todo nil)
(setq org-columns-default-format " %TODO %PRIORITY %ITEM %DEADLINE %EFFORT")
(setq org-completion-use-ido t)
(setq org-custom-properties (quote ("DEADLINE" "EFFORT")))
(setq org-cycle-include-plain-lists t)
(setq org-cycle-separator-lines 0)
(setq org-deadline-warning-days 7)
(setq org-default-notes-file "~/notes/notes.org")
(setq org-default-priority ?A)
(setq org-descriptive-links t)
(setq org-directory (expand-file-name "~/notes/"))
(setq org-edit-src-content-indentation 0)
(setq org-edit-timestamp-down-means-later t)
(setq org-enable-table-editor t)
(setq org-enforce-todo-checkbox-dependencies nil)
(setq org-enforce-todo-dependencies t)
(setq org-expiry-created-property-name "CREATED")
(setq org-expiry-inactive-timestamps t)
(setq org-export-coding-system 'utf-8)
(setq org-export-htmlize-output-type 'css)
(setq org-export-kill-product-buffer-when-displayed t)
(setq org-fast-tag-selection-single-key (quote expert))
(setq org-fontify-done-headline t)
(setq org-footnote '(:foreground "light steel blue" :underline nil :weight default :family "Inconsolata"))
(setq org-goto-interface (quote outline-path-completion))
(setq org-habit-alert-face t)
(setq org-habit-show-habits-only-for-today t)
(setq org-hidden-keywords (quote (author date email title)))
(setq org-hide-emphasis-markers t)
(setq org-hide-leading-stars t)
(setq org-hierarchical-todo-statistics nil)
(setq org-id-link-to-org-use-id 'create-if-interactive-and-no-custom-id)
(setq org-indent-indentation-per-level 2)
(setq org-indirect-buffer-display 'current-window)
(setq org-insert-heading-respect-content nil)
;(setq org-log-into-drawer t)
(setq org-loop-over-headlines-in-active-region t)
(setq org-highest-priority ?A)
(setq org-lowest-priority ?C)
(setq org-M-RET-may-split-line nil)
(setq org-mouse-features (quote (activate-bullets activate-checkboxes)))
(setq org-odd-level-only nil)
(setq org-outline-path-complete-in-steps nil)
(setq org-pretty-entities t)
(setq org-pretty-entities-include-sub-superscripts nil)
(setq org-priority-start-cycle-with-default t)
(setq org-provide-todo-statistics t)
(setq org-return-follows-link t)
(setq org-reverse-note-order t)
(setq org-show-following-heading t)
(setq org-show-hierarchy-above t)
(setq org-show-siblings (quote ((default))))
(setq org-special-ctrl-a/e t)
(setq org-special-ctrl-k t)
(setq org-speed-commands-user nil)
(setq org-src-fontify-natively t)
(setq org-src-preserve-indentation nil)
(setq org-startup-align-all-tables t)
(setq org-startup-folded t)
(setq org-startup-indented t)
(setq org-startup-truncated nil)
(setq org-stuck-projects (quote ("+LEVEL=2/-DONE" ("@Urgent") ("@Urgent") "")))
(setq org-stuck-projects (quote ("-inactive/TODO" ("TODO" "WAITING") nil "")))
(setq org-support-shift-select t)
(setq org-table '(:foreground "LightSkyBlue" :height 1.0 :family "Inconsolata"))
(setq org-table-export-default-format "orgtbl-to-csv")
(setq org-tag-faces (quote (("urgent" . "red"))))
(setq org-priority-faces (quote (("[#A]" . "red"))))
(setq org-tags-sort-function (quote string<))
(setq org-time-stamp-rounding-minutes '(0 15))
(setq org-todo-repeat-to-state "TODO")
(setq org-todo-state-tags-triggers (quote ((todo) (done ("urgent") ("todo") ("waiting")))))
(setq org-upcoming-deadline '(:foreground "red"))
(setq org-use-fast-todo-selection t)
(setq org-use-property-inheritance t)
(setq org-use-speed-commands t)
(setq org-use-tag-inheritance t)

                                     (setq org-todo-keywords
     (quote ((sequence "NEXT(n)" "TODO(t)" "I" "DONE(x)" "DELEGATED(d)" "WAITING(w)" "SOMEDAY(s)" "NOT DOING(o)" "REFERENCE(r)"))))

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


;; TODO entry to automatically change to DONE when all children are done
(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

(defun opened-org-agenda-files ()
  (let ((files (org-agenda-files)))
    (setq opened-org-agenda-files nil)
    (mapcar
      (lambda (x)
        (when (get-file-buffer x)
          (push x opened-org-agenda-files)))
      files)))

(defun kill-org-agenda-files ()
  (let ((files (org-agenda-files)))
    (mapcar
      (lambda (x)
        (when
            (and
              (get-file-buffer x)
              (not (member x opened-org-agenda-files)))
          (kill-buffer (get-file-buffer x))))
      files)))

(defadvice org-agenda-list (around opened-org-agenda-list-around activate)
  (opened-org-agenda-files)
  ad-do-it
  (kill-org-agenda-files))

(defadvice org-search-view (around org-search-view-around activate)
  (opened-org-agenda-files)
  ad-do-it
  (kill-org-agenda-files))

(setq org-modules
   (quote
    (org-bibtex org-ctags org-docview org-gnus org-habit org-id org-info org-inlinetask org-protocol org-rmail org-w3m org-bookmark org-bullets org-checklist org-choose org-collector org-drill org-eshell org-eval-light org-eval org-eww org-favtable org-man org-panel org-registry orgtbl-sqlinsert org-toc)))
 (setq org-export-backends
   (quote
    (ascii beamer html icalendar latex md odt org freemind jekyll rst ox-gfm)))

(setq org-capture-templates
   (quote
    (("a" "Add Task" entry
      (file+headline "~/notes/notes.org" "Inbox")
      "* TODO %?
SCHEDULED: %t
:PROPERTIES:
:ID:       %(shell-command-to-string \"uuidgen\"):CREATED:  %U
:END:" :prepend t)
     ("n" "Note" entry
      (file+headline "~/notes/notes.org" "Notes")
      "* NOTE %?
:PROPERTIES:
:ID:       %(shell-command-to-string \"uuidgen\"):CREATED:  %U
:END:" :prepend t)
     ("c" "Calendar" entry
      (file+headline "~/notes/notes.org" "Inbox")
      "* APPT %?
SCHEDULED: %t
:PROPERTIES:
:ID:       %(shell-command-to-string \"uuidgen\"):CREATED:  %U
:END:" :prepend t)
     ("t" "Add Task" entry
      (file+headline "~/notes/notes.org" "Inbox")
      "* TODO %?
SCHEDULED: %t
:PROPERTIES:
:ID:       %(shell-command-to-string \"uuidgen\"):CREATED:  %U
:END:" :prepend t))))

(require 'org-habit)

 (setq minibuffer-prompt-properties
   (quote
    (read-only nil cursor-intangible t face minibuffer-prompt)))


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

;; http://emacs.stackexchange.com/questions/5699/org-mode-trigger-todo-status-on-a-certain-date/5700#5700

(defun org-make-active-today ()
"Change task from Next Action to Active if deadline is less than or equal to today."
(interactive)
  (save-excursion
    (goto-char (point-max))
    (while (re-search-backward "^\\*\\* " nil t)
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
                  (org-element-property :raw-value deadline) ))))
          (today (time-to-days (current-time))) )
        (when
            (and
              deadline-time-stamp
              (>= today deadline-time-stamp) ;; deadline less than or equal to today
              (string= todo-state "TODO")) ;; todo-state equals "X"
          (org-deadline nil ".")
          (org-todo "NEXT") )))))


(add-hook 'org-mode-hook '(lambda ()
                              (visual-line-mode)
                              (org-indent-mode)
                              (org-make-active-today)))

(add-hook 'org-mode-hook (lambda () (variable-pitch-mode t)))


;; These faces go pretty well with the flatui theme from 
;; https://github.com/Corsair/emacs-flatui-theme

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

(defun my/org-agenda-mark-habits ()
  "Mark all habits in current agenda for graph display.

This function enforces `my/org-habit-show-graphs-everywhere' by
marking all habits in the current agenda as such.  When run just
before `org-agenda-finalize' (such as by advice; unfortunately,
`org-agenda-finalize-hook' is run too late), this has the effect
of displaying consistency graphs for these habits.

When `my/org-habit-show-graphs-everywhere' is nil, this function
has no effect."
  (when (and my/org-habit-show-graphs-everywhere
         (not (get-text-property (point) 'org-series)))
    (let ((cursor (point))
          item data) 
      (while (setq cursor (next-single-property-change cursor 'org-marker))
        (setq item (get-text-property cursor 'org-marker))
        (when (and item (org-is-habit-p item)) 
          (with-current-buffer (marker-buffer item)
            (setq data (org-habit-parse-todo item))) 
          (put-text-property cursor
                             (next-single-property-change cursor 'org-marker)
                             'org-habit-p data))))))

(advice-add #'org-agenda-finalize :before #'my/org-agenda-mark-habits)


(require 'org-gcal)
(setq org-gcal-client-id "536240286054-vvmfjq1kn8b1hhgoqgalkgnr44e6jdjn.apps.googleusercontent.com"
      org-gcal-client-secret "4xOImiVeBgaWMsh7vbeDcZww"
      org-gcal-file-alist '(("ryan.mccarl@gmail.com" .  "~/notes/todo.org")
                            ("0p193dqqm64rskq1mluijs71lvoj3rsf@import.calendar.google.com" .  "~/notes/todo.org")))

