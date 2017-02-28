




;; Sentences end with a single space.
(setq sentence-end-double-space nil)





					; VISUAL DISPLAY


;; Undo tree mode - visualize undos and branches. This lets you use C-x u (undo-tree-visualize) to visually walk through the changes you've made, undo back to a certain point (or redo), and go down different branches.

(use-package undo-tree
  :diminish undo-tree-mode
  :config
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)))

;; Guide key mode - pops up after delay to help with keyboard shortcuts.

(use-package guide-key
  :defer t
  :diminish guide-key-mode
  :config
  (progn
  (setq guide-key/guide-key-sequence '("C-x r" "C-x 4" "C-c"))
  (guide-key-mode 1)))


					; Text

;; UTF-8 encoding

(use-package guide-key
  :defer t
  :diminish guide-key-mode
  :config
  (progn
  (setq guide-key/guide-key-sequence '("C-x r" "C-x 4" "C-c"))
  (guide-key-mode 1)))  ; Enable guide-key-mode

					; Navigation

;; Pop-to-mark - to get back to previous places

(bind-key "C-x p" 'pop-to-mark-command)
(setq set-mark-command-repeat-pop t)

;; Helm swoop - to find lines; binding to c-shift-s

(use-package helm-swoop
 :bind
 (("C-S-s" . helm-swoop)
  ("M-i" . helm-swoop)
  ("M-s s" . helm-swoop)
  ("M-s M-s" . helm-swoop)
  ("M-I" . helm-swoop-back-to-last-point)
  ("C-c M-i" . helm-multi-swoop)
  ("C-x M-i" . helm-multi-swoop-all)
  )
 :config
 (progn
   (define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
   (define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)))


;; Window movement

;;; 
;;; c-x o = switch window

;; Smartscan: Smart Scan will try to infer the symbol your point is on and let you jump to other, identical, symbols elsewhere in your currentbuffer with a single key stroke. The advantage over isearch is its unintrusiveness; there are no menus, prompts or other UI elements that require your attention. M-n and M-p move between symbols and type M-' to replace all symbols in the buffer matching the one under point, and C-u M-' to replace symbols in your current defun only (as used by narrow-to-defun.)

(use-package smartscan
  :defer t
  :config (global-smartscan-mode t))

;; Dired; see https://www.masteringemacs.org/article/working-multiple-files-dired

(require 'find-dired)
(setq find-ls-option '("-print0 | xargs -0 ls -ld" . "-ld"))


;; Beginning of line: Move first to the first whitespace character (indent), then to base of line


;; Show recent files

(require 'recentf)
(setq recentf-max-saved-items 200
      recentf-max-menu-items 15)
(recentf-mode)

;; ;; Reading: Toggle the right margin between `fill-column' or window width.
;; This command is convenient when reading novel, documentation.

(defun xah-toggle-margin-right ()
  (interactive)
  (if (eq (cdr (window-margins)) nil)
      (set-window-margins nil 0 (- (window-body-width) fill-column))
    (set-window-margins nil 0 0)))

					; Editing


;; Minibuffer editing

(use-package miniedit
  :commands minibuffer-edit
  :init (miniedit-install))

					; Lines

;; Shuffle lines

(defun my/shuffle-lines-in-region (beg end)
  (interactive "r")
  (let ((list (split-string (buffer-substring beg end) "[\r\n]+")))
    (delete-region beg end)
    (insert (mapconcat 'identity (shuffle-list list) "\n"))))

;; Sort lines and remove duplicates

  (defun my/sort-sexps-in-region (beg end)
    "Can be handy for sorting out duplicates.
Sorts the sexps from BEG to END. Leaves the point at where it
couldn't figure things out (ex: syntax errors)."
    (interactive "r")
    (let ((input (buffer-substring beg end))
          list last-point form result)
      (save-restriction
        (save-excursion
          (narrow-to-region beg end)
          (goto-char (point-min))
          (setq last-point (point-min))
          (setq form t)
          (while (and form (not (eobp)))
            (setq form (ignore-errors (read (current-buffer))))
            (when form
              (add-to-list
               'list
               (cons
                (prin1-to-string form)
                (buffer-substring last-point (point))))
              (setq last-point (point))))
          (setq list (sort list (lambda (a b) (string< (car a) (car b)))))
          (delete-region (point-min) (point))
          (insert (mapconcat 'cdr list "\n"))))))


					; Org-mode

;; Modules

  (setq org-modules '(;org-bbdb
                      org-gnus
                      ;org-drill
                      org-info
                      org-jsinfo
                      org-habit
                      ;org-irc
                      org-mouse
                      org-protocol
                      ;org-annotate-file
                      org-eval
                      org-expiry
                      org-interactive-query
                      org-man
                      org-collector
                      ;org-panel
                      org-screen
                      org-toc))
(eval-after-load 'org
 '(org-load-modules-maybe t))
(setq org-expiry-inactive-timestamps t)

;; Org-mode directories

(setq org-directory "~/notes")
(setq org-default-notes-file "~/notes/notes.org")


;; Simplify addition of outside links

(defun my/yank-more ()
  (interactive)
  (insert "[[")
  (yank)
  (insert "][more]]"))
(global-set-key (kbd "<f6>") 'my/yank-more)

;; Org-refile: organize notes by typing in the headline to file them under

(setq org-reverse-note-order t)
(setq org-refile-use-outline-path nil)
(setq org-refile-allow-creating-parent-nodes 'confirm)
(setq org-refile-use-cache nil)
(setq org-refile-targets '((org-agenda-files . (:maxlevel . 6))))
(setq org-blank-before-new-entry nil)

;; Track to-do state and log timestamp of state change

(setq org-todo-keywords
 '((sequence
    "TODO(t)"  ; next action
    "TOBLOG(b)"  ; next action
    "STARTED(s)" ; next action
    "WAITING(w)"
    "DELEGATED(d)"
    "SOMEDAY/MAYBE(sm)" "|" "DONE(x!)" "CANCELLED(ca)")
   (sequence "LEARN(l)" "TRY" "READ(r)" "|" "COMPLETE(x)")
   (sequence "TODELEGATE(-)" "DELEGATED(d)" "|" "COMPLETE(x)")))

 (setq org-todo-keyword-faces
      '(("TODO" . (:foreground "green" :weight bold))
        ("DONE" . (:foreground "cyan" :weight bold))
        ("WAITING" . (:foreground "red" :weight bold))
        ("SOMEDAY" . (:foreground "gray" :weight bold))))

 (setq org-log-done 'time) ; Automatically log timestamp of state change

 ;; Projects

 (setq org-tags-exclude-from-inheritance '("project")) ; avoid inheriting ::PROJECT:: tag

;; Task dependencies

(setq org-enforce-todo-dependencies t)
(setq org-track-ordered-property-with-tag t)
(setq org-agenda-dim-blocked-tasks t)


;; Associate text files with org-mode

(add-to-list 'auto-mode-alist '("\\.txt$" . org-mode))


;; Agenda view (Sacha Chua: 'I like looking at two days at a time when I plan using the Org agenda. I want to see my log entries, but I don't want to see scheduled items that I've finished. I like seeing a time grid so that I can get a sense of how appointments are spread out.

(setq org-agenda-span 2)
(setq org-agenda-tags-column -100) ; take advantage of the screen width
(setq org-agenda-sticky nil)
(setq org-agenda-inhibit-startup t)
(setq org-agenda-use-tag-inheritance t)
(setq org-agenda-show-log t)
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-deadline-prewarning-if-scheduled 'pre-scheduled)
(setq org-agenda-time-grid
      '((daily today require-timed)
       "----------------"
       (800 1000 1200 1400 1600 1800)))


(setq org-columns-default-format "%14SCHEDULED %1PRIORITY %TODO %50ITEM %Effort{:} %TAGS")

;; Easily mark a task as done

(defun my/org-agenda-done (&optional arg)
  "Mark current TODO as done.
This changes the line at point, all other lines in the agenda referring to
the same tree node, and the headline of the tree node in the Org-mode file."
  (interactive "P")
  (org-agenda-todo "DONE"))

;; Organize agenda view by date and priority

(setq org-agenda-sorting-strategy
      '((agenda time-up priority-down tag-up category-keep effort-up)
        ;; (todo user-defined-up todo-state-up priority-down effort-up)
        (todo todo-state-up priority-down effort-up) 
        (tags user-defined-up)
        (search category-keep)))
(setq org-agenda-cmp-user-defined 'my/org-sort-agenda-items-user-defined)
(require 'cl)
(defun my/org-get-context (txt)
  "Find the context."
  (car (member-if
        (lambda (item) (string-match "@" item))
        (get-text-property 1 'tags txt))))

(defun my/org-compare-dates (a b)
  "Return 1 if A should go after B, -1 if B should go after A, or 0 if a = b."
  (cond
   ((and (= a 0) (= b 0)) nil)
   ((= a 0) 1)
   ((= b 0) -1)
   ((> a b) 1)
   ((< a b) -1)
   (t nil)))

(defun my/org-complete-cmp (a b)
  (let* ((state-a (or (get-text-property 1 'todo-state a) ""))
         (state-b (or (get-text-property 1 'todo-state b) "")))
    (or
     (if (member state-a org-done-keywords-for-agenda) 1)
     (if (member state-b org-done-keywords-for-agenda) -1))))

(defun my/org-date-cmp (a b)
  (let* ((sched-a (or (get-text-property 1 'org-scheduled a) 0))
         (sched-b (or (get-text-property 1 'org-scheduled b) 0))
         (deadline-a (or (get-text-property 1 'org-deadline a) 0))
         (deadline-b (or (get-text-property 1 'org-deadline b) 0)))
    (or
     (my/org-compare-dates
      (my/org-min-date sched-a deadline-a)
      (my/org-min-date sched-b deadline-b)))))

(defun my/org-min-date (a b)
  "Return the smaller of A or B, except for 0."
  (funcall (if (and (> a 0) (> b 0)) 'min 'max) a b))

(defun my/org-sort-agenda-items-user-defined (a b)
  ;; compare by deadline, then scheduled date; done tasks are listed at the very bottom
  (or
   (my/org-complete-cmp a b)
   (my/org-date-cmp a b)))

(defun my/org-context-cmp (a b)
  "Compare CONTEXT-A and CONTEXT-B."
  (let ((context-a (my/org-get-context a))
        (context-b (my/org-get-context b)))
    (cond
     ((null context-a) +1)
     ((null context-b) -1)
     ((string< context-a context-b) -1)
     ((string< context-b context-a) +1)
     (t nil))))

(defun my/org-sort-agenda-items-todo (a b)
  (or
   (org-cmp-time a b)
   (my/org-complete-cmp a b)
   (my/org-context-cmp a b)
   (my/org-date-cmp a b)
   (org-cmp-todo-state a b)
   (org-cmp-priority a b)
   (org-cmp-effort a b)))

;; Show active projects

(defun my/org-show-active-projects ()
  "Show my current projects."
  (interactive)
  (org-tags-view nil "project-inactive-someday"))

;; Archive done tasks

(defun my/org-archive-done-tasks ()
  "Archive finished or cancelled tasks."
  (interactive)
  (org-map-entries
   (lambda ()
     (org-archive-subtree)
     (setq org-map-continue-from (outline-previous-heading)))
   "TODO=\"DONE\"|TODO=\"CANCELLED\"" (if (org-before-first-heading-p) 'file 'tree)))

;; Sync with Google Calendar

;; (defun my/org-gcal-notify (title mes)
;;   (message "%s - %s" title mes))
;; (use-package org-gcal
;;   :load-path "~/elisp/org-gcal.el"
;;   :init (fset 'org-gcal-notify 'my/org-gcal-notify))

					; Blogging & Publishing

;; Nest quotes

(defun my/org-html-quote2 (block backend info)
  (when (org-export-derived-backend-p backend 'html)
  (when (string-match "\\`<div class=\"quote2\">" block)
  (setq block (replace-match "<blockquote>" t nil block))
  (string-match "</div>\n\\'" block)
  (setq block (replace-match "</blockquote>\n" t nil block))
  block)))
(eval-after-load 'ox
'(add-to-list 'org-export-filter-special-block-functions 'my/org-html-quote2))

;; Presentations

(use-package ox-reveal :disabled t)

;; Remove timestamps and section numbers

(setq org-export-with-section-numbers nil)
(setq org-html-include-timestamps nil)
(setq org-export-with-sub-superscripts nil)
(setq org-export-with-toc nil)
(setq org-html-toplevel-hlevel 2)
(setq org-export-htmlize-output-type 'css)

;; Don't wrap ASCII exports

(setq org-ascii-text-width 10000)

;; Publish without prompting

(defun my/org-html-export-trustingly ()
  (interactive)
  (let ((org-confirm-babel-evaluate nil))
    (org-html-export-to-html)))

(defun my/org-html-publish-to-html-trustingly (plist filename pub-dir)
  (let ((org-confirm-babel-evaluate nil))
    (org-html-publish-to-html plist filename pub-dir)))

;; UTF-8 checkboxes: [X] and []

(setq org-html-checkbox-type 'unicode)
(setq org-html-checkbox-types
 '((unicode (on . "<span class=\"task-done\">&#x2611;</span>")
            (off . "<span class=\"task-todo\">&#x2610;</span>")
            (trans . "<span class=\"task-in-progress\">[-]</span>"))))

					; Coding

;; Web development

;; from FAQ at http://web-mode.org/ for smartparens
(defun my/web-mode-hook ()
  (setq web-mode-enable-auto-pairing nil))

(defun my/sp-web-mode-is-code-context (id action context)
  (when (and (eq action 'insert)
             (not (or (get-text-property (point) 'part-side)
                      (get-text-property (point) 'block-side))))
    t))

(use-package web-mode
  :mode "\\.html?\\'"
  :config
  (progn
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-code-indent-offset 2)
    (setq web-mode-enable-current-element-highlight t)
    (setq web-mode-ac-sources-alist
          '(("css" . (ac-source-css-property))
            ("html" . (ac-source-words-in-buffer ac-source-abbrev)))
          )))

(setq-default tab-width 2) ; "SC: Tab width of 2 is compact and readable."
(global-set-key (kbd "RET") 'newline-and-indent) ; New lines always indented.

;; Compile Python code

(eval-after-load 'python-mode
  '(bind-key "C-c C-c" 'compile python-mode-map))

;; Eldoc - minibuffer elisp hints
(use-package "eldoc"
  :diminish eldoc-mode
  :commands turn-on-eldoc-mode
  :defer t
  :init
  (progn
  (add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
  (add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
  (add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)))

;; Pretty-print evaluation results

(bind-key "M-:" 'pp-eval-expression)

(defun sanityinc/eval-last-sexp-or-region (prefix)
  "Eval region from BEG to END if active, otherwise the last sexp."
  (interactive "P")
  (if (and (mark) (use-region-p))
      (eval-region (min (point) (mark)) (max (point) (mark)))
    (pp-eval-last-sexp prefix)))

(bind-key "C-x C-e" 'sanityinc/eval-last-sexp-or-region emacs-lisp-mode-map)

;; Show column number
(column-number-mode 1)

;; Don't show whitespace in diff, but show context

(setq vc-diff-switches '("-b" "-B" "-u"))
(setq vc-git-diff-switches nil)

;; JavaScript

(add-to-list 'auto-mode-alist '("\\.js\\'\\|\\.json\\'" . js2-mode))
(use-package js2-mode
  :config
  (bind-key "C-c C-c" 'compile js2-mode-map)
  (add-hook 'js2-mode-hook 'jasminejs-mode))

;;; Makes JavaScript code blocks easier to copy

(defvar my/javascript-test-regexp (concat (regexp-quote "/** Testing **/") "\\(.*\n\\)*")
  "Regular expression matching testing-related code to remove.
See `my/copy-javascript-region-or-buffer'.")

(defun my/copy-javascript-region-or-buffer (beg end)
  "Copy the active region or the buffer, wrapping it in script tags.
Add a comment with the current filename and skip test-related
code. See `my/javascript-test-regexp' to change the way
test-related code is detected."
  (interactive "r")
  (unless (region-active-p)
    (setq beg (point-min) end (point-max)))
  (kill-new
   (concat
    "<script type=\"text/javascript\">\n"
    (if (buffer-file-name) (concat "// " (file-name-nondirectory (buffer-file-name)) "\n") "")
    (replace-regexp-in-string
     my/javascript-test-regexp
     ""
     (buffer-substring (point-min) (point-max))
     nil)
    "\n</script>")))

;;; Makes JavaScript easy to debug

(defvar my/debug-counter 1)
(defun my/insert-or-flush-debug (&optional reset beg end)
  (interactive "pr")
  (cond
   ((= reset 4)
    (save-excursion
      (flush-lines "console.log('DEBUG: [0-9]+" (point-min) (point-max))
      (setq my/debug-counter 1)))
   ((region-active-p)
    (save-excursion
      (goto-char end)
      (insert ");\n")
      (goto-char beg)
      (insert (format "console.log('DEBUG: %d', " my/debug-counter))
      (setq my/debug-counter (1+ my/debug-counter))
      (js2-indent-line)))
   (t
    ;; Wrap the region in the debug
    (insert (format "console.log('DEBUG: %d');\n" my/debug-counter))
    (setq my/debug-counter (1+ my/debug-counter))
    (backward-char 3)
    (js2-indent-line))))

;;; Js2 config

(use-package js2-mode
  :commands js2-mode
  :init
  (progn
    (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
    (setq-default js2-basic-offset 2)
    (add-to-list 'interpreter-mode-alist (cons "node" 'js2-mode)))
  :config
  (progn
    (js2-imenu-extras-setup)
    (bind-key "C-x C-e" 'js-send-last-sexp js2-mode-map)
    (bind-key "C-M-x" 'js-send-last-sexp-and-go js2-mode-map)
    (bind-key "C-c b" 'js-send-buffer js2-mode-map)
    (bind-key "C-c d" 'my/insert-or-flush-debug js2-mode-map)
    (bind-key "C-c C-b" 'js-send-buffer-and-go js2-mode-map)
    (bind-key "C-c w" 'my/copy-javascript-region-or-buffer js2-mode-map)))

;; HTML - get rid of double spans ;; (ert "my/clean-up-spans-in-string")

(defun my/clean-up-spans-in-region (beg end)
  (interactive "r")
  (save-excursion
    (let ((changed t))
      (while changed
        (setq changed nil)
        (goto-char beg)
        (while (re-search-forward "<span>\\([^<]*\\)</span>" end t)
          (replace-match "\\1")
          (setq changed t)))
      (setq changed t)
      (while changed
        (setq changed nil)
        (goto-char beg)
        (while (re-search-forward "<span>*\\(<a[^<]+>[^<]*</a>\\)</span>" end t)
          (replace-match "\\1")
          (setq changed t))))))

(defun my/clean-up-spans-in-string (string)
  (with-temp-buffer
    (insert string)
    (my/clean-up-spans-in-region (point-min) (point-max))
    (buffer-string)))

(ert-deftest my/clean-up-spans-in-string ()
  (should (string= (my/clean-up-spans-in-string "<span><span>Hello world</span></span>")
          "Hello world"))
  (should (string= (my/clean-up-spans-in-string "<span><span><a href=\"http://example.com\">Hello another world</a></span></span>")
                   "<a href=\"http://example.com\">Hello another world</a>"))
  (should (string= (my/clean-up-spans-in-string "<span><h1>Leave alone</h1></span>") "<span><h1>Leave alone</h1></span>"))
  (should (string= (my/clean-up-spans-in-string "<span><a href=\"http://example.com\">Leave</a> alone</span>")
                   "<span><a href=\"http://example.com\">Leave</a> alone</span>")))

					; Magit

    (defun my/magit-commit-all ()
      "Publish the current file and commit all the current changes."
      (interactive)
      (my/org-publish-maybe)
      (magit-status default-directory)
      (magit-stage-all)
      (call-interactively 'magit-log-edit))

    (use-package magit
      :load-path "~/elisp/magit"
      :config
      (progn
        (when (equal system-type 'windows-nt)
          (setq magit-git-executable "c:/program files (x86)/git/bin/git.exe"))
        (setq magit-diff-options '("-b")) ; ignore whitespace
        (define-key magit-mode-map "#gg" 'endless/load-gh-pulls-mode)
        (defvar my/magit-limit-to-directory nil "Limit magit status to a specific directory.")
        (defun my/magit-status-in-directory (directory)
          "Displays magit status limited to DIRECTORY.
  Uses the current `default-directory', or prompts for a directory
  if called with a prefix argument. Sets `my/magit-limit-to-directory'
  so that it's still active even after you stage a change. Very experimental."
          (interactive (list (expand-file-name
                              (if current-prefix-arg
                                  (read-directory-name "Directory: ")
                                default-directory))))
          (setq my/magit-limit-to-directory directory)
          (magit-status directory))

        (defadvice magit-insert-untracked-files (around sacha activate)
          (if my/magit-limit-to-directory
              (magit-with-section (section untracked 'untracked "Untracked files:" t)
                (let ((files (cl-mapcan
                              (lambda (f)
                                (when (eq (aref f 0) ??) (list f)))
                              (magit-git-lines
                               "status" "--porcelain" "--" my/magit-limit-to-directory))))
                  (if (not files)
                      (setq section nil)
                    (dolist (file files)
                      (setq file (magit-decode-git-path (substring file 3)))
                      (magit-with-section (section file file)
                        (insert "\t" file "\n")))
                    (insert "\n"))))
            ad-do-it))

        (defadvice magit-insert-unstaged-changes (around sacha activate)
          (if my/magit-limit-to-directory
              (let ((magit-current-diff-range (cons 'index 'working))
                    (magit-diff-options (copy-sequence magit-diff-options)))
                (magit-git-insert-section (unstaged "Unstaged changes:")
                    #'magit-wash-raw-diffs
                  "diff-files"
                  "--" my/magit-limit-to-directory
                  ))
            ad-do-it))

        (defadvice magit-insert-staged-changes (around sacha activate)
          "Limit to `my/magit-limit-to-directory' if specified."
          (if my/magit-limit-to-directory
              (let ((no-commit (not (magit-git-success "log" "-1" "HEAD"))))
                (when (or no-commit (magit-anything-staged-p))
                  (let ((magit-current-diff-range (cons "HEAD" 'index))
                        (base (if no-commit
                                  (magit-git-string "mktree")
                                "HEAD"))
                        (magit-diff-options (append '("--cached") magit-diff-options)))
                    (magit-git-insert-section (staged "Staged changes:")
                        (apply-partially #'magit-wash-raw-diffs t)
                      "diff-index" "--cached" base "--" my/magit-limit-to-directory))))
            ad-do-it)))
      :bind (("C-x v d" . magit-status)
             ("C-x v C-d" . my/magit-status-in-directory)
             ("C-x v p" . magit-push)
             ("C-x v c" . my/magit-commit-all)))

;; From http://endlessparentheses.com/merging-github-pull-requests-from-emacs.html
(defun endless/load-gh-pulls-mode ()
  "Start `magit-gh-pulls-mode' only after a manual request."
  (interactive)
  (require 'magit-gh-pulls)
  (add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)
  (magit-gh-pulls-mode 1)
  (magit-gh-pulls-reload))

(use-package magit-gh-pulls)

;; git-messenger = shows commit message
(use-package git-messenger
  :bind (("C-x v m" . git-messenger:popup-message)))


					; Internet

;; Quick links

(setq org-link-abbrev-alist
    '(("google" . "http://www.google.com/search?q=")
("gmap" . "http://maps.google.com/maps?q=%s")
("blog" . "http://blog.wordbrewery.com/")))

;; Chrome as default browser
(setq browse-url-generic-program "google-chrome")
(setq browse-url-browser-function 'browse-url-generic)

;; Search

(use-package engine-mode
  :config
  (progn
    (defengine mail "https://mail.google.com/mail/u/0/#search/%s" :keybinding "m")
    (defengine google "http://google.com/search?q=%s" :keybinding "g")
    (defengine emacswiki "http://google.com/search?q=site:emacswiki.org+%s" :keybinding "wiki")
    (bind-key* "C-c /" 'my/engine-mode-hydra/body)
    (engine-mode)))

;; Mail

(setq gnus-select-method '(nnnil ""))
(setq gnus-secondary-select-methods
      '((nntp "news.gmane.org"))
        (nnmaildir "mail"
                   (directory "~/Maildir")
                   (directory-files nnheader-directory-files-safe) 
                   (get-new-mail nil))
        (nnimap "imap.gmail.com"
                (nnimap-address "imap.gmail.com")
                (nnimap-server-port 993)
                (nnimap-stream ssl)
                (nnimap-authenticator login)))
        ;; (nnimap "localhost" 
        ;;   (nnimap-address "localhost")
        ;;   (nnimap-stream network)
        ;;   (nnimap-user "sacha")
        ;;   (nnimap-authenticator login)
        ;;   (nnimap-authinfo-file "~/.authinfo.gpg"))))

;;; Hide HTML email

(use-package gnus
:config
(require 'mm-decode)
(setq mm-discouraged-alternatives
      '("text/html" "text/richtext")
      mm-automatic-display
      (-difference mm-automatic-display '("text/html" "text/enriched" "text/richtext"))))

;; Improved importance filtering; use ! (tick) for marking threads as interesting.

(setq gnus-use-adaptive-scoring t)
(setq gnus-default-adaptive-score-alist
     '((gnus-unread-mark)
       (gnus-ticked-mark (subject 10))
       (gnus-killed-mark (subject -5))
       (gnus-catchup-mark (subject -1))))

;; Notmuch
(setq notmuch-message-headers '("Subject" "To" "Cc" "Date" "Reply-To"))


					; System



;; Clipboard

(use-package clipmon
  :disabled t
  :init (progn (setq clipmon-action 'kill-new clipmon-timeout nil clipmon-sound nil clipmon-cursor-color nil clipmon-suffix nil) (clipmon-mode)))
