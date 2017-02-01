;; navigation.el


;; Variables
  
(setq mouse-wheel-follow-mouse 't)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)
      
(when (not (window-system))
  (xterm-mouse-mode +1))

(setq initial-scratch-message "")
 
;; Removes *scratch* from buffer after the mode has been set.
(defun remove-scratch-buffer ()
   (if (get-buffer "*scratch*")
       (kill-buffer "*scratch*")))
 (add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)
 
 ;; Removes *messages* from the buffer.
 (setq-default message-log-max nil)
 (defun remove-messages-buffer ()
   (if (get-buffer "*Messages*")
       (kill-buffer "*Messages*")))
 (add-hook 'after-change-major-mode-hook 'remove-messages-buffer)
 
 ;; Removes *Completions* from buffer after you've opened a file.
 (add-hook 'minibuffer-exit-hook
       '(lambda ()
          (let ((buffer "*Completions*"))
            (and (get-buffer buffer)
                 (kill-buffer buffer)))))
 
 ;; Don't show *Buffer list* when opening multiple files at the same time.
 (setq inhibit-startup-buffer-menu t)

