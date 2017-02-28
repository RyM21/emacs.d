(deftheme RyanTheme "Created 2017-01-16.")


(custom-theme-set-variables 'RyanTheme '(custom-safe-themes (quote ("8d2ddcc3185a6c75c8ea71f444885b5d320fa02e55306ff2c7b23620297e4ce3"
                                                                    "72856a8bfcc269b918f4c80d09e50bf2c249977b618b2a013cc6884751026b07"
                                                                    "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a"
                                                                    "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328"
                                                                    "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4"
                                                                    default)))
                            '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59"
                                                       "#0072b2" "#cc79a7" "#56b4e9" "white"])
                            '(ansi-color-faces-vector [default default default italic underline
                                                        success warning error])
                            '(ansi-color-map [default default default italic underline success
                                               warning error nil nil nil nil nil nil nil nil nil nil
                                               nil nil nil nil nil nil nil nil nil nil nil nil
                                               (foreground-color . "black")
                                               (foreground-color . "#d55e00")
                                               (foreground-color . "#009e73")
                                               (foreground-color . "#f8ec59")
                                               (foreground-color . "#0072b2")
                                               (foreground-color . "#cc79a7")
                                               (foreground-color . "#56b4e9")
                                               (foreground-color . "white") nil nil
                                               (background-color . "black")
                                               (background-color . "#d55e00")
                                               (background-color . "#009e73")
                                               (background-color . "#f8ec59")
                                               (background-color . "#0072b2")
                                               (background-color . "#cc79a7")
                                               (background-color . "#56b4e9")
                                               (background-color . "white") nil nil])
                            '(ansi-color-map [default default default italic underline success
                                               warning error nil nil nil nil nil nil nil nil nil nil
                                               nil nil nil nil nil nil nil nil nil nil nil nil
                                               (foreground-color . "black")
                                               (foreground-color . "#d55e00")
                                               (foreground-color . "#009e73")
                                               (foreground-color . "#f8ec59")
                                               (foreground-color . "#0072b2")
                                               (foreground-color . "#cc79a7")
                                               (foreground-color . "#56b4e9")
                                               (foreground-color . "white") nil nil
                                               (background-color . "black")
                                               (background-color . "#d55e00")
                                               (background-color . "#009e73")
                                               (background-color . "#f8ec59")
                                               (background-color . "#0072b2")
                                               (background-color . "#cc79a7")
                                               (background-color . "#56b4e9")
                                               (background-color . "white") nil nil] t)
                            '(diary-entry-marker (quote (quote (quote
                                                                font-lock-variable-name-face))))
                            '(fci-rule-color "#eee8d5")
                            '(gnus-logo-colors (quote (quote (quote ("#528d8d" "#c0c0c0")))) t)
                            '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
                            '(highlight-tail-colors (quote (("#3C3D37" . 0)
                                                            ("#679A01" . 20)
                                                            ("#4BBEAE" . 30)
                                                            ("#1DB4D0" . 50)
                                                            ("#9A8F21" . 60)
                                                            ("#A75B00" . 70)
                                                            ("#F309DF" . 85)
                                                            ("#3C3D37" . 100)))))

(custom-theme-set-faces 'RyanTheme '(alert-low-face ((t
                                                      (:background "blue"
                                                                   :foreground "secondaryLabelColor"
                                                                   :height 1.0))))
                        '(anzu-mode-line ((((class color)
                                            (min-colors 89))
                                           (:foreground "#de935f"))))
                        '(anzu-replace-highlight ((((class color)
                                                    (min-colors 89))
                                                   (:inherit isearch-lazy-highlight-face))))
                        '(anzu-replace-to ((((class color)
                                             (min-colors 89))
                                            (:inherit isearch))))
                        '(bold ((t
                                 (:bold t
                                        :weight bold))))
                        '(bold-italic ((t
                                        (:bold t
                                               :italic t
                                               :slant italic
                                               :weight bold))))
                        '(border ((t
                                   (:background "gold"
                                                :foreground "black"))))
                        '(buffer-menu-buffer ((t
                                               (:bold t
                                                      :weight bold))))
                        '(button ((t
                                   (:underline t
                                               :box (:line-width 2
                                                                 :color "grey"
                                                                 :style released-button)
                                               :foreground "black"
                                               :background "grey"
                                               :weight bold))))
                                        ;'(cl-lib-highlight-deprecated ((t nil)))
                        '(comint-highlight-input ((t
                                                   (:bold t
                                                          :weight bold))))
                        '(comint-highlight-prompt ((t
                                                    (:foreground "cyan1"))))
                        '(company-echo-common ((((class color)
                                                 (min-colors 89))
                                                (:inherit company-echo
                                                          :foreground "#cc6666"))))
                        '(company-preview ((t
                                            (:background "#73c936"))))
                        '(company-preview-common ((t
                                                   (:foreground "#73c936"
                                                                :background "#101010"))))
                                        ; '(company-preview-search ((((class color) (min-colors 89)) (:inherit company-preview :foreground "#81a2be"))))
                        '(company-scrollbar-bg ((t
                                                 (:background "#453d41"))))
                        '(company-scrollbar-fg ((t
                                                 (:background "#101010"))))
                        '(company-tooltip ((t
                                            (:foreground "#e4e4ef"
                                                         :background "#282828"))))
                        '(company-tooltip-annotation ((t
                                                       (:foreground "#cc8c3c"
                                                                    :background "#282828"))))
                        '(company-tooltip-annotation-selection ((t
                                                                 (:foreground "#cc8c3c"
                                                                              :background "#101010"))))
                        '(company-tooltip-common ((t
                                                   (:foreground "#73c936"))))
                        '(company-tooltip-common-selection ((t
                                                             (:foreground "#73c936"))))
                        '(company-tooltip-mouse ((t
                                                  (:background "#101010"))))
                                        ; '(company-tooltip-search ((((class color) (min-colors 89)) (:inherit company-tooltip :foreground "#81a2be"))))
                        '(company-tooltip-selection ((t
                                                      (:foreground "#e4e4ef"
                                                                   :background "#101010"))))
                                        ;'(compilation-column-number ((((class color) (min-colors 89)) (:foreground "LightGreen"))))
                                        ; '(compilation-error ((((class color) (min-colors 89)) (:foreground "Red1"))))
                                        ; '(compilation-info ((((class color) (min-colors 89)) (:weight normal :foreground "LightSkyBlue"))))
                                        ; '(compilation-line-number ((((class color) (min-colors 89)) (:foreground "LightGreen"))))
                                        ; '(compilation-mode-line-exit ((((class color) (min-colors 89)) (:foreground "#4e9a06"))))
                                        ; '(compilation-mode-line-fail ((((class color) (min-colors 89)) (:foreground "#a40000"))))
                                        ; '(compilation-mode-line-run ((((class color) (min-colors 89)) (:foreground "#ce5c00"))))
                                        ; '(compilation-warning ((t (:bold t :foreground "Orange" :weight bold))))
                                        ; '(completions-common-part ((t (:width normal :weight normal :slant normal :foreground "WhiteSmoke" :background "black" :height 81))))
                        '(completions-first-difference ((t
                                                         (:bold t
                                                                :weight bold))))
                        '(cursor ((((class color)
                                    (min-colors 89))
                                   (:background "#cc6666"))))
                        '(custom-button ((t
                                          (:box (:line-width 1
                                                             :style released-button)
                                                :background "grey50"
                                                :foreground "black"))))
                        '(custom-button-mouse ((t
                                                (:inherit (quote custom-button)
                                                          :background "grey60"))))
                        '(custom-button-pressed ((t
                                                  (:inherit (quote custom-button)
                                                            :box (:style pressed-button)))))
                        '(custom-button-pressed-unraised ((((type graphic)) :inherit
                                                           custom-button-unraised
                                                           :underline t)))
                        '(custom-button-unraised ((t
                                                   (:background "grey50"
                                                                :foreground "black"))))
                        '(custom-comment ((((type graphic)) :foreground "#9f9f9f")))
                        '(custom-documentation ((t
                                                 (:italic t))))
                        '(custom-face-tag ((t
                                            (:bold t
                                                   :foreground "#edd400"
                                                   :height 1.1))))
                                        ;'(custom-group-subtitle ((((type graphic)) :inherit alect-title-3)))
                        '(custom-group-tag ((t
                                             (:bold t
                                                    :foreground "#edd400"
                                                    :height 1.3))))
                        '(custom-group-tag-1 ((((type graphic)) :inherit alect-title-2)))
                        '(custom-link ((((type graphic)) :inherit link)))
                        '(custom-state ((t
                                         (:foreground "#73c936"))))
                        '(custom-variable-button ((t
                                                   (:inherit (quote custom-button)))))
                        '(custom-variable-tag ((t
                                                (:bold t
                                                       :foreground "#edd400"
                                                       :height 1.1))))
                        '(custom-visibility ((((type graphic)) :inherit link
                                              :height 0.8)))
                        '(default ((t
                                    (:stipple nil
                                              :background "#2e3436"
                                              :foreground "#eeeeec"
                                              :inverse-video nil
                                              :box nil
                                              :strike-through nil
                                              :overline nil
                                              :underline nil
                                              :slant normal
                                              :weight normal
                                              :height 135
                                              :width normal
                                              :foundry "PfEd"
                                              :family "Inconsolata"))))
                        '(diary ((t
                                  (:foreground "IndianRed"))))
                        '(diff-added ((t
                                       (:foreground "Green"))))
                        '(diff-changed ((((class color)
                                          (min-colors 89))
                                         (:foreground "#b294bb"))))
                        '(diff-context ((((class color)
                                          (min-colors 89))
                                         (:foreground "seashell4"))))
                        '(diff-file-header ((((class color)
                                              (min-colors 89))
                                             (:background "grey60"))))
                                        ;'(diff-function ((((class color) (min-colors 89)) (:inherit diff-header))))
                        '(diff-header ((((class color)
                                         (min-colors 89))
                                        (:background "grey45"))))
                        '(diff-hl-change ((((class color)
                                            (min-colors 89))
                                           (:background "#81a2be"))))
                        '(diff-hl-delete ((((class color)
                                            (min-colors 89))
                                           (:background "#de935f"))))
                        '(diff-hl-insert ((((class color)
                                            (min-colors 89))
                                           (:background "#b5bd68"))))
                                        ;'(diff-hunk-header ((((class color) (min-colors 89)) (:inherit diff-header))))
                                        ;'(diff-index ((((class color) (min-colors 89)) (:inherit diff-file-header))))
                        '(diff-indicator-added ((((class color)
                                                  (min-colors 89))
                                                 (:foreground "white"
                                                              :background "darkolivegreen"))))
                        '(diff-indicator-changed ((((class color)
                                                    (min-colors 89))
                                                   (:foreground "white"
                                                                :background "dodgerblue4"))))
                        '(diff-indicator-removed ((((class color)
                                                    (min-colors 89))
                                                   (:foreground "white"
                                                                :background "indianred4"))))
                        '(diff-nonexistent ((t
                                             (:bold t
                                                    :weight bold
                                                    :background "Black"
                                                    :foreground "Wheat1"))))
                                        ;'(diff-refine-added ((((type graphic)) :inherit diff-added :underline t)))
                                        ;'(diff-refine-removed ((((type graphic)) :inherit diff-removed :underline t)))
                        '(diff-removed ((t
                                         (:foreground "salmon1"))))
                        '(dired-directory ((t
                                            (:foreground "#96a6c8"
                                                         :weight bold))))
                        '(dired-flagged ((((type graphic)) :foreground "#ea3838")))
                                        ;'(dired-header ((((type graphic)) :inherit alect-title)))
                                        ;'(dired-ignored ((t (:foreground "#95a99f" :inherit unspecified))))
                        '(dired-mark ((((type graphic)) :foreground "#00aff5")))
                        '(dired-marked ((((class color)
                                          (min-colors 89))
                                         (:background "dodgerblue3"
                                                      :foreground "white"))))
                        '(dired-perm-write ((((type graphic)) :foreground "#32cd32")))
                                        ;'(dired-symlink ((((type graphic)) :inherit font-lock-constant-face)))
                                        ;'(dired-warning ((((type graphic)) :inherit font-lock-warning-face :background "#222222")))
                        '(diredp-compressed-file-suffix ((((class color)
                                                           (min-colors 89))
                                                          (:foreground "#81a2be"))))
                        '(diredp-date-time ((((class color)
                                              (min-colors 89))
                                             (:foreground "#81a2be"))))
                                        ; '(diredp-deletion ((((class color) (min-colors 89)) (:inherit error :inverse-video t))))
                                        ;'(diredp-deletion-file-name ((((class color) (min-colors 89)) (:inherit error))))
                        '(diredp-dir-heading ((((class color)
                                                (min-colors 89))
                                               (:foreground "#b5bd68"
                                                            :weight bold))))
                        '(diredp-dir-name ((((class color)
                                             (min-colors 89))
                                            (:foreground "#8abeb7"))))
                        '(diredp-dir-priv ((((class color)
                                             (min-colors 89))
                                            (:foreground "#8abeb7"
                                                         :background nil))))
                        '(diredp-exec-priv ((((class color)
                                              (min-colors 89))
                                             (:foreground "#de935f"
                                                          :background nil))))
                        '(diredp-executable-tag ((((class color)
                                                   (min-colors 89))
                                                  (:foreground "#cc6666"
                                                               :background nil))))
                        '(diredp-file-name ((((class color)
                                              (min-colors 89))
                                             (:foreground "#f0c674"))))
                        '(diredp-file-suffix ((((class color)
                                                (min-colors 89))
                                               (:foreground "#b5bd68"))))
                        '(diredp-flag-mark ((((class color)
                                              (min-colors 89))
                                             (:foreground "#b5bd68"
                                                          :inverse-video t))))
                        '(diredp-flag-mark-line ((((class color)
                                                   (min-colors 89))
                                                  (:background nil
                                                               :inherit highlight))))
                        '(diredp-ignored-file-name ((((class color)
                                                      (min-colors 89))
                                                     (:foreground "#969896"))))
                        '(diredp-link-priv ((((class color)
                                              (min-colors 89))
                                             (:background nil
                                                          :foreground "#b294bb"))))
                        '(diredp-mode-line-flagged ((((class color)
                                                      (min-colors 89))
                                                     (:foreground "#cc6666"))))
                        '(diredp-mode-line-marked ((((class color)
                                                     (min-colors 89))
                                                    (:foreground "#b5bd68"))))
                        '(diredp-no-priv ((((class color)
                                            (min-colors 89))
                                           (:background nil))))
                        '(diredp-number ((((class color)
                                           (min-colors 89))
                                          (:foreground "#f0c674"))))
                        '(diredp-other-priv ((((class color)
                                               (min-colors 89))
                                              (:background nil
                                                           :foreground "#b294bb"))))
                        '(diredp-rare-priv ((((class color)
                                              (min-colors 89))
                                             (:foreground "#cc6666"
                                                          :background nil))))
                        '(diredp-read-priv ((((class color)
                                              (min-colors 89))
                                             (:foreground "#b5bd68"
                                                          :background nil))))
                        '(diredp-symlink ((((class color)
                                            (min-colors 89))
                                           (:foreground "#b294bb"))))
                        '(diredp-write-priv ((((class color)
                                               (min-colors 89))
                                              (:foreground "#f0c674"
                                                           :background nil))))
                        '(eldoc-highlight-function-argument ((t
                                                              (:bold t
                                                                     :weight bold))))
                        '(epa-field-body ((t
                                           (:italic t
                                                    :foreground "turquoise"
                                                    :slant italic))))
                        '(epa-field-name ((t
                                           (:bold t
                                                  :foreground "PaleTurquoise"
                                                  :weight bold))))
                        '(epa-mark ((t
                                     (:bold t
                                            :foreground "orange"
                                            :weight bold))))
                        '(epa-string ((t
                                       (:foreground "lightyellow"))))
                        '(epa-validity-disabled ((t
                                                  (:italic t
                                                           :slant italic))))
                        '(epa-validity-high ((t
                                              (:bold t
                                                     :foreground "PaleTurquoise"
                                                     :weight bold))))
                        '(epa-validity-low ((t
                                             (:italic t
                                                      :slant italic))))
                        '(epa-validity-medium ((t
                                                (:italic t
                                                         :foreground "PaleTurquoise"
                                                         :slant italic))))
                        '(error
                          ((((class color)
                             (min-colors 89))
                            (:foreground "#ff4b4b"))))
                        '(escape-glyph ((((class color)
                                          (min-colors 89))
                                         (:foreground "#c4a000"))))
                                        ;'(ffap ((t (:inherit highlight :foreground "black" :height 1.0))))
                        '(file-name-shadow ((t
                                             (:foreground "grey70"))))
                        '(fixed-pitch ((t
                                        (:inherit (default)))))
                        '(flycheck-error ((((class color)
                                            (min-colors 89))
                                           (:underline (:style wave
                                                               :color "#cc6666")))))
                        '(flycheck-fringe-error ((((class color)
                                                   (min-colors 89))
                                                  (:foreground "#cc6666"))))
                        '(flycheck-fringe-info ((((class color)
                                                  (min-colors 89))
                                                 (:foreground "#8abeb7"))))
                        '(flycheck-fringe-warning ((((class color)
                                                     (min-colors 89))
                                                    (:foreground "#de935f"))))
                        '(flycheck-info ((((class color)
                                           (min-colors 89))
                                          (:underline (:style wave
                                                              :color "#8abeb7")))))
                        '(flycheck-warning ((((class color)
                                              (min-colors 89))
                                             (:underline (:style wave
                                                                 :color "#de935f")))))
                        '(font-lock-builtin-face ((((class color)
                                                    (min-colors 89))
                                                   (:foreground "#e090d7"))))
                        '(font-lock-comment-delimiter-face ((((class color)
                                                              (min-colors 89))
                                                             (:foreground "gray50"))))
                        '(font-lock-comment-face ((t
                                                   (:foreground "peach puff"
                                                                :slant italic
                                                                :height 1.0
                                                                :family "Inconsolata"))))
                        '(font-lock-constant-face ((((class color)
                                                     (min-colors 89))
                                                    (:foreground "#e9b2e3"))))
                        '(font-lock-doc-face ((((class color)
                                                (min-colors 89))
                                               (:foreground "moccasin"))))
                        '(font-lock-function-name-face ((((class color)
                                                          (min-colors 89))
                                                         (:foreground "#fce94f"))))
                        '(font-lock-keyword-face ((t
                                                   (:foreground "light sea green"
                                                                :weight bold
                                                                :height 1.0
                                                                :family "Inconsolata"))))
                        '(font-lock-negation-char-face ((t
                                                         (:foreground "#6ac214"))))
                        '(font-lock-preprocessor-face ((((class color)
                                                         (min-colors 89))
                                                        (:foreground "gold"))))
                        '(font-lock-regexp-grouping-backslash ((((class color)
                                                                 (min-colors 89))
                                                                (:weight bold))))
                        '(font-lock-regexp-grouping-construct ((((class color)
                                                                 (min-colors 89))
                                                                (:weight bold))))
                        '(font-lock-string-face ((((class color)
                                                   (min-colors 89))
                                                  (:foreground "#e9b96e"))))
                        '(font-lock-type-face ((((class color)
                                                 (min-colors 89))
                                                (:foreground "#8cc4ff"))))
                        '(font-lock-variable-name-face ((((class color)
                                                          (min-colors 89))
                                                         (:foreground "#fcaf3e"))))
                        '(font-lock-warning-face ((t
                                                   (:bold t
                                                          :foreground "Red"
                                                          :weight bold))))
                        '(font-lock-warning-face ((t
                                                   (:foreground "red"
                                                                :weight bold))))
                        '(fringe ((((class color)
                                    (min-colors 89))
                                   (:background "#212526"))))
                        '(gnus-group-mail-1 ((((class color)
                                               (min-colors 89))
                                              (:foreground "#e090d7"))))
                        '(gnus-group-mail-1-empty ((t
                                                    (:foreground "#249900"))))
                        '(gnus-group-mail-2 ((((class color)
                                               (min-colors 89))
                                              (:foreground "#729fcf"))))
                        '(gnus-group-mail-2-empty ((t
                                                    (:foreground "#389900"))))
                        '(gnus-group-mail-3 ((((class color)
                                               (min-colors 89))
                                              (:foreground "#8ae234"))))
                        '(gnus-group-mail-3-empty ((t
                                                    (:foreground "#4D9900"))))
                        '(gnus-group-mail-low ((((class color)
                                                 (min-colors 89))
                                                (:foreground "#edd400"))))
                        '(gnus-group-mail-low-empty ((t
                                                      (:foreground "aquamarine2"))))
                        '(gnus-group-news-1 ((((class color)
                                               (min-colors 89))
                                              (:foreground "#e090d7"))))
                        '(gnus-group-news-1-empty ((t
                                                    (:foreground "#524DFF"))))
                        '(gnus-group-news-2 ((((class color)
                                               (min-colors 89))
                                              (:foreground "#729fcf"))))
                        '(gnus-group-news-2-empty ((t
                                                    (:foreground "#4D58FF"))))
                        '(gnus-group-news-3 ((((class color)
                                               (min-colors 89))
                                              (:foreground "#8ae234"))))
                        '(gnus-group-news-3-empty ((t
                                                    (:foreground "#4D6AFF"))))
                        '(gnus-group-news-4 ((((class color)
                                               (min-colors 89))
                                              (:foreground "#e9b2e3"))))
                        '(gnus-group-news-4-empty ((t
                                                    (:foreground "#4D7CFF"))))
                        '(gnus-group-news-5 ((((class color)
                                               (min-colors 89))
                                              (:foreground "#fcaf3e"))))
                        '(gnus-group-news-5-empty ((t
                                                    (:foreground "#4D8EFF"))))
                        '(gnus-group-news-6 ((t
                                              (:bold t
                                                     :foreground "#80BBFF"
                                                     :weight bold))))
                        '(gnus-group-news-6-empty ((t
                                                    (:foreground "#4DA0FF"))))
                        '(gnus-group-news-low ((((class color)
                                                 (min-colors 89))
                                                (:foreground "#edd400"))))
                        '(gnus-group-news-low-empty ((t
                                                      (:foreground "DarkTurquoise"))))
                        '(gnus-splash ((t
                                        (:foreground "#cccccc"))))
                        '(gnus-summary-cancelled ((t
                                                   (:background "black"
                                                                :foreground "yellow"))))
                        '(gnus-summary-high-ancient ((t
                                                      (:bold t
                                                             :foreground "CornflowerBlue"
                                                             :weight bold))))
                        '(gnus-summary-high-read ((t
                                                   (:bold t
                                                          :foreground "grey60"
                                                          :weight bold))))
                        '(gnus-summary-high-ticked ((t
                                                     (:bold t
                                                            :foreground "RosyBrown"
                                                            :weight bold))))
                        '(gnus-summary-high-undownloaded ((t
                                                           (:bold t
                                                                  :foreground "ivory3"
                                                                  :weight bold))))
                        '(gnus-summary-high-unread ((t
                                                     (:bold t
                                                            :foreground "PaleGreen"
                                                            :weight bold))))
                        '(gnus-summary-low-ancient ((t
                                                     (:italic t
                                                              :foreground "LightSteelBlue"
                                                              :slant italic))))
                        '(gnus-summary-low-read ((t
                                                  (:italic t
                                                           :foreground "LightSlateGray"
                                                           :slant italic))))
                        '(gnus-summary-low-ticked ((t
                                                    (:italic t
                                                             :foreground "red"
                                                             :slant italic))))
                        '(gnus-summary-low-undownloaded ((t
                                                          (:italic t
                                                                   :foreground "grey75"
                                                                   :slant italic
                                                                   :weight normal))))
                        '(gnus-summary-low-unread ((t
                                                    (:italic t
                                                             :foreground "MediumSeaGreen"
                                                             :slant italic))))
                        '(gnus-summary-normal-ancient ((t
                                                        (:foreground "SkyBlue"))))
                        '(gnus-summary-normal-read ((t
                                                     (:foreground "grey50"))))
                        '(gnus-summary-normal-ticked ((t
                                                       (:foreground "LightSalmon"))))
                        '(gnus-summary-normal-undownloaded ((t
                                                             (:foreground "LightGray"
                                                                          :weight normal))))
                        '(gnus-summary-normal-unread ((t
                                                       (:foreground "YellowGreen"))))
                        '(gnus-summary-selected ((t
                                                  (:underline t
                                                              :foreground "LemonChiffon"))))
                        '(guide-key/highlight-command-face ((((class color)
                                                              (min-colors 89))
                                                             (:foreground "#b5bd68"))))
                        '(guide-key/key-face ((((class color)
                                                (min-colors 89))
                                               (:foreground "#969896"))))
                        '(guide-key/prefix-command-face ((((class color)
                                                           (min-colors 89))
                                                          (:foreground "#81a2be"))))
                                        ; '(header-line ((t (:box (:line-width -1 :color "grey20" :style released-button) :background "grey20" :foreground "grey90" :height 0.9))))
                        '(help-argument-name ((t
                                               (:italic t
                                                        :slant italic))))
                        '(highlight ((((class color)
                                       (min-colors 89))
                                      (:foreground "#2e3436"
                                                   :background "#edd400"))))
                                        ;'(highlight-symbol-face ((((class color) (min-colors 89)) (:inherit highlight))))
                        '(holiday ((t
                                    (:background "chocolate4"))))
                        '(homoglyph ((((class color)
                                       (min-colors 89))
                                      (:foreground "#c4a000"))))
                        '(info-header-node ((((class color)
                                              (min-colors 89))
                                             (:foreground "DeepSkyBlue1"))))
                        '(info-header-xref ((((class color)
                                              (min-colors 89))
                                             (:foreground "SeaGreen2"))))
                        '(info-menu-header ((((class color)
                                              (min-colors 89))
                                             (:family "helv"
                                                      :weight bold))))
                        '(info-menu-star ((((type graphic)) :foreground "#ea3838")))
                        '(info-node ((((class color)
                                       (min-colors 89))
                                      (:foreground "DeepSkyBlue1"))))
                        '(Info-quoted ((((type graphic)) :foreground "#f6f0e1"
                                        :weight bold)))
                        '(info-title-1 ((((type graphic)) :inherit alect-color-level-1
                                         :height 1.5
                                         :weight bold)))
                        '(info-title-2 ((((type graphic)) :inherit alect-color-level-2
                                         :height 1.4
                                         :weight bold)))
                        '(info-title-3 ((((type graphic)) :inherit alect-color-level-3
                                         :height 1.3
                                         :weight bold)))
                        '(info-title-4 ((((type graphic)) :inherit alect-color-level-4
                                         :height 1.2
                                         :weight bold)))
                        '(info-xref ((((class color)
                                       (min-colors 89))
                                      (:foreground "SeaGreen2"))))
                        '(info-xref-visited ((t
                                              (:foreground "#ad7fa8"))))
                        '(isearch ((((class color)
                                     (min-colors 89))
                                    (:foreground "#eeeeec"
                                                 :background "#ce5c00"))))
                        '(isearch-fail ((t
                                         (:background "red4"))))
                        '(italic ((t
                                   (:italic t))))
                        '(ivy-action ((((class color)
                                        (min-colors 89))
                                       (:foreground "#b294bb"))))
                        '(ivy-confirm-face ((((class color)
                                              (min-colors 89))
                                             (:foreground "#b5bd68"))))
                        '(ivy-current-match ((t
                                              (:inherit highlight))))
                        '(ivy-match-required-face ((((class color)
                                                     (min-colors 89))
                                                    (:inherit ido-indicator))))
                        '(ivy-minibuffer-match-face-1 ((((class color)
                                                         (min-colors 89))
                                                        (:foreground "#8abeb7"))))
                        '(ivy-minibuffer-match-face-2 ((t
                                                        (:background "gold3"
                                                                     :weight bold))))
                        '(ivy-minibuffer-match-face-3 ((((class color)
                                                         (min-colors 89))
                                                        (:foreground "#81a2be"))))
                        '(ivy-minibuffer-match-face-4 ((t
                                                        (:background "forest green"
                                                                     :weight bold))))
                        '(ivy-remote ((t
                                       (:foreground "deep sky blue"
                                                    :slant italic))))
                                        ;'(ivy-subdir ((((class color) (min-colors 89)) (:inherit ido-subdir))))
                                        ;'(ivy-virtual ((((class color) (min-colors 89)) (:inherit ido-virtual))))
                        '(lazy-highlight ((((class color)
                                            (min-colors 89))
                                           (:background "#8f5902"))))
                        '(link ((((class color)
                                  (min-colors 89))
                                 (:underline t
                                             :foreground "#729fcf"))))
                        '(link-visited ((((class color)
                                          (min-colors 89))
                                         (:underline t
                                                     :foreground "#3465a4"))))
                        '(match ((((class color)
                                   (min-colors 89))
                                  (:background "Deepred4"))))
                        '(menu ((t
                                 (:background "gray30"
                                              :foreground "snow"))))
                        '(message-cited-text ((((class color)
                                                (min-colors 89))
                                               (:foreground "#8ae234"))))
                        '(message-header-cc ((((class color)
                                               (min-colors 89))
                                              (:foreground "#c4a000"))))
                        '(message-header-name ((((class color)
                                                 (min-colors 89))
                                                (:foreground "#729fcf"))))
                        '(message-header-newsgroups ((t
                                                      (:italic t
                                                               :bold t
                                                               :foreground "papaya whip"
                                                               :slant italic
                                                               :weight bold))))
                        '(message-header-other ((((class color)
                                                  (min-colors 89))
                                                 (:foreground "#c17d11"))))
                        '(message-header-subject ((((class color)
                                                    (min-colors 89))
                                                   (:foreground "#8ae234"))))
                        '(message-header-to ((((class color)
                                               (min-colors 89))
                                              (:foreground "#edd400"))))
                        '(message-header-xheader ((t
                                                   (:foreground "DeepSkyBlue1"))))
                        '(message-mml ((t
                                        (:foreground "MediumSpringGreen"))))
                        '(message-separator ((((class color)
                                               (min-colors 89))
                                              (:foreground "#e090d7"))))
                        '(minibuffer-prompt ((((class color)
                                               (min-colors 89))
                                              (:foreground "#81a2be"))))
                                        ; '(mmm-code-submode-face ((((class color) (min-colors 89)) (:background "#373b41"))))
                                        ; '(mmm-comment-submode-face ((((class color) (min-colors 89)) (:inherit font-lock-comment-face))))
                                        ; '(mmm-output-submode-face ((((class color) (min-colors 89)) (:background "#373b41"))))
                        '(mode-line ((t
                                      (:background "#d3d7cf"
                                                   :foreground "steel blue"
                                                   :family "DejaVu Sans"))))
                        '(mode-line-buffer-id ((((class color)
                                                 (min-colors 89))
                                                (:weight bold
                                                         :background nil
                                                         :foreground "blue4"))))
                        '(mode-line-emphasis ((t
                                               (:bold t
                                                      :weight bold))))
                        '(mode-line-highlight ((t
                                                (:box (:line-width 2
                                                                   :color "grey40"
                                                                   :style released-button
                                                                   :height 0.9)))))
                        '(mode-line-inactive ((((class color)
                                                (min-colors 89))
                                               (:box (:line-width -1
                                                                  :style released-button)
                                                     :background "#555753"
                                                     :foreground "#eeeeec"))))
                        '(mouse ((t
                                  (:background "OrangeRed"))))
                        '(next-error ((t
                                       (:background "blue3"))))
                        '(nobreak-space ((t
                                          (:foreground "cyan"
                                                       :underline t))))
                        '(org-agenda-calendar-sexp ((t nil)))
                        '(org-agenda-clocking ((t
                                                (:inherit nil))))
                        '(org-agenda-column-dateline ((t
                                                       (:height 1.0))))
                        '(org-agenda-date ((t
                                            (:foreground "LightSkyBlue"))))
                        '(org-agenda-date-today ((t
                                                  (:weight bold
                                                           :foreground "#edd400"))))
                        '(org-agenda-date-weekend ((t
                                                    (:bold t
                                                           :foreground "LightSkyBlue"
                                                           :weight bold))))
                        '(org-agenda-dimmed-todo-face ((((class color)
                                                         (min-colors 89))
                                                        (:foreground "#969896"))))
                        '(org-agenda-done ((t
                                            (:foreground "#269926"))))
                        '(org-agenda-filter-category ((t
                                                       (:height 1.0
                                                                :inherit mode-line))))
                        '(org-agenda-restriction-lock ((t
                                                        (:background "skyblue4"))))
                        '(org-agenda-structure ((t
                                                 (:foreground "LightSkyBlue"))))
                        '(org-archived ((t
                                         (:foreground "grey70"))))
                        '(org-block ((t
                                      (:foreground "#eeeeec"
                                                   :background "light steel blue"
                                                   :box nil))))
                        '(org-block-begin-line ((t
                                                 (:foreground "#eeeeec"
                                                              :background "#204a87"))))
                        '(org-block-end-line ((t
                                               (:foreground "#eeeeec"
                                                            :background "#204a87"))))
                        '(org-checkbox ((t
                                         (:foreground "#000000"
                                                      :background "#93a1a1"
                                                      :box (:line-width -3
                                                                        :color "#93a1a1"
                                                                        :style "released-button")))))
                        '(org-code ((t
                                     (:foreground "grey70"))))
                        '(org-column ((t
                                       (:strike-through nil
                                                        :underline nil
                                                        :slant normal
                                                        :weight normal
                                                        :height 1.0
                                                        :family "Inconsolata"))))
                        '(org-column-title ((t
                                             (:bold t
                                                    :background "grey30"
                                                    :underline t
                                                    :weight bold))))
                        '(org-date ((t
                                     (:foreground "Cyan"
                                                  :underline t))))
                        '(org-date-selected ((((type graphic)) :inherit alect-selected-item)))
                        '(org-document-info ((((type graphic)) :foreground "#fa5151")))
                        '(org-document-info-keyword ((((type graphic)) :foreground "#e5c900")))
                        '(org-document-title ((t
                                               (:inherit org-level-1
                                                         :family "Inconsolata"
                                                         :height 1.1
                                                         :underline nil
                                                         :box nil
                                                         :foreground "gold"
                                                         :inherit org-level-1))))
                        '(org-done ((t
                                     (:strike-through t))))
                        '(org-drawer ((t
                                       (:foreground "LightSkyBlue"))))
                        '(org-ellipsis ((t
                                         (:foreground "LightGoldenrod"
                                                      :underline t))))
                        '(org-footnote ((t
                                         (:foreground "light steel blue"
                                                      :family "Inconsolata"))))
                        '(org-formula ((t
                                        (:foreground "chocolate1"))))
                        '(org-headline-done ((t
                                              (:strike-through t))))
                        '(org-hide ((t
                                     (:foreground "#2e3436"))))
                        '(org-level-1 ((t
                                        (:inherit outline-1
                                                  :box nil
                                                  :height 1.0
                                                  :family "Inconsolata"))))
                        '(org-level-2 ((t
                                        (:inherit outline-2
                                                  :box nil
                                                  :height 1.0
                                                  :family "Inconsolata"))))
                        '(org-level-3 ((t
                                        (:inherit outline-3
                                                  :box nil
                                                  :height 1.0
                                                  :family "Inconsolata"))))
                        '(org-level-4 ((t
                                        (:inherit outline-4
                                                  :box nil
                                                  :height 1.0
                                                  :family "Inconsolata"))))
                        '(org-level-5 ((t
                                        (:inherit outline-5
                                                  :box nil
                                                  :height 1.0
                                                  :family "Inconsolata"))))
                        '(org-level-6 ((t
                                        (:inherit outline-6
                                                  :box nil
                                                  :height 1.0
                                                  :family "Inconsolata"))))
                        '(org-level-7 ((t
                                        (:inherit outline-7
                                                  :box nil
                                                  :height 1.0
                                                  :family "Inconsolata"))))
                        '(org-level-8 ((t
                                        (:inherit outline-8
                                                  :box nil
                                                  :height 1.0
                                                  :family "Inconsolata"))))
                        '(org-link ((t
                                     (:foreground "Cyan"
                                                  :underline t))))
                        '(org-mode-line-clock ((t
                                                (:foreground "DarkGreen"
                                                             :underline t))))
                        '(org-mode-line-clock-overrun ((((type graphic)) :foreground "#ea3838"
                                                        :weight bold)))
                        '(org-priority ((t
                                         (:inherit font-lock-keyword-face
                                                   :height 1.0
                                                   :family "Inconsolata"))))
                        '(org-quote ((t
                                      (:inherit org-block
                                                :slant italic))))
                        '(org-scheduled ((((type graphic)) :foreground "#8ce096")))
                        '(org-scheduled-previously ((t
                                                     (:foreground "chocolate1"))))
                        '(org-scheduled-today ((t
                                                (:foreground "PaleGreen"))))
                        '(org-sexp-date ((t
                                          (:foreground "Cyan"))))
                        '(org-special-keyword ((t
                                                (:foreground "LightSalmon"))))
                        '(org-table ((t
                                      (:foreground "LightSkyBlue"
                                                   :height 1.0
                                                   :family "Inconsolata"))))
                        '(org-tag ((t
                                    (:slant oblique
                                            :height 0.7
                                            :family "Inconsolata"
                                            :foreground "#3465a4"))))
                        '(org-target ((t
                                       (:underline t))))
                        '(org-time-grid ((t
                                          (:foreground "LightGoldenrod"))))
                        '(org-todo ((t
                                     (:foreground "yellow"
                                                  :weight bold
                                                  :height 1.0
                                                  :family "Inconsolata"))))
                        '(org-upcoming-deadline ((t
                                                  (:foreground "chocolate1"))))
                        '(org-verbatim ((t
                                         (:foreground "grey70"
                                                      :underline t))))
                        '(org-verse ((t
                                      (:inherit org-block
                                                :slant italic))))
                        '(org-warning ((t
                                        (:foreground "red"
                                                     :weight bold))))
                        '(outline-1 ((t
                                      (:foreground "SeaGreen1"
                                                   :weight bold
                                                   :height 1.0
                                                   :family "Inconsolata"))))
                        '(outline-2 ((t
                                      (:foreground "SeaGreen1"
                                                   :weight bold
                                                   :height 1.0
                                                   :family "Inconsolata"))))
                        '(outline-3 ((((class color)
                                       (min-colors 89))
                                      (:foreground "LightSteelBlue1"))))
                        '(outline-4 ((((class color)
                                       (min-colors 89))
                                      (:foreground "turquoise2"))))
                        '(outline-5 ((((class color)
                                       (min-colors 89))
                                      (:foreground "aquamarine1"))))
                        '(outline-6 ((t
                                      (:foreground "Aquamarine"))))
                        '(outline-7 ((t
                                      (:foreground "LightSteelBlue"))))
                        '(outline-8 ((t
                                      (:foreground "LightSalmon"))))
                        '(query-replace ((t
                                          (:foreground "brown4"
                                                       :background "palevioletred2"))))
                        '(rainbow-delimiters-depth-1-face ((((class color)
                                                             (min-colors 89))
                                                            (:foreground "#c5c8c6"))))
                        '(rainbow-delimiters-depth-2-face ((((class color)
                                                             (min-colors 89))
                                                            (:foreground "#8abeb7"))))
                        '(rainbow-delimiters-depth-3-face ((((class color)
                                                             (min-colors 89))
                                                            (:foreground "#f0c674"))))
                        '(rainbow-delimiters-depth-4-face ((((class color)
                                                             (min-colors 89))
                                                            (:foreground "#b5bd68"))))
                        '(rainbow-delimiters-depth-5-face ((((class color)
                                                             (min-colors 89))
                                                            (:foreground "#81a2be"))))
                        '(rainbow-delimiters-depth-6-face ((((class color)
                                                             (min-colors 89))
                                                            (:foreground "#c5c8c6"))))
                        '(rainbow-delimiters-depth-7-face ((((class color)
                                                             (min-colors 89))
                                                            (:foreground "#8abeb7"))))
                        '(rainbow-delimiters-depth-8-face ((((class color)
                                                             (min-colors 89))
                                                            (:foreground "#f0c674"))))
                        '(rainbow-delimiters-depth-9-face ((((class color)
                                                             (min-colors 89))
                                                            (:foreground "#b5bd68"))))
                        '(rainbow-delimiters-unmatched-face ((((class color)
                                                               (min-colors 89))
                                                              (:foreground "#cc6666"))))
                        '(region ((((class color)
                                    (min-colors 89))
                                   (:background "#555753"))))
                        '(scroll-bar ((t
                                       (:background "grey75"
                                                    :foreground "WhiteSmoke"))))
                        '(secondary-selection ((((class color)
                                                 (min-colors 89))
                                                (:background "#204a87"))))
                        '(shadow ((t
                                   (:foreground "grey70"))))
                        '(show-paren-match ((t
                                             (:background "steelblue3"))))
                        '(show-paren-mismatch ((t
                                                (:background "purple"
                                                             :foreground "white"))))
                        '(success ((((class color)
                                     (min-colors 89))
                                    (:foreground "#8ae234"))))
                        '(table-cell ((t
                                       (:background "blue1"
                                                    :foreground "gray90"))))
                        '(tool-bar ((t
                                     (:background "grey75"
                                                  :foreground "black"
                                                  :box (:line-width 1
                                                                    :style released-button)))))
                        '(tooltip ((t
                                    (:background "lightyellow"
                                                 :foreground "black"))))
                        '(trailing-whitespace ((((class color)
                                                 (min-colors 89))
                                                (:background "#a40000"))))
                        '(underline ((t
                                      (:underline t))))
                        '(undo-tree-visualizer-active-branch-face ((((class color)
                                                                     (min-colors 89))
                                                                    (:foreground "#cc6666"))))
                        '(undo-tree-visualizer-current-face ((((class color)
                                                               (min-colors 89))
                                                              (:foreground "#b5bd68"
                                                                           :weight bold))))
                        '(undo-tree-visualizer-default-face ((((class color)
                                                               (min-colors 89))
                                                              (:foreground "#c5c8c6"))))
                        '(undo-tree-visualizer-register-face ((((class color)
                                                                (min-colors 89))
                                                               (:foreground "#f0c674"))))
                        '(variable-pitch ((t
                                           (:height 1.0
                                                    :family "Inconsolata"))))
                        '(vertical-border ((t
                                            (:background "dim gray"))))
                                        ;'(warning ((((class color) (min-colors 89)) (:foreground "#fcaf3e"))))
                                        ; '(warning ((t (:foreground "red"))))
                        '(which-func ((t
                                       (:foreground "Blue1"))))
                        '(whitespace-empty ((((class color)
                                              (min-colors 89))
                                             (:foreground "#de935f"
                                                          :background "#f0c674"))))
                        '(whitespace-hspace ((((class color)
                                               (min-colors 89))
                                              (:background "#373b41"
                                                           :foreground "#969896"))))
                        '(whitespace-indentation ((((class color)
                                                    (min-colors 89))
                                                   (:background "#373b41"
                                                                :foreground "#969896"))))
                        '(whitespace-line ((((class color)
                                             (min-colors 89))
                                            (:background "#373b41"
                                                         :foreground "#de935f"))))
                        '(whitespace-newline ((((class color)
                                                (min-colors 89))
                                               (:background "#373b41"
                                                            :foreground "#969896"))))
                        '(whitespace-space ((((class color)
                                              (min-colors 89))
                                             (:background "#373b41"
                                                          :foreground "#969896"))))
                        '(whitespace-space-after-tab ((((class color)
                                                        (min-colors 89))
                                                       (:background "#373b41"
                                                                    :foregrou nd
                                                                    "#f0c674"))))
                        '(whitespace-space-before-tab ((((class color)
                                                         (min-colors 89))
                                                        (:background "#373b41"
                                                                     :foreground "
                                                                     #de935f"))))
                        '(whitespace-tab ((((class color)
                                            (min-colors 89))
                                           (:background "#373b41"
                                                        :foreground "#969
                                                        896"))))
                        '(whitespace-trailing ((((class color)
                                                 (min-colors 89))
                                                (:background "#373b41"
                                                             :foreground "#de935f"))))
                        '(widget-button ((t
                                          (:bold t
                                                 :weight bold
                                                 :box (:line-width 2
                                                                   :style released-button)))))
                        '(widget-button-pressed ((t
                                                  (:foreground "red1"
                                                               :background "lightgrey"
                                                               :box (:line-width 2
                                                                                 :style
                                                                                 pressed-button)))))
                        '(widget-documentation ((t
                                                 (:foreground "lime green"))))
                        '(widget-field ((t
                                         (:background "dim gray"))))
                        '(widget-inactive ((t
                                            (:foreground "grey70"))))
                        '(widget-single-line-field ((t
                                                     (:background "dim gray"))))
                        '(window-divider ((((type graphic)) :foreground "#099709")))
                        '(window-divider-first-pixel ((((type graphic)) :foreground "#3cb370")))
                        '(window-divider-last-pixel ((((type graphic)) :inherit
                                                      window-divider-first-pixel))))



(provide-theme 'RyanTheme)
