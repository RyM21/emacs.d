
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


(add-hook 'text-mode-hook 'variable-pitch-mode)
(column-number-mode 1)
;;(defalias 'exit 'save-buffers-kill-emacs)
;; Show recent files

(require 'recentf)
(setq recentf-max-saved-items 200
      recentf-max-menu-items 15)
(recentf-mode)
(display-time-mode +1)
(fset 'yes-or-no-p 'y-or-n-p)
(global-font-lock-mode +1)
(line-number-mode 1)
(menu-bar-mode -1)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'upcase-region 'disabled nil)
(scroll-bar-mode -1)
;;(setq auto-save-default t)
;;(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
;;(setq auto-save-folder "~/.emacs.d/auto-save-list/")
;;(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq bind-key-describe-special-forms t)
(setq blink-cursor-mode nil)
(setq company-auto-complete (quote (quote company-explicit-action-p)))
(setq compilation-scroll-output t)
(setq create-lockfiles nil)
(setq custom-enabled-themes (quote (tsdh-dark)))
(setq dabbrev-case-fold-search nil)
(add-hook 'after-init-hook
          'single-font-size)
(set-face-attribute 'default nil
                    :family "DejaVu Sans Mono"
                    :height 170
                    :weight 'normal
                    :width 'normal)          
(when (functionp 'set-fontset-font)
  (set-fontset-font "fontset-default"
                    'unicode
                    (font-spec :family "DejaVu Sans Mono"
                               :width 'normal
                               :size 15.5
                               :weight 'normal)))
(setq debug-on-error t)
(setq default-tab-width 4)
;;(setq delete-auto-save-files t)
(setq dired-dwim-target t)
(setq display-time-24hr-format t)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq fill-column 120)
(setq find-file-visit-truename t)
(setq flycheck-global-modes (quote (elisp-mode)))
(setq font-lock-comment-face '(:foreground "peach puff" :slant italic :height 1.0))
(setq frame-background-mode 'dark)
(setq global-linum-mode nil)
(setq global-visual-fill-column-mode t)
(setq icomplete-mode t)
(setq icomplete-show-matches-on-no-input t)
;;(setq imenu-auto-rescan t)
(setq inhibit-default-init t)
(setq inhibit-splash-screen t)
(setq inhibit-startup-screen t)
(setq initial-buffer-choice "~/notes/todo.org")
(setq initial-major-mode 'org-mode)
(setq initial-scratch-message nil)
;(setq keyboard-coding-system (quote windows-1252-unix))
(setq line-number-mode nil)
(setq linum '(:inherit (shadow default) :width ultra-condensed))
(setq linum-delay t)
(setq linum-eager nil)
(setq max-specpdl-size 1335)
(setq menu '(:background "gray30" :foreground "snow"))
(setq minibuffer-auto-raise nil)
(setq overflow-newline-into-fringe nil)
(setq package-enable-at-startup nil)
(setq prefer-coding-system 'utf-8)
(setq read-file-name-completion-ignore-case t)
(setq scalable-fonts-allowed t)
(setq selection-coding-system (quote utf-8))
(setq send-mail-function (quote smtpmail-send-it))
(setq set-mark-command-repeat-pop t)
(setq show-paren-style 'expression)
(setq smtpmail-smtp-server "smtp.office365.com")
(setq smtpmail-smtp-service 587)
(setq text-quoting-style 'grave)
(setq uniquify-buffer-name-style 'forward)
(setq user-full-name "Ryan McCarl")
(setq variable-pitch '(:height 3 :family "Sans Serif"))
(setq visible-bell nil)
(setq visual-fill-column-width nil)
(setq w32-allow-system-shell t)
(setq warning-minimum-level :error)
(setq warning-minimum-log-level :debug)
(setq word-wrap t)
(setq-default backup-inhibited t)
(setq-default echo-keystrokes 0)
(setq-default gc-cons-threshold (* gc-cons-threshold 10))
(setq-default horizontal-scroll-bar nil)
(setq-default indent-tabs-mode nil)
(setq-default make-pointer-invisible t)
(setq-default use-dialog-box nil)
(show-paren-mode 1)
(toggle-frame-maximized)
(transient-mark-mode +1)

;; run server
(require 'server)
(unless (server-running-p)
  (server-start))

;; which-func
(which-function-mode +1)
(setq-default which-func-unknown "")

;; invisible mouse cursor when editing text


;; undo setting
(setq-default undo-no-redo t
              undo-limit 600000
              undo-strong-limit 900000)


;; fixed line position after scrollup, scrolldown
(defun my/scroll-move-around (orig-fn &rest args)
  (let ((orig-line (count-lines (window-start) (point))))
    (apply orig-fn args)
    (move-to-window-line orig-line)))
(advice-add 'scroll-up :around 'my/scroll-move-around)
(advice-add 'scroll-down :around 'my/scroll-move-around)

(with-eval-after-load 'text-mode
  (define-key text-mode-map (kbd "C-M-i") 'company-complete))

(defun single-font-size ()
  "Reset all faces to the height of the default face."
  (dolist (f (face-list))
    (when (not (equal 'default f))
      (set-face-attribute f nil :height 1.0))))

(when (functionp 'set-fontset-font)
  (set-fontset-font "fontset-default"
                    'unicode
                    (font-spec :family "Inconsolata"
                               :width 'normal
                               :size 15.5
                               :weight 'normal)))

(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

 (setq ansi-color-faces-vector
   [default default default italic underline success warning error])
 (setq ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])

 (setq w32-fixed-font-alist
   (quote
    ("Font menu"
     ("Misc"
      ("fixed" "Fixedsys")
      ("")
      ("Terminal 5x4" "-*-Terminal-normal-r-*-*-*-45-*-*-c-40-*-oem")
      ("Terminal 6x8" "-*-Terminal-normal-r-*-*-*-60-*-*-c-80-*-oem")
      ("Terminal 9x5" "-*-Terminal-normal-r-*-*-*-90-*-*-c-50-*-oem")
      ("Terminal 9x7" "-*-Terminal-normal-r-*-*-*-90-*-*-c-70-*-oem")
      ("Terminal 9x8" "-*-Terminal-normal-r-*-*-*-90-*-*-c-80-*-oem")
      ("Terminal 12x12" "-*-Terminal-normal-r-*-*-*-120-*-*-c-120-*-oem")
      ("Terminal 14x10" "-*-Terminal-normal-r-*-*-*-135-*-*-c-100-*-oem")
      ("Terminal 6x6 Bold" "-*-Terminal-bold-r-*-*-*-60-*-*-c-60-*-oem")
      ("")
      ("Lucida Sans Typewriter.8" "-*-Lucida Sans Typewriter-normal-r-*-*-11-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.9" "-*-Lucida Sans Typewriter-normal-r-*-*-12-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.10" "-*-Lucida Sans Typewriter-normal-r-*-*-13-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.11" "-*-Lucida Sans Typewriter-normal-r-*-*-15-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.12" "-*-Lucida Sans Typewriter-normal-r-*-*-16-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.8 Bold" "-*-Lucida Sans Typewriter-semibold-r-*-*-11-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.9 Bold" "-*-Lucida Sans Typewriter-semibold-r-*-*-12-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.10 Bold" "-*-Lucida Sans Typewriter-semibold-r-*-*-13-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.11 Bold" "-*-Lucida Sans Typewriter-semibold-r-*-*-15-*-*-*-c-*-iso8859-1")
      ("Lucida Sans Typewriter.12 Bold" "-*-Lucida Sans Typewriter-semibold-r-*-*-16-*-*-*-c-*-iso8859-1"))
     ("Courier"
      ("Courier 10x8" "-*-Courier-*normal-r-*-*-*-97-*-*-c-80-iso8859-1")
      ("Courier 12x9" "-*-Courier-*normal-r-*-*-*-120-*-*-c-90-iso8859-1")
      ("Courier 15x12" "-*-Courier-*normal-r-*-*-*-150-*-*-c-120-iso8859-1")
      ("")
      ("8" "-*-Courier New-normal-r-*-*-11-*-*-*-c-*-iso8859-1")
      ("9" "-*-Courier New-normal-r-*-*-12-*-*-*-c-*-iso8859-1")
      ("10" "-*-Courier New-normal-r-*-*-13-*-*-*-c-*-iso8859-1")
      ("11" "-*-Courier New-normal-r-*-*-15-*-*-*-c-*-iso8859-1")
      ("12" "-*-Courier New-normal-r-*-*-16-*-*-*-c-*-iso8859-1")
      ("8 bold" "-*-Courier New-bold-r-*-*-11-*-*-*-c-*-iso8859-1")
      ("9 bold" "-*-Courier New-bold-r-*-*-12-*-*-*-c-*-iso8859-1")
      ("10 bold" "-*-Courier New-bold-r-*-*-13-*-*-*-c-*-iso8859-1")
      ("11 bold" "-*-Courier New-bold-r-*-*-15-*-*-*-c-*-iso8859-1")
      ("12 bold" "-*-Courier New-bold-r-*-*-16-*-*-*-c-*-iso8859-1")
      ("8 italic" "-*-Courier New-normal-i-*-*-11-*-*-*-c-*-iso8859-1")
      ("9 italic" "-*-Courier New-normal-i-*-*-12-*-*-*-c-*-iso8859-1")
      ("10 italic" "-*-Courier New-normal-i-*-*-13-*-*-*-c-*-iso8859-1")
      ("11 italic" "-*-Courier New-normal-i-*-*-15-*-*-*-c-*-iso8859-1")
      ("12 italic" "-*-Courier New-normal-i-*-*-16-*-*-*-c-*-iso8859-1")
      ("8 bold italic" "-*-Courier New-bold-i-*-*-11-*-*-*-c-*-iso8859-1")
      ("9 bold italic" "-*-Courier New-bold-i-*-*-12-*-*-*-c-*-iso8859-1")
      ("10 bold italic" "-*-Courier New-bold-i-*-*-13-*-*-*-c-*-iso8859-1")
      ("11 bold italic" "-*-Courier New-bold-i-*-*-15-*-*-*-c-*-iso8859-1")
      ("12 bold italic" "-*-Courier New-bold-i-*-*-16-*-*-*-c-*-iso8859-1")))))

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(set-face-attribute 'default nil
                    :family "Inconsolata"
                    :height 170
                    :weight 'normal
                    :width 'normal)
(defvar big-fringe-mode nil)
(define-minor-mode big-fringe-mode
  "Minor mode to hide the mode-line in the current buffer."
  :init-value nil
  :global t
  :variable big-fringe-mode
  :group 'editing-basics
  (if (not big-fringe-mode)
      (set-fringe-style nil)
    (set-fringe-mode
     (/ (- (frame-pixel-width)
           (* 150 (frame-char-width)))
        2))))

;; Now activate this global minor mode
(big-fringe-mode 1)
