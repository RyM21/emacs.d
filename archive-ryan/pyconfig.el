;; Python mode settings

(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py$" . python-mode))
(setq py-electric-colon-active t)
(add-hook 'python-mode-hook 'autopair-mode)
(add-hook 'python-mode-hook 'yas-minor-mode)

;; Compile Python code

(eval-after-load 'python-mode
  '(bind-key "C-c C-c" 'compile python-mode-map))
