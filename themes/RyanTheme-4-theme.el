(deftheme RyanTheme-4
  "Created 2016-12-07.")

(custom-theme-set-variables
 'RyanTheme-4
 '(ansi-color-faces-vector [default default default italic underline success warning error])
 '(ansi-color-map [default default default italic underline success warning error nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil (foreground-color . "black") (foreground-color . "#d55e00") (foreground-color . "#009e73") (foreground-color . "#f8ec59") (foreground-color . "#0072b2") (foreground-color . "#cc79a7") (foreground-color . "#56b4e9") (foreground-color . "white") nil nil (background-color . "black") (background-color . "#d55e00") (background-color . "#009e73") (background-color . "#f8ec59") (background-color . "#0072b2") (background-color . "#cc79a7") (background-color . "#56b4e9") (background-color . "white") nil nil])
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(async-bytecomp-allowed-packages (quote (async helm helm-core helm-ls-git helm-ls-hg magit all)))
 '(auth-source-protocols (quote ((imap "imap" "imaps" "143" "993" "995") (pop3 "pop3" "pop" "pop3s" "110" "995" "993") (ssh "ssh" "22") (sftp "sftp" "115") (smtp "smtp" "25" "587"))))
 '(auth-sources (quote ("~/.authinfo.gpg" "~/.netrc"))))

(custom-theme-set-faces
 'RyanTheme-4
 '(org-agenda-column-dateline ((t (:height 1.0))))
 '(org-column ((t (:strike-through nil :underline nil :slant normal :weight normal :height 1.0 :family "arial"))))
 '(org-default ((t (:height 1.0 :family "Inconsolata"))))
 '(org-habit-alert-face ((t (:background "red" :height 1.0))))
 '(default ((t (:inherit nil :stipple nil :background "#2e3436" :foreground "#eeeeec" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 170 :width normal :foundry "nil" :family "Inconsolata"))))
 '(org-tag ((t (:weight bold :height 1.0 :family "Inconsolata"))))
 '(org-level-1 ((t (:inherit outline-1 :height 1.0 :family "Inconsolata"))))
 '(restclient-method-face ((t (:inherit font-lock-keyword-face :height 1.0))))
 '(org-document-title ((t (:inherit org-level-1 :foreground "gold" :box nil :underline nil :height 1.3 :family "Lucida Grande"))))
 '(markdown-highlight-face ((t (:stipple nil :background "Yellow" :foreground "black" :height 1.0))))
 '(minibuffer-prompt ((t (:background "yellow" :foreground "black" :weight bold))))
 '(mode-line ((t (:background "#d3d7cf" :foreground "steel blue" :family "DejaVu Sans"))))
 '(alert-low-face ((t (:background "blue" :foreground "secondaryLabelColor" :height 1.0))))
 '(ffap ((t (:inherit highlight :foreground "black" :height 1.0)))))

(provide-theme 'RyanTheme-4)
