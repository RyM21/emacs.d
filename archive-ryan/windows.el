;; Windows

(when (eq system-type 'windows-nt)
  (setq shell-file-name "C:/emacs/libexec/emacs/24.4/i686-pc-mingw32/cmdproxy.exe")
  (add-hook 'comint-output-filter-functions 'shell-strip-ctrl-m nil t)
  (add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt nil t))
  
(if (eq system-type 'windows-nt)
    "C:\\Users\Dropbox\notes\"
    "~/Dropbox/notes/")