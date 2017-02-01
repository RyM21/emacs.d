(setq sentence-end-double-space nil)
(setq default-major-mode 'org-mode)
(setq global-auto-complete-mode t)
(setq auto-fill-mode nil)
(setq global-visual-line-mode t)
 
(defun sp-web-mode-is-code-context (id action context)
  (when (and (eq action 'insert)
             (not (or (get-text-property (point) 'part-side)
                      (get-text-property (point) 'block-side))))
    t))

(setq company-global-modes
      '(not magit-status-mode
            help-mode))
(add-hook 'after-init-hook 'global-company-mode)

(setq savehist-additional-variables nil)
(setq savehist-autosave-interval 150)
