(deftheme RyanTheme
  "Ryan's Customizations: Updated 2016-12-13")

(custom-theme-set-variables
 'RyanTheme 
 '(ansi-color-faces-vector [default default default italic underline success warning error])
 '(ansi-color-map [default default default italic underline success warning error nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil (foreground-color . "black") (foreground-color . "#d55e00") (foreground-color . "#009e73") (foreground-color . "#f8ec59") (foreground-color . "#0072b2") (foreground-color . "#cc79a7") (foreground-color . "#56b4e9") (foreground-color . "white") nil nil (background-color . "black") (background-color . "#d55e00") (background-color . "#009e73") (background-color . "#f8ec59") (background-color . "#0072b2") (background-color . "#cc79a7") (background-color . "#56b4e9") (background-color . "white") nil nil])
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 )

;; faces

(custom-theme-set-faces
 'RyanTheme
 '(cursor ((((class color) (min-colors 89)) (:background "#fce94f"))))
 '(elfeed-search-title-face ((t (:foreground "light blue" :height 1.0))))
 '(font-lock-comment-face ((t (:foreground "peach puff" :slant italic :height 1.0 :family "Inconsolata"))))
 '(org-agenda-column-dateline ((t (:height 1.0))))
 '(alert-low-face ((t (:background "blue" :foreground "secondaryLabelColor" :height 1.0))))
 '(compilation-mode-line-exit ((((class color) (min-colors 89)) (:foreground "#4e9a06"))))
 '(compilation-mode-line-fail ((((class color) (min-colors 89)) (:foreground "#a40000"))))
 '(compilation-mode-line-run ((((class color) (min-colors 89)) (:foreground "#ce5c00"))))
 '(cursor ((((class color) (min-colors 89)) (:background "#fce94f"))))

 '(default ((((class color) (min-colors 4096)) (:background "#2e3436" :foreground "#eeeeec" :family "Inconsolata")) (((class color) (min-colors 256)) (:background "#222" :foreground "#eeeeec")) (((class color) (min-colors 89)) (:background "black" :foreground "#eeeeec"))))
 '(default ((t (:box nil :inherit nil :stipple nil :background "#2e3436" :foreground "#eeeeec" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 170 :width normal :foundry "nil" :family "Inconsolata"))))
 '(elfeed-search-title-face ((t (:foreground "light blue" :height 1.0))))
 '(error ((((class color) (min-colors 89)) (:foreground "#ff4b4b"))))
 '(escape-glyph ((((class color) (min-colors 89)) (:foreground "#c4a000"))))
 '(ffap ((t (:inherit highlight :foreground "black" :height 1.0))))
 '(fringe ((((class color) (min-colors 89)) (:background "#212526"))))
 '(highlight ((((class color) (min-colors 89)) (:foreground "#2e3436" :background "#edd400"))))
 '(highlight ((((class color) (min-colors 89)) (:foreground "light steel blue" :background "#edd400"))))
 '(isearch ((((class color) (min-colors 89)) (:foreground "#eeeeec" :background "#ce5c00"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:background "#8f5902"))))
 '(link ((((class color) (min-colors 89)) (:underline t :foreground "#729fcf"))))
 '(link-visited ((((class color) (min-colors 89)) (:underline t :foreground "#3465a4"))))
 '(markdown-highlight-face ((t (:stipple nil :background "Yellow" :foreground "black" :height 1.0))))
 '(menu ((t (:background "gray30" :foreground "snow"))))
 '(minibuffer-prompt ((t (:background "yellow" :foreground "black" :weight bold))))
 '(mode-line ((t (:background "#d3d7cf" :foreground "steel blue" :family "DejaVu Sans"))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:box (:line-width -1 :style released-button) :background "#555753" :foreground "#eeeeec"))))
 
 '(region ((((class color) (min-colors 89)) (:background "#555753"))))
 '(restclient-method-face ((t (:inherit font-lock-keyword-face :height 1.0))))
 '(secondary-selection ((((class color) (min-colors 89)) (:background "#204a87"))))
 '(semantic-unmatched-syntax-face ((((class color) (min-colors 89)) (:underline "#ef2929"))))
 '(smerge-refined-changed ((((class color) (min-colors 89)) (:background "#204a87"))))
 '(success ((((class color) (min-colors 89)) (:foreground "#8ae234"))))
 '(trailing-whitespace ((((class color) (min-colors 89)) (:background "#a40000"))))
 '(variable-pitch ((t (:height 1.0 :family "Inconsolata"))))
 '(warning ((((class color) (min-colors 89)) (:foreground "#fcaf3e"))))
 
 ;; font-lock
 
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "#e090d7"))))
 '(font-lock-comment-face ((t (:foreground "peach puff" :slant italic :height 1.0 :family "Inconsolata"))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "#e9b2e3"))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:foreground "#fce94f"))))
 '(font-lock-keyword-face ((((class color) (min-colors 89)) (:foreground "#b4fa70"))))
 '(font-lock-keyword-face ((t (:foreground "light sea green" :weight bold :height 1.0 :family "Inconsolata"))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "#e9b96e"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "#8cc4ff"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "#fcaf3e"))))
 
 ;; gnus + messages
 '(gnus-group-mail-1 ((((class color) (min-colors 89)) (:foreground "#e090d7"))))
 '(gnus-group-mail-2 ((((class color) (min-colors 89)) (:foreground "#729fcf"))))
 '(gnus-group-mail-3 ((((class color) (min-colors 89)) (:foreground "#8ae234"))))
 '(gnus-group-mail-low ((((class color) (min-colors 89)) (:foreground "#edd400"))))
 '(gnus-group-news-1 ((((class color) (min-colors 89)) (:foreground "#e090d7"))))
 '(gnus-group-news-2 ((((class color) (min-colors 89)) (:foreground "#729fcf"))))
 '(gnus-group-news-3 ((((class color) (min-colors 89)) (:foreground "#8ae234"))))
 '(gnus-group-news-4 ((((class color) (min-colors 89)) (:foreground "#e9b2e3"))))
 '(gnus-group-news-5 ((((class color) (min-colors 89)) (:foreground "#fcaf3e"))))
 '(gnus-group-news-low ((((class color) (min-colors 89)) (:foreground "#edd400"))))
 '(message-cited-text ((((class color) (min-colors 89)) (:foreground "#8ae234"))))
 '(message-header-cc ((((class color) (min-colors 89)) (:foreground "#c4a000"))))
 '(message-header-name ((((class color) (min-colors 89)) (:foreground "#729fcf"))))
 '(message-header-other ((((class color) (min-colors 89)) (:foreground "#c17d11"))))
 '(message-header-subject ((((class color) (min-colors 89)) (:foreground "#8ae234"))))
 '(message-header-to ((((class color) (min-colors 89)) (:foreground "#edd400"))))
 '(message-separator ((((class color) (min-colors 89)) (:foreground "#e090d7"))))
 
 ;; org-mode and outline
 
 '(org-agenda-column-dateline ((t (:height 1.0))))
 '(org-agenda-filter-category ((t (:height 1.0 :inherit mode-line))))
 '(org-block ((t (:foreground "#eeeeec" :background "light steel blue" :box nil))))
 '(org-block-begin-line ((t (:foreground "#eeeeec" :background "#204a87"))))
 '(org-block-end-line ((t (:foreground "#eeeeec" :background "#204a87"))))
 '(org-checkbox ((t (:foreground "#000000" :background "#93a1a1" :box (:line-width -3 :color "#93a1a1" :style "released-button")))))
 '(org-column ((t (:strike-through nil :underline nil :slant normal :weight normal :height 1.0 :family "Inconsolata"))))
 '(org-default ((t (:inherit default :box nil :height 1.0 :family "Inconsolata"))))
 '(org-document-title ((t (:inherit org-level-1 :family "Lucida Grande" :height 1.2 :underline nil :box nil :foreground "gold" :inherit org-level-1))))
 '(org-done ((t (:strike-through t))))
 '(org-footnote ((t (:foreground "light steel blue" :family "Inconsolata"))))
 '(org-habit-alert-face ((t (:background "red" :height 1.0))))
 '(org-headline-done ((t (:strike-through t))))
 '(org-level-1 ((t (:inherit default :foreground "#eeeeec" :font "Inconsolata"))))
 '(org-level-1 ((t (:inherit outline-1 :box nil :height 1.0 :family "Inconsolata"))))
 '(org-level-2 ((t (:inherit outline-2 :box nil :height 1.0 :family "Inconsolata"))))
 '(org-level-3 ((t (:inherit default :foreground "#eeeeec"))))
 '(org-level-4 ((t (:inherit default :foreground "#eeeeec"))))
 '(org-level-5 ((t (:inherit default :foreground "#eeeeec"))))
 '(org-level-6 ((t (:inherit default :foreground "#eeeeec"))))
 '(org-level-7 ((t (:inherit default :foreground "#eeeeec"))))
 '(org-level-8 ((t (:inherit default :foreground "#eeeeec"))))
 '(org-priority ((t (:inherit font-lock-keyword-face :height 1.0 :family "Inconsolata"))))
 '(org-table ((t (:foreground "LightSkyBlue" :height 1.0 :family "Inconsolata"))))
 '(org-tag ((t (:slant oblique :height 0.7 :family "Inconsolata" :foreground "#3465a4"))))
 '(org-todo ((t (:foreground "yellow" :weight bold :height 1.0 :family "Inconsolata"))))
 '(outline-1 ((t (:foreground "SeaGreen1" :weight bold :height 1.0 :family "Inconsolata"))))
 '(outline-2 ((t (:foreground "SeaGreen1" :weight bold :height 1.0 :family "Inconsolata"))))
 
 ) ;; end face definitions


;;; ###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))


(provide-theme 'RyanTheme)
