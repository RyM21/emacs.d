;; functions.el

(defun eval-last-sexp-or-region (prefix)
  "Eval region from BEG to END if active, otherwise the last sexp."
  (interactive "P")
  (if (and (mark) (use-region-p))
      (eval-region (min (point) (mark)) (max (point) (mark)))
    (pp-eval-last-sexp prefix)))

(defun org-check-misformatted-subtree ()
  "Check misformatted entries in the current buffer."
  (interactive)
  (show-all)
  (org-map-entries
   (lambda ()
     (when (and (move-beginning-of-line 2)
                (not (looking-at org-heading-regexp)))
       (if (or (and (org-get-scheduled-time (point))
                    (not (looking-at (concat "^.*" org-scheduled-regexp))))
               (and (org-get-deadline-time (point))
                    (not (looking-at (concat "^.*" org-deadline-regexp)))))
           (when (y-or-n-p "Fix this subtree? ")
             (message "Call the function again when you're done fixing this subtree.")
             (recursive-edit))
         (message "All subtrees checked."))))))

(defun org-sort-list-by-checkbox-type ()
  "Sort list items according to Checkbox state."
  (interactive)
  (org-sort-list
   nil ?f
   (lambda ()
     (if (looking-at org-list-full-item-re)
         (cdr (assoc (match-string 3)
                     '(("[X]" . 1) ("[-]" . 2) ("[ ]" . 3) (nil . 4))))
       4))))

(defun my-align-all-tables ()
  "Align all tables in a document."
  (interactive)
  (org-table-map-tables 'org-table-align 'quietly))

(require 'mm-url)

(defun my-org-insert-link ()
  "Insert org link where default description is set to html title."
  (interactive)
  (let* ((url (read-string "URL: "))
         (title (get-html-title-from-url url)))
    (org-insert-link nil url title)))

(defun get-html-title-from-url (url)
  "Return content in <title> tag."
  (let (x1 x2 (download-buffer (url-retrieve-synchronously url)))
    (save-excursion
      (set-buffer download-buffer)
      (beginning-of-buffer)
      (setq x1 (search-forward "<title>"))
      (search-forward "</title>")
      (setq x2 (search-backward "<"))
      (mm-url-decode-entities-string (buffer-substring-no-properties x1 x2)))))

;; (setq org-archive-location "%s_archive::date-tree")
(defadvice org-archive-subtree
  (around org-archive-subtree-to-data-tree activate)
  "org-archive-subtree to date-tree"
  (if
      (string= "date-tree"
               (org-extract-archive-heading
                (org-get-local-archive-location)))
      (let* ((dct (decode-time (org-current-time)))
             (y (nth 5 dct))
             (m (nth 4 dct))
             (d (nth 3 dct))
             (this-buffer (current-buffer))
             (location (org-get-local-archive-location))
             (afile (org-extract-archive-file location))
             (org-archive-location
              (format "%s::*** %04d-%02d-%02d %s" afile y m d
                      (format-time-string "%A" (encode-time 0 0 0 d m y)))))
        (message "afile=%s" afile)
        (unless afile
          (error "Invalid `org-archive-location'"))
        (save-excursion
          (switch-to-buffer (find-file-noselect afile))
          (org-datetree-find-year-create y)
          (org-datetree-find-month-create y m)
          (org-datetree-find-day-create y m d)
          (widen)
          (switch-to-buffer this-buffer))
        ad-do-it)
    ad-do-it))

(defun org-remove-redundant-tags ()
  "Remove redundant tags of headlines in current buffer.

A tag is considered redundant if it is local to a headline and
inherited by a parent headline."
  (interactive)
  (when (eq major-mode 'org-mode)
    (save-excursion
      (org-map-entries
       (lambda ()
         (let ((alltags (split-string (or (org-entry-get (point) "ALLTAGS") "") ":"))
               local inherited tag)
           (dolist (tag alltags)
             (if (get-text-property 0 'inherited tag)
                 (push tag inherited) (push tag local)))
           (dolist (tag local)
             (if (member tag inherited) (org-toggle-tag tag 'off)))))
       t nil))))

(defun org-remove-empty-property-drawers ()
  "*Remove all empty property drawers in current file."
  (interactive)
  (unless (eq major-mode 'org-mode)
    (error "You need to turn on Org mode for this function."))
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward ":PROPERTIES:" nil t)
      (save-excursion
        (org-remove-empty-drawer-at "PROPERTIES" (match-beginning 0))))))


(defvar org-agenda-group-by-property nil
  "Set this in org-mode agenda views to group tasks by property")

(defun org-group-bucket-items (prop items)
  (let ((buckets ()))
    (dolist (item items)
      (let* ((marker (get-text-property 0 'org-marker item))
             (pvalue (org-entry-get marker prop t))
             (cell (assoc pvalue buckets)))
        (if cell
            (setcdr cell (cons item (cdr cell)))
          (setq buckets (cons (cons pvalue (list item))
                              buckets)))))
    (setq buckets (mapcar (lambda (bucket)
                            (cons (car bucket)
                                  (reverse (cdr bucket))))
                          buckets))
    (sort buckets (lambda (i1 i2)
                    (string< (car i1) (car i2))))))

(defadvice org-finalize-agenda-entries (around org-group-agenda-finalize
                                               (list &optional nosort))
  "Prepare bucketed agenda entry lists"
  (if org-agenda-group-by-property
      ;; bucketed, handle appropriately
      (let ((text ""))
        (dolist (bucket (org-group-bucket-items
                         org-agenda-group-by-property
                         list))
          (let ((header (concat "Property "
                                org-agenda-group-by-property
                                " is "
                                (or (car bucket) "<nil>") ":\n")))
            (add-text-properties 0 (1- (length header))
                                 (list 'face 'org-agenda-structure)
                                 header)
            (setq text
                  (concat text header
                          ;; recursively process
                          (let ((org-agenda-group-by-property nil))
                            (org-finalize-agenda-entries
                             (cdr bucket) nosort))
                          "\n\n"))))
        (setq ad-return-value text))
    ad-do-it))
(ad-activate 'org-finalize-agenda-entries)

(setq org-adjust-tags-column t)

(defun org-adjust-tags-column-reset-tags ()
  "In org-mode buffers it will reset tag position according to
`org-tags-column'."
  (when (and
         (not (string= (buffer-name) "*Remember*"))
         (eql major-mode 'org-mode))
    (let ((b-m-p (buffer-modified-p)))
      (condition-case nil
          (save-excursion
            (goto-char (point-min))
            (command-execute 'outline-next-visible-heading)
            ;; disable (message) that org-set-tags generates
            (flet ((message (&rest ignored) nil))
              (org-set-tags 1 t))
            (set-buffer-modified-p b-m-p))
        (error nil)))))

(defun org-adjust-tags-column-now ()
  "Right-adjust `org-tags-column' value, then reset tag position."
  (set (make-local-variable 'org-tags-column)
       (- (- (window-width) (length org-ellipsis))))
  (org-adjust-tags-column-reset-tags))

(defun org-adjust-tags-column-maybe ()
  "If `org-adjust-tags-column' is set to non-nil, adjust tags."
  (when org-adjust-tags-column
    (org-adjust-tags-column-now)))

(defun org-adjust-tags-column-before-save ()
  "Tags need to be left-adjusted when saving."
  (when org-adjust-tags-column
     (setq org-tags-column 1)
     (org-adjust-tags-column-reset-tags)))

(defun org-adjust-tags-column-after-save ()
  "Revert left-adjusted tag position done by before-save hook."
  (org-adjust-tags-column-maybe)
  (set-buffer-modified-p nil))

; between invoking org-refile and displaying the prompt (which
; triggers window-configuration-change-hook) tags might adjust,
; which invalidates the org-refile cache

(defadvice org-refile (around org-refile-disable-adjust-tags)
  "Disable dynamically adjusting tags"
  (let ((org-adjust-tags-column nil))
    ad-do-it))
(ad-activate 'org-refile)

; See https://www.masteringemacs.org/article/compiling-running-scripts-emacs

(require 'python)
(defun python--add-debug-highlight ()
  "Adds a highlighter for use by `python--pdb-breakpoint-string'"
  (highlight-lines-matching-regexp "## DEBUG ##\\s-*$" 'hi-red-b))

(add-hook 'python-mode-hook 'python--add-debug-highlight)

(defvar python--pdb-breakpoint-string "import pdb; pdb.set_trace() ## DEBUG ##"
  "Python breakpoint string used by `python-insert-breakpoint'")

(defun python-insert-breakpoint ()
  "Inserts a python breakpoint using `pdb'"
  (interactive)
  (back-to-indentation)
  ;; this preserves the correct indentation in case the line above
  ;; point is a nested block
  (split-line)
  (insert python--pdb-breakpoint-string))
(define-key python-mode-map (kbd "<f5>") 'python-insert-breakpoint)

(defadvice compile (before ad-compile-smart activate)
  "Advises `compile' so it sets the argument COMINT to t
if breakpoints are present in `python-mode' files"
  (when (derived-mode-p major-mode 'python-mode)
    (save-excursion
      (save-match-data
        (goto-char (point-min))
        (if (re-search-forward (concat "^\\s-*" python--pdb-breakpoint-string "$")
                               (point-max) t)
            ;; set COMINT argument to `t'.
            (ad-set-arg 1 t))))))

(defun font-is-mono-p (font-family)
  ;; with-selected-window
  (let ((wind (selected-window))
        m-width l-width)
   (with-current-buffer "*Monospace Fonts*"
     (set-window-buffer (selected-window) (current-buffer))
     (text-scale-set 4)
     (insert (propertize "l l l l l" 'face `((:family ,font-family))))
     (goto-char (line-end-position))
     (setq l-width (car (posn-x-y (posn-at-point))))
     (newline)
     (forward-line)
     (insert (propertize "m m m m m" 'face `((:family ,font-family) italic)))
     (goto-char (line-end-position))
     (setq m-width (car (posn-x-y (posn-at-point))))
     (eq l-width m-width))))

(defun compare-monospace-fonts ()
  "Display a list of all monospace font faces."
  (interactive)
  (pop-to-buffer "*Monospace Fonts*")

  (erase-buffer)
  (dolist (font-family (font-family-list))
    (when (font-is-mono-p font-family)
      (let ((str font-family))
        (newline)
        (insert
         (propertize (concat "The quick brown fox jumps over the lazy dog 1 l; 0 O o ("
                             font-family ")\n") 'face `((:family ,font-family)))
         (propertize (concat "The quick brown fox jumps over the lazy dog 1 l; 0 O o ("
                             font-family ")\n") 'face `((:family ,font-family) italic)))))))
