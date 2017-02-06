(setq org-after-todo-state-change-hook nil
      org-agenda-columns-compute-summary-properties nil
      org-agenda-columns-show-summaries nil
      org-agenda-compact-blocks t
      org-agenda-default-appointment-duration 60
      org-agenda-ignore-properties '(appt stats category)
      org-agenda-inactive-leader ""
      org-agenda-mouse-1-follows-link t
      org-agenda-prefix-format ""
      org-agenda-remove-tags t
      org-agenda-scheduled-leaders '("" "")
      org-agenda-show-inherited-tags nil
      org-agenda-skip-deadline-if-done t
      org-agenda-skip-scheduled-if-done t
      org-agenda-skip-timestamp-if-deadline-is-shown t
      org-agenda-skip-timestamp-if-done t
      org-agenda-skip-unavailable-files t
      org-agenda-span 7
      org-agenda-start-on-weekday nil
      org-agenda-start-with-clockreport-mode t
      org-agenda-sticky nil
      org-agenda-tags-todo-honor-ignore-options t
      org-agenda-todo-keyword-format ""
      org-agenda-view-columns-initially t
      org-agenda-window-setup '(other-window)
      org-clone-delete-id t
      org-closed-keep-when-no-todo t
      org-deadline-warning-days 10)

(setq org-export-backends '(ascii beamer html icalendar latex md odt))

(setq org-export-creator-string ""
      org-export-headline-levels 4
      org-export-in-background t
      org-export-with-archived-trees nil
      org-export-with-author nil
      org-export-with-drawers '(not("LOGBOOK" "PROPERTIES"))
      org-export-with-priority t
      org-export-with-section-numbers nil
      org-export-with-smart-quotes t
      org-export-with-statistics-cookies nil
      org-export-with-tags nil
      org-export-with-timestamps '(active)
      org-agenda-before-write-hook
      '(org-agenda-add-entry-text org-carry-forward-uncompleted-tasks)
      org-agenda-deadline-faces
      '(   0.0
           1.0 . org-warning
           0.5 . org-upcoming-deadline
           0.0 . default)
      org-agenda-deadline-leaders quote "DUE:  " "Due in %3d d.: " "OVERDUE by %2d d.: "

      org-agenda-files
      quote "~/notes/todo.org" "~/notes/wbblog.org" "~/notes/inbox.org" "~/notes/habits"


      org-agenda-sorting-strategy
      quote
      todo-state-up deadline-down priority-down scheduled-up habit-up effort-up category-keep tag-up alpha-up

      org-agenda-before-write-hook
      quote
      org-agenda-add-entry-text org-carry-forward-uncompleted-tasks
      org-agenda-clockreport-parameter-plist quote :link t :maxlevel 3 t
      org-agenda-columns-compute-summary-properties nil
      org-agenda-columns-show-summaries nil
      org-agenda-compact-blocks t t
      org-agenda-deadline-faces
      quote
      0.0
      1.0 . org-warning
      0.5 . org-upcoming-deadline
      0.0 . default
      org-agenda-deadline-leaders quote "DUE:  " "Due in %3d d.: " "OVERDUE by %2d d.: "
      org-agenda-default-appointment-duration 60
      org-agenda-files
      "~/notes/todo.org" "~/notes/wbblog.org" "~/notes/mobileorg.org" "~/notes/habits.org"
      org-agenda-finalize-hook quote org-agenda-property-add-properties hl-line-mode
      org-agenda-fontify-priorities t
      org-agenda-ignore-properties quote appt stats category
      org-agenda-inactive-leader ""
      org-agenda-mouse-1-follows-link t t
      org-agenda-prefix-format ""
      org-agenda-remove-tags t
      org-agenda-scheduled-leaders quote "" ""
      org-agenda-show-inherited-tags nil
      org-agenda-skip-deadline-if-done t t
      org-agenda-skip-scheduled-if-done t t
      org-agenda-skip-timestamp-if-deadline-is-shown t t
      org-agenda-skip-timestamp-if-done t t
      org-agenda-skip-unavailable-files t
      org-agenda-sorting-strategy
      todo-state-up deadline-down priority-down scheduled-up habit-up effort-up category-keep tag-up alpha-up t
      org-agenda-span 7 t
      org-agenda-start-on-weekday nil t
      org-agenda-start-with-clockreport-mode t
      org-agenda-sticky nil t
      org-agenda-tags-column 10
      org-agenda-tags-todo-honor-ignore-options t
      org-agenda-todo-keyword-format ""
      org-agenda-view-columns-initially t
      org-agenda-window-setup quote other-window t
      org-capture-use-agenda-date t
      org-clock-out-when-done nil
      org-clone-delete-id t
      org-closed-keep-when-no-todo t
      org-confirm-babel-evaluate nil
      org-datetree-add-timestamp quote inactive
      org-deadline-warning-days 10
      org-default-notes-file "~/Dropbox/notes/notes.org"
      org-directory "~/Dropbox/notes"
      org-export-backends quote ascii beamer html icalendar latex md odt
      org-export-creator-string ""
      org-export-headline-levels 4
      org-export-in-background t
      org-export-with-archived-trees nil
      org-export-with-author nil
      org-export-with-drawers quote not "LOGBOOK" "PROPERTIES"
      org-export-with-priority t
      org-export-with-section-numbers nil
      org-export-with-smart-quotes t
      org-export-with-statistics-cookies nil
      org-export-with-tags nil
      org-export-with-timestamps quote active
      org-hide-leading-stars t
      org-html-doctype "html"
      org-html-html5-fancy t
      org-icalendar-alarm-time 60
      org-icalendar-categories quote local-tags category all-tags
      org-icalendar-combined-agenda-file "~/notes/org.ics"
      org-icalendar-combined-description "Ryan's Org Calendar"
      org-icalendar-combined-name "Ryan's Org Calendar"
      org-icalendar-exclude-tags quote "nocalendar"
      org-icalendar-include-bbdb-anniversaries t
      org-icalendar-include-todo t
      org-icalendar-store-UID t
      org-icalendar-timezone "America/Denver"
      org-log-repeat nil
      org-mobile-directory "~/notes"
      org-mobile-inbox-for-pull "~/notes/from-mobile.org"
      org-outline-path-complete-in-steps nil
      org-refile-use-outline-path t
      org-return-follows-link t
      org-sort-agenda-noeffort-is-high nil
      org-sort-agenda-notime-is-late nil
      org-todo-keywords
      org-tags-column 20)
sequence "NEXTn)" "TODOt)" "|" "DONEx)" "DELEGATEDd)" "WAITINGw)" "SOMEDAYs)" "NOT DOINGo)")))
org-todo-repeat-to-state "TODO"
org-hide-leading-stars t
org-html-doctype "html"
org-html-html5-fancy t
org-icalendar-combined-agenda-file "~/notes/org.ics"
org-log-repeat nil
org-mobile-directory "~/notes"
org-mobile-inbox-for-pull "~/notes/from-mobile.org"
org-sort-agenda-noeffort-is-high nil
org-sort-agenda-notime-is-late nil
org-todo-keywords
quote
sequence "NEXTn" "TODOt" "|" "DONEx" "DELEGATEDd" "WAITINGw" "SOMEDAYs" "NOT DOINGo"
org-todo-repeat-to-state "TODO"
safe-local-variable-values quote no-byte-compile t

'(org-after-todo-state-change-hook nil)
(setq org-agenda-mouse-1-follows-link t)
(setq org-agenda-skip-archived-trees t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-deadline-prewarning-if-scheduled nil)
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-timestamp-if-deadline-is-shown t)
(setq org-agenda-skip-scheduled-if-deadline-is-shown nil)
(setq org-agenda-skip-timestamp-if-done t)
(setq org-agenda-skip-unavailable-files t)
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
