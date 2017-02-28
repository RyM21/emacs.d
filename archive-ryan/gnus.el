(require 'epa-file)
(epa-file-enable)

(require 'nnir)
;; (setq gnus-select-method '(nntp "news.gmane.org")) ;; if you read news groups

(setq user-mail-address	"ryan.mccarl@gmail.com"
      user-full-name	"Ryan McCarl"
      mml2015-signers '("4C9B8165"))

(setq gnus-select-method '(nnml ""))

;; @see http://gnus.org/manual/gnus_397.html

(setq gnus-select-method
             '(nnimap "gmail"
                      (nnimap-address "imap.gmail.com")
                      (nnimap-server-port 993)
                      (nnimap-stream ssl)
             (nnimap-authinfo-file "~/.authinfo.gpg")))
               
;; Read HTML mail
;; You need install the command line brower 'w3m' and Emacs plugin 'w3m'


(setq mm-text-html-renderer 'w3m)

;; Setup to send email through SMTP
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      nntp-authinfo-file "~/.authinfo.gpg"
      gnus-agent nil
      gnus-message-archive-group nil
      mml2015-encrypt-to-self t)

(setq gnus-thread-sort-functions
      '((not gnus-thread-sort-by-date)
        (not gnus-thread-sort-by-number)))
(setq gnus-thread-hide-subtree t)
(setq gnus-thread-ignore-subject t)
(setq gnus-use-correct-string-widths nil)
(setq gnus-use-cache t)
(setq gc-cons-threshold 3500000)
(eval-after-load 'gnus-topic
  '(progn
     (setq gnus-message-archive-group '((format-time-string "sent.%Y")))
     (setq gnus-server-alist '(("archive" nnfolder "archive" (nnfolder-directory "~/Mail/archive")
                                (nnfolder-active-file "~/Mail/archive/active")
                                (nnfolder-get-new-mail nil)
                                (nnfolder-inhibit-expiry t))))
     (setq gnus-topic-topology '(("Gnus" visible)
                                 (("misc" visible)) 
                                (("gmail" visible nil nil))))
     (setq gnus-topic-alist '(("gmail" ; the key of topic
                               "INBOX"
                               "[Gmail]/Sent Mail"
                               "[Gmail]/Trash"
                               "Sent Messages"
                               "Drafts")
                              ("misc" ; the key of topic
                               "nnfolder+archive:sent.2015-12"
                               "nnfolder+archive:sent.2016"
                               "nnfolder+archive:sent.2017"
                               "nndraft:drafts")
                              ("Gnus")))))

;; Attempt to encrypt all the mails we'll be sending.
(add-hook 'message-setup-hook 'mml-secure-message-encrypt)
;; Add two key bindings for your Gmail experience.
(add-hook 'gnus-summary-mode-hook 'my-gnus-summary-keys)
(defun my-gnus-summary-keys ()
  (local-set-key "y" 'gmail-archive)
  (local-set-key "$" 'gmail-report-spam))
(defun gmail-archive ()
  "Archive the current or marked mails.
This moves them into the All Mail folder."
  (interactive)
  (gnus-summary-move-article nil "nnimap+imap.gmail.com:[Gmail]/All Mail"))
(defun gmail-report-spam ()
  "Report the current or marked mails as spam.
This moves them into the Spam folder."
  (gnus-summary-move-article nil "nnimap+imap.gmail.com:[Gmail]/Spam"))
;; Encryption
(require 'epg-config)
 (setq mml2015-use 'epg
       mml2015-verbose t
       epg-user-id "ryan.mccarl@gmail.com"
       mml2015-encrypt-to-self t
       mml2015-always-trust nil
       mml2015-cache-passphrase t
       mml2015-passphrase-cache-expiry '36000
       mml2015-sign-with-sender t
       gnus-message-replyencrypt t
       gnus-message-replysign t
       gnus-message-replysignencrypted t
       gnus-treat-x-pgp-sig t
;;       mm-sign-option 'guided
;;       mm-encrypt-option 'guided
       mm-verify-option 'always
       mm-decrypt-option 'always
       gnus-buttonized-mime-types
       '("multipart/alternative"
         "multipart/encrypted"
         "multipart/signed")
      epg-debug t ;;  then read the *epg-debug*" buffer
)
  (setq send-mail-function         'smtpmail-send-it
        message-send-mail-function 'message-smtpmail-send-it
        smtpmail-smtp-server       "smtp.gmail.com")
(setq 
 send-mail-function 'smtpmail-send-it
 message-send-mail-function 'smtpmail-send-it
 user-mail-address "ryan.mccarl@gmail.com"
 smtpmail-starttls-credentials '(("smtp.gmail.com" "587" nil nil))
 smtpmail-auth-credentials  (expand-file-name "~/.authinfo.gpg")
 smtpmail-default-smtp-server "smtp.gmail.com"
 smtpmail-smtp-server "smtp.gmail.com"
 smtpmail-smtp-service 587
 smtpmail-debug-info t
 starttls-extra-arguments nil
 starttls-gnutls-program "/usr/local/bin/gnutls-cli"
 starttls-use-gnutls t
 )
(require 'nnir)
;; (setq gnus-select-method '(nntp "news.gmane.org")) ;; if you read news groups

(setq user-mail-address	"ryan.mccarl@wordbrewery.com"
      user-full-name	"Ryan McCarl"
      mml2015-signers '("4C9B8165"))
(setq gnus-select-method '(nnml ""))
;; @see http://gnus.org/manual/gnus_397.html
(setq gnus-select-method
             '(nnimap "gmail"
                      (nnimap-address "imap.gmail.com")
                      (nnimap-server-port 993)
                      (nnimap-stream ssl)
             (nnimap-authinfo-file "~/.authinfo.gpg")))
               

;; Read HTML mail
;; You need install the command line brower 'w3m' and Emacs plugin 'w3m'
(setq mm-text-html-renderer 'w3m)

;; Setup to send email through SMTP
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      nntp-authinfo-file "~/.authinfo.gpg"
      gnus-agent nil
      gnus-message-archive-group nil
      mml2015-encrypt-to-self t)

(setq gnus-thread-sort-functions
      '((not gnus-thread-sort-by-date)
        (not gnus-thread-sort-by-number)))

(setq gnus-thread-hide-subtree t)
(setq gnus-thread-ignore-subject t)
(setq mm-text-html-renderer 'w3m)
(setq gnus-use-correct-string-widths nil)
(setq gnus-use-cache t)
(setq gc-cons-threshold 3500000)

(eval-after-load 'gnus-topic
  '(progn
     (setq gnus-message-archive-group '((format-time-string "sent.%Y")))
     (setq gnus-server-alist '(("archive" nnfolder "archive" (nnfolder-directory "~/Mail/archive")
                                (nnfolder-active-file "~/Mail/archive/active")
                                (nnfolder-get-new-mail nil)
                                (nnfolder-inhibit-expiry t))))

     (setq gnus-topic-topology '(("Gnus" visible)
                                 (("misc" visible)) 
                                (("gmail" visible nil nil))))

     (setq gnus-topic-alist '(("gmail" ; the key of topic
                               "INBOX"
                               "[Gmail]/Sent Mail"
                               "[Gmail]/Trash"
                               "Sent Messages"
                               "Drafts")
                              ("misc" ; the key of topic
                               "nnfolder+archive:sent.2015-12"
                               "nnfolder+archive:sent.2016"
                               "nnfolder+archive:sent.2017"
                               "nndraft:drafts")
                              ("Gnus")))))

;; Attempt to encrypt all the mails we'll be sending.
(add-hook 'message-setup-hook 'mml-secure-message-encrypt)

;; Add two key bindings for your Gmail experience.
(add-hook 'gnus-summary-mode-hook 'my-gnus-summary-keys)

(defun my-gnus-summary-keys ()
  (local-set-key "y" 'gmail-archive)
  (local-set-key "$" 'gmail-report-spam))

(defun gmail-archive ()
  "Archive the current or marked mails.
This moves them into the All Mail folder."
  (interactive)
  (gnus-summary-move-article nil "nnimap+imap.gmail.com:[Gmail]/All Mail"))

(defun gmail-report-spam ()
  "Report the current or marked mails as spam.
This moves them into the Spam folder."
  (interactive)
  (gnus-summary-move-article nil "nnimap+imap.gmail.com:[Gmail]/Spam"))

;; Encryption

(require 'epg-config)
 (setq mml2015-use 'epg

       mml2015-verbose t
       epg-user-id "ryan.mccarl@gmail.com"
       mml2015-encrypt-to-self t
       mml2015-always-trust nil
       mml2015-cache-passphrase t
       mml2015-passphrase-cache-expiry '36000
       mml2015-sign-with-sender t

       gnus-message-replyencrypt t
       gnus-message-replysign t
       gnus-message-replysignencrypted t
       gnus-treat-x-pgp-sig t

;;       mm-sign-option 'guided
;;       mm-encrypt-option 'guided
       mm-verify-option 'always
       mm-decrypt-option 'always

       gnus-buttonized-mime-types
       '("multipart/alternative"
         "multipart/encrypted"
         "multipart/signed")

      epg-debug t ;;  then read the *epg-debug*" buffer
)
  (setq send-mail-function         'smtpmail-send-it
        message-send-mail-function 'message-smtpmail-send-it
        smtpmail-smtp-server       "smtp.gmail.com")

(setq 
 send-mail-function 'smtpmail-send-it
 message-send-mail-function 'smtpmail-send-it
 user-mail-address "ryan.mccarl@gmail.com"
 smtpmail-starttls-credentials '(("smtp.gmail.com" "587" nil nil))
 smtpmail-auth-credentials  (expand-file-name "~/.authinfo.gpg")
 smtpmail-default-smtp-server "smtp.gmail.com"
 smtpmail-smtp-server "smtp.gmail.com"
 smtpmail-smtp-service 587
 smtpmail-debug-info t
 starttls-extra-arguments nil
 starttls-gnutls-program "/usr/local/bin/gnutls-cli"
 starttls-extra-arguments nil
 starttls-use-gnutls t
 )

(defun gpg-agent-restart ()
  "This kills and restarts the gpg-agent.

To kill gpg-agent, we use killall. If you know that the agent is
OK, you should just reload the environment file using
'gpg-agent-reload-info'."
  (interactive)
  (shell-command "killall gpg-agent")
  (shell-command "gpg-agent --daemon --enable-ssh-support --write-env-file")
  ;; read the environment file instead of parsing the output
  (gpg-agent-reload-info))

(defun gpg-agent-reload-info ()
  "Reload the ~/.gpg-agent-info file."
  (interactive)
  (let ((file (expand-file-name "~/.gpg-agent-info")))
    (when (file-readable-p file)
      (with-temp-buffer
    (insert-file file)
    (goto-char (point-min))
    (while (re-search-forward "\\([A-Z_]+\\)=\\(.*\\)" nil t)
      (setenv (match-string 1) (match-string 2)))))))

(defun gpg-agent-startup ()
  "Initialize the gpg-agent if necessary.

Note that sometimes the gpg-agent can be up and running and still
be useless, in which case you should restart it using
`gpg-restart-agent'."
  (gpg-reload-agent-info)
  (let ((pid (getenv "SSH_AGENT_PID")))
    (unless (and pid (member (string-to-number pid) (list-system-processes)))
      (gpg-agent-restart))))

(gpg-agent-startup)

(setenv "PATH" (format "/usr/local/bin:%s" (getenv "PATH")))
(setq exec-path (append exec-path "/usr/local/bin"))

