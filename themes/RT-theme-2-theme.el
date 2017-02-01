(deftheme RyanTheme
  "Created 2016-12-07.")

 '(custom-safe-themes (quote 
 	(
 	"0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" 
 	"274f57c102d705032310528387f29899d4517874ce117e883f911fbe1ca40216" 
 	"2b7d55fde75d5636ed0d5bf33d1b06ac75162f06816abe00522692e7daddc9ec" 
 	"302f1bc5566b43154c9a74dc005c8cf8825676ba33f530e5b2a0d1021ba853f7" 
 	"3448e3f5d01b39ce75962328a5310438e4a19e76e4b691c21c8e04ca318a5f62" 
 	"3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa"
 	"3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" 
 	"3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6"
 	"3cf91d9c1be28557420ba4a01c4bc8bb2df88c130d97a03119e402a6ab9945e1" 
 	"3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" 
 	"3e0501bcd8ddff8540cb0cca35e8b5a2a8032bb23cc751c5fc76ce1955b24134" 
 	"3ebca96bcd12fa6fd8f121a59494bd13bfbd8d2fc0b6e50ba47c956bd41d3a88" 
 	"4ed3f16b96ce5f1c2888fa91f75ff06968d4192727c3702b18ef64d8b67cb3b6" 
 	"57d5808140fc4cea0163d0ae6dcca68742c1a5818c7d1f5438ae9e89044cbc22" 
 	"58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" 
 	"6f93a85ad90270312070f835bbcac826bc6461364c533a4f8baa24889074dffc" 
 	"72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" 
 	"842acc0dc3e5474a5a9ba562055e4b1162c75bb212ef6b5ef64af54e698c88e4" 
 	"8c9daa0fc55bce4bc601238d1ef6e5643cefaddaedda7abefc9b3a6c14690a8a" 
 	"9a50d643095d39795f65f1f3a3c883ac90e2b0c9b6694b2d60cdf0e93d4036e8" 
 	"9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1"
 	"a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" 
 	"b0c472fe3bf10a76a3d9e1931a1114ac4d09c64c1f9eb4909c7a550f3cefd2ce" 
 	"b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" 
 	"b7fa45bc53815be2e0617781f0a2959f7cc75dddbfaf82b5c66063107534fefd" 
 	"bb749a38c5cb7d13b60fa7fc40db7eced3d00aa93654d150b9627cabd2d9b361" 
 	"c5030b74d8e48f7eaa2d66dcee03cac725c8c8c325659985c8a6fc1a289dc3ad" 
 	"cb718d79c238b4bc4e205ba4185a7a6c517ba80e8479dc801ff16ee4fba5c542" 
 	"dfecb95c0cd4e1818de8b4f407324320a4cba556ed47f0ac6c2b4057e6efc68f" 
 	"e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4"
 	"e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" 
 	"e9d883c778fa82fbaa59820a18bb6371843dc9b9d84b5f7b232856f15c3b1843"
    "21314b743033724f22291fa481bdf60b2525a2b113406cec0340f7ba5064dd5e"
    "c5030b74d8e48f7eaa2d66dcee03cac725c8c8c325659985c8a6fc1a289dc3ad" 
    "f817554d6e967c27099934c66540672d65a451387884e555d5a4f730ae3a1a90" 

 	default)))

(custom-theme-set-variables
 '(ansi-color-faces-vector [default default default italic underline success warning error])
 '(ansi-color-map [default default default italic underline success warning error nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil (foreground-color . "black") (foreground-color . "#d55e00") (foreground-color . "#009e73") (foreground-color . "#f8ec59") (foreground-color . "#0072b2") (foreground-color . "#cc79a7") (foreground-color . "#56b4e9") (foreground-color . "white") nil nil (background-color . "black") (background-color . "#d55e00") (background-color . "#009e73") (background-color . "#f8ec59") (background-color . "#0072b2") (background-color . "#cc79a7") (background-color . "#56b4e9") (background-color . "white") nil nil])
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(async-bytecomp-allowed-packages (quote (async helm helm-core helm-ls-git helm-ls-hg magit all)))
 '(auth-source-protocols (quote ((imap "imap" "imaps" "143" "993" "995") (pop3 "pop3" "pop" "pop3s" "110" "995" "993") (ssh "ssh" "22") (sftp "sftp" "115") (smtp "smtp" "25" "587"))))
 '(auth-sources (quote ("~/.authinfo.gpg" "~/.netrc")))
 '(bind-key-describe-special-forms t)
 '(browse-url-chrome-program "chrome")
 '(company-auto-complete (quote (quote company-explicit-action-p)))
 '(custom-theme-directory "~/.emacs.d/themes/")
 '(custom-theme-allow-multiple-selections t))

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
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "#e090d7"))))
 '(font-lock-comment-face ((t (:foreground "peach puff" :slant italic :height 1.0 :family "Inconsolata"))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "#e9b2e3"))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:foreground "#fce94f"))))
 '(font-lock-keyword-face ((((class color) (min-colors 89)) (:foreground "#b4fa70"))))
 '(font-lock-keyword-face ((t (:foreground "light sea green" :weight bold :height 1.0 :family "Inconsolata"))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "#e9b96e"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "#8cc4ff"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "#fcaf3e"))))
 '(fringe ((((class color) (min-colors 89)) (:background "#212526"))))
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
 '(highlight ((((class color) (min-colors 89)) (:foreground "#2e3436" :background "#edd400"))))
 '(highlight ((((class color) (min-colors 89)) (:foreground "light steel blue" :background "#edd400"))))
 '(isearch ((((class color) (min-colors 89)) (:foreground "#eeeeec" :background "#ce5c00"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:background "#8f5902"))))
 '(link ((((class color) (min-colors 89)) (:underline t :foreground "#729fcf"))))
 '(link-visited ((((class color) (min-colors 89)) (:underline t :foreground "#3465a4"))))
 '(markdown-highlight-face ((t (:stipple nil :background "Yellow" :foreground "black" :height 1.0))))
 '(menu ((t (:background "gray30" :foreground "snow"))))
 '(message-cited-text ((((class color) (min-colors 89)) (:foreground "#8ae234"))))
 '(message-header-cc ((((class color) (min-colors 89)) (:foreground "#c4a000"))))
 '(message-header-name ((((class color) (min-colors 89)) (:foreground "#729fcf"))))
 '(message-header-other ((((class color) (min-colors 89)) (:foreground "#c17d11"))))
 '(message-header-subject ((((class color) (min-colors 89)) (:foreground "#8ae234"))))
 '(message-header-to ((((class color) (min-colors 89)) (:foreground "#edd400"))))
 '(message-separator ((((class color) (min-colors 89)) (:foreground "#e090d7"))))
 '(minibuffer-prompt ((t (:background "yellow" :foreground "black" :weight bold))))
 '(mode-line ((t (:background "#d3d7cf" :foreground "steel blue" :family "DejaVu Sans"))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:box (:line-width -1 :style released-button) :background "#555753" :foreground "#eeeeec"))))
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
 '(region ((((class color) (min-colors 89)) (:background "#555753"))))
 '(restclient-method-face ((t (:inherit font-lock-keyword-face :height 1.0))))
 '(secondary-selection ((((class color) (min-colors 89)) (:background "#204a87"))))
 '(semantic-unmatched-syntax-face ((((class color) (min-colors 89)) (:underline "#ef2929"))))
 '(smerge-refined-changed ((((class color) (min-colors 89)) (:background "#204a87"))))
 '(success ((((class color) (min-colors 89)) (:foreground "#8ae234"))))
 '(trailing-whitespace ((((class color) (min-colors 89)) (:background "#a40000"))))
 '(variable-pitch ((t (:height 1.0 :family "Inconsolata"))))
 '(warning ((((class color) (min-colors 89)) (:foreground "#fcaf3e")))))

(provide-theme 'RyanTheme)