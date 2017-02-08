;; Keybindings

(global-unset-key (kbd "C-c r"))  ;; Allow C-c r as personal prefix key
(global-unset-key (kbd "C-c m"))  ;; Allow C-c m as personal prefix key

(global-set-key (kbd "C-c ESC") 'save-buffers-kill-emacs)
(global-set-key (kbd "C-c m p") 'mark-paragraph)
(global-set-key (kbd "C-c m s") 'mark-end-of-sentence)
(global-set-key (kbd "M-t") 'toggle-frame-fullscreen)
(global-set-key (kbd "C-x C-c") 'org-agenda)
(global-set-key (kbd "C-<up>") 'prior)
(global-set-key (kbd "<f9> c") 'calendar)
(global-set-key (kbd "<f9> f") 'boxquote-insert-file)
(global-set-key (kbd "<f9> g") 'gnus)
(global-set-key (kbd "<f9> r") 'boxquote-region)
(global-set-key (kbd "<f9> v") 'visible-mode)
(global-set-key (kbd "C-c +") 'text-scale-increase)
(global-set-key (kbd "C-c -") 'text-scale-decrease)
(global-set-key (kbd "C-c C-f") 'backward-kill-word)
(global-set-key (kbd "C-c C-k") 'kill-region)
(global-set-key (kbd "C-c k") 'kill-region)
(global-set-key (kbd "C-c C-o") 'other-window)
(global-set-key (kbd "C-c C-w") 'kill-word)
(global-set-key (kbd "C-c q") 'delete-indentation)
(global-set-key (kbd "C-o") 'other-window)
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-k" ) 'kill-line)
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "C-x C-m") 'save-macro)
(global-set-key (kbd "C-c C-b") 'bookmark-set)
(global-set-key (kbd "C-c r c") 'customize-face)
(global-set-key (kbd "C-c r v") 'customize-variable)


;; Global

(global-set-key (kbd "C-M-s") 'section-sign-plus-nonbreaking-space)
(global-set-key (kbd "C-M-.") 'add-ellipsis)
(global-set-key (kbd "C-M--") 'insert-em-dash)

;; RST-mode
(defun my-rst-mode-config ()
  "For use in rst-mode-hook."
  (local-set-key (kbd "M-1") 'sphinx-first-level-heading)
  (local-set-key (kbd "M-2") 'sphinx-second-level-heading)
  (local-set-key (kbd "M-3") 'sphinx-third-level-heading)
  (local-set-key (kbd "C-c 8") 'add-star-emphasis) ; Surround line with single stars for emphasis
  (local-set-key (kbd "C-c *") 'add-star-emphasis) ; Surround line with single stars for emphasis
  (local-set-key (kbd "C-x -") 'make-list-item) ; Make informal list item within org structure
  (local-set-key (kbd "C-c [") 'make-checkbox) ; Create a list item starting with a checkbox
  (local-set-key (kbd "C-c r a") 'markdown-links-to-rst) ; Replace all markdown link syntax with RST
  )
;; add to hook
(eval-after-load "rst-mode"
  '(add-hook 'rst-mode-hook 'my-rst-mode-config))

(eval-after-load "rst-mode"
  '(add-hook 'rst-mode-hook 'sphinx-mode))

(eval-after-load "rst-mode"
  '(add-hook 'rst-mode-hook 'markdown-mode))

(eval-after-load "markdown-mode"
  (add-hook 'markdown-mode-hook (writeroom-mode)))

(eval-after-load "rst-mode"
  (add-hook 'rst-mode-hook (writeroom-mode)))


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

(eval-after-load "html-mode"
  '(add-hook 'html-mode-hook 'emmet-mode))

(eval-after-load "html-mode"
  '(add-hook 'html-mode-hook 'web-beautify-html))


;; Markdown Mode

(defun my-markdown-mode-config ()
  "For use in markdown-mode-hook."
  (local-set-key (kbd "C-c 8") 'add-star-emphasis) ; Surround line with single stars for emphasis
  (local-set-key (kbd "C-c *") 'add-star-emphasis) ; Surround line with single stars for emphasis
  (local-set-key (kbd "C-x -") 'make-list-item) ; Create a list item starting with a hyphen as bullet
  (local-set-key (kbd "C-c [") 'make-checkbox) ; Create a list item starting with a checkbox
  (local-set-key (kbd "C-c l") 'make-markdown-link) ; Surround line with single stars for emphasis
  (local-set-key (kbd "C-c 0") 'newlines-around-audio-tags) ; Surround line with single stars for emphasis
  )

(add-hook 'markdown-mode-hook 'my-markdown-mode-config)

(defun my-org-mode-config ()
  (org-indent-mode 1)
  (local-set-key (kbd "C-x C-h 3") 'org-insert-third-level-star-headline)
  (local-set-key (kbd "M-a") 'org-table-beginning-of-field)
  (local-set-key (kbd "C-c r t") 'org-table-create)
  (local-set-key (kbd "C-c C-k") 'kill-region)
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
  (setq org-modules '(org-gnus org-id org-habit org-irc org-protocol org-eww org-bbdb org-choose org-depend))

  )

(add-hook 'org-mode-hook 'my-org-mode-config)

;; Ledger Mode

(defun my-ledger-mode-config ()
  (local-set-key (kbd "C-c SPC") 'ledger_amount))

(add-hook 'ledger-mode-hook 'my-ledger-mode-config)


(provide 'init-keybindings)
