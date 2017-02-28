(deftheme RyanTheme-3
  "Created 2016-11-16.")

(custom-theme-set-variables
 'RyanTheme-3
 '(ansi-color-faces-vector [default default default italic underline success warning error])
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(async-bytecomp-allowed-packages (quote (async helm helm-core helm-ls-git helm-ls-hg magit all)))
 '(bind-key-describe-special-forms t)
 '(company-auto-complete (quote (quote company-explicit-action-p))))

(custom-theme-set-faces
 'RyanTheme-3
 '(font-lock-comment-face ((t (:foreground "peach puff" :slant italic :height 1.0 :family "Inconsolata"))))
 '(font-lock-keyword-face ((t (:foreground "light sea green" :weight bold :height 1.0 :family "Inconsolata"))))
 '(menu ((t (:background "gray30" :foreground "snow"))))
 '(org-default ((t (:inherit (default default) :height 1.0 :family "Inconsolata"))))
 '(org-footnote ((t (:foreground "light steel blue" :family "Inconsolata"))))
 '(org-level-2 ((t (:inherit outline-2 :box nil :family "Inconsolata"))))
 '(org-priority ((t (:family "Inconsolata" :height 1.0 :inherit font-lock-keyword-face))))
 '(org-table ((t (:foreground "LightSkyBlue" :height 1.0 :family "Inconsolata"))))
 '(org-todo ((t (:foreground "yellow" :weight bold :height 1.0 :family "Inconsolata"))))
 '(outline-2 ((t (:foreground "SeaGreen1" :weight bold :height 1.0 :family "Inconsolata"))))
 '(variable-pitch ((t (:height 1.0 :family "Inconsolata"))))

 '(fringe ((((class color) (min-colors 89)) (:background "#212526"))))
 '(highlight ((((class color) (min-colors 89)) (:foreground "light steel blue" :background "#edd400"))))
 '(region ((((class color) (min-colors 89)) (:background "#555753"))))
 '(secondary-selection ((((class color) (min-colors 89)) (:background "#204a87"))))
 '(isearch ((((class color) (min-colors 89)) (:foreground "#eeeeec" :background "#ce5c00"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:background "#8f5902"))))
 '(trailing-whitespace ((((class color) (min-colors 89)) (:background "#a40000"))))
 '(mode-line ((((class color) (min-colors 89)) (:box (:line-width -1 :style released-button) :background "#d3d7cf" :foreground "light steel blue"))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:box (:line-width -1 :style released-button) :background "#555753" :foreground "#eeeeec"))))
 '(compilation-mode-line-fail ((((class color) (min-colors 89)) (:foreground "#a40000"))))
 '(compilation-mode-line-run ((((class color) (min-colors 89)) (:foreground "#ce5c00"))))
 '(compilation-mode-line-exit ((((class color) (min-colors 89)) (:foreground "#4e9a06"))))
 '(minibuffer-prompt ((((class color) (min-colors 89)) (:foreground "#b4fa70"))))
 '(escape-glyph ((((class color) (min-colors 89)) (:foreground "#c4a000"))))
 '(error ((((class color) (min-colors 89)) (:foreground "#ff4b4b"))))
 '(warning ((((class color) (min-colors 89)) (:foreground "#fcaf3e"))))
 '(success ((((class color) (min-colors 89)) (:foreground "#8ae234"))))
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "#e090d7"))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "#e9b2e3"))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:foreground "#fce94f"))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "#e9b96e"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "#8cc4ff"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "#fcaf3e"))))
 '(link ((((class color) (min-colors 89)) (:underline t :foreground "#729fcf"))))
 '(link-visited ((((class color) (min-colors 89)) (:underline t :foreground "#3465a4"))))
 '(message-header-name ((((class color) (min-colors 89)) (:foreground "#729fcf"))))
 '(message-header-cc ((((class color) (min-colors 89)) (:foreground "#c4a000"))))
 '(message-header-other ((((class color) (min-colors 89)) (:foreground "#c17d11"))))
 '(message-header-subject ((((class color) (min-colors 89)) (:foreground "#8ae234"))))
 '(message-header-to ((((class color) (min-colors 89)) (:foreground "#edd400"))))
 '(message-cited-text ((((class color) (min-colors 89)) (:foreground "#8ae234"))))
 '(message-separator ((((class color) (min-colors 89)) (:foreground "#e090d7"))))
 '(smerge-refined-changed ((((class color) (min-colors 89)) (:background "#204a87"))))
 '(org-level-8 ((t (:inherit default :foreground "#eeeeec"))))
 '(org-level-7 ((t (:inherit default :foreground "#eeeeec"))))
 '(org-level-6 ((t (:inherit default :foreground "#eeeeec"))))
 '(org-level-5 ((t (:inherit default :foreground "#eeeeec"))))
 '(org-level-4 ((t (:inherit default :foreground "#eeeeec"))))
 '(org-level-3 ((t (:inherit default :foreground "#eeeeec"))))
 '(org-level-1 ((t (:inherit default :foreground "#eeeeec" :font "Inconsolata"))))
 '(org-document-title ((t (:inherit org-level-1 :height 2.0 :underline nil ))))
 '(org-block ((t (:foreground "#eeeeec" :background "light steel blue" :box nil))))
 '(org-block-begin-line ((t (:foreground "#eeeeec" :background "#204a87"))))
 '(org-block-end-line ((t (:foreground "#eeeeec" :background "#204a87"))))
 '(org-checkbox ((t (:foreground "#000000" :background "#93a1a1" :box (:line-width -3 :color "#93a1a1" :style "released-button")))))
 '(org-headline-done ((t (:strike-through t))))
 '(org-done ((t (:strike-through t))))
 '(org-tag ((t (:slant oblique :height 0.5 :family "Inconsolata" :foreground "#3465a4"))))
 '(default ((t (:background nil :family "Inconsolata")))))

(provide-theme 'RyanTheme-3)