;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.

(add-to-list 'load-path "~/.emacs.d/elpa" t)
(add-to-list 'load-path "~/.emacs.d/lisp" t)
(add-to-list 'load-path "~/org-mode/lisp" t)
(add-to-list 'load-path "~/org-mode/contrib/lisp" t)
(add-to-list 'load-path "~/emacs/lisp" t)


(let ((minver "23.3"))
  (when (version<= emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version<= emacs-version "24")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

;;----------------------------------------------------------------------------
;; Temporarily reduce garbage collection during startup
;;----------------------------------------------------------------------------
(defconst sanityinc/initial-gc-cons-threshold gc-cons-threshold
  "Initial value of `gc-cons-threshold' at start-up time.")
(setq gc-cons-threshold (* 128 1024 1024))
(add-hook 'after-init-hook
          (lambda () (setq gc-cons-threshold sanityinc/initial-gc-cons-threshold)))

;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el
;; Calls (package-initialize)
(require 'init-elpa)      ;; Machinery for installing required packages
(require 'init-exec-path) ;; Set up $PATH
(require 'init-benchmarking) ;; Measure startup time

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-preload-local.el"
;;----------------------------------------------------------------------------
                                        ;(require 'init-preload-local nil t)


;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------

(setq debug-on-error t)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(when (file-exists-p custom-file)
  (load custom-file))

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-local" containing personal settings
;;----------------------------------------------------------------------------
(require 'init-local nil)

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------

(require-package 'wgrep)
(require-package 'project-local-variables)
(require-package 'diminish)
(require-package 'scratch)
(require-package 'mwe-log-commands)

(require 'init-frame-hooks)
(require 'init-xterm)
(require 'init-themes)
(require 'init-osx-keys)
(require 'init-gui-frames)
(require 'init-dired)
(require 'init-isearch)
(require 'init-grep)
(require 'init-uniquify)
(require 'init-ibuffer)
(require 'init-flycheck)
(require 'init-recentf)
(require 'init-smex)
(require 'init-ivy)
(require 'init-hippie-expand)
(require 'init-company)
(require 'init-windows)
;; (require 'init-sessions)
(require 'init-fonts)
(require 'init-mmm)

(require 'init-editing-utils)
(require 'init-whitespace)
(require 'init-fci)

(require 'init-vc)
(require 'init-darcs)
(require 'init-git)
(require 'init-github)

(require 'init-projectile)

(require 'init-compile)
(require 'init-crontab)
(require 'init-textile)
(require 'init-markdown)
(require 'init-csv)
(require 'init-javascript)
(require 'init-php)
(require 'init-org)
(require 'init-nxml)
(require 'init-html)
(require 'init-css)
(require 'init-haml)
(require 'init-python-mode)
(unless (version<= emacs-version "24.3")
(require 'init-sql))

(require 'init-lisp)
(require 'init-slime)
(unless (version<= emacs-version "24.2")
  (require 'init-clojure)
  (require 'init-clojure-cider))
(require 'init-common-lisp)

(when *spell-check-support-enabled*
  (require 'init-spelling))

(require 'init-misc)

(require 'init-folding)
(require 'init-dash)
(require 'init-ledger)
;; Extra packages which don't require any configuration

(require-package 'gnuplot)
(require-package 'htmlize)
(require-package 'dsvn)
(require-package 'aggressive-indent)
(require-package 'auto-indent-mode)
(require-package 'css-comb)
(require-package 'csv-mode)
(require-package 'dired+)
(require-package 'dired-sort)
(require-package 'eslint-fix)
(require-package 'exec-path-from-shell)
(require-package 'flycheck-ledger)
(require-package 'hackernews)
(require-package 'guide-key)
(require-package 'htmlize)
(require-package 'indent-tools)
(require-package 'indent-guide)
(require-package 'js2-mode)
(require-package 'json-mode)
(require-package 'ledger-mode)
(require-package 'js-comint)
(require-package 'macrostep)
(require-package 'mwe-log-commands)
(require-package 'org-agenda-property)
(require-package 'org-cliplink)
(require-package 'org-gcal)
(require-package 'password-vault)
(require-package 'rainbow-mode)
(require-package 'sass-mode)
(require-package 'regex-tool)
(require-package 'scss-mode)
(require-package 'smart-shift)
(require-package 'sql-indent)
(require-package 'sync-recentf)
(require-package 'tidy)
(require-package 'undo-tree)
(require-package 'tidy)
(require-package 'whole-line-or-region)
(require-package 'yaml-mode)
(require-package 'gnus)


;; Ryan's additions


(when *is-a-mac*
  (require-package 'osx-location))

(require-package 'regex-tool)

;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
(require 'server)
(unless (server-running-p)
  (server-start))


;;----------------------------------------------------------------------------
;; Locales (setting them earlier in this file doesn't work in X)
;;----------------------------------------------------------------------------
(require 'init-locales)
(provide 'init)
(require 'init-local)

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:

(fset 'markdown-links-to-rst
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217848 118 114 47 114 101 112 108 97 tab return 92 91 40 46 42 41 92 93 92 40 40 backspace 40 44 backspace 46 42 41 92 41 return 96 92 49 32 60 92 50 62 96 return] 0 "%d")) arg)))
