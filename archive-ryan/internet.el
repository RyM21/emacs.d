;; internet.el

;; Search

(setq org-link-abbrev-alist
    '(("google" . "http://www.google.com/search?q=")
    ("gmap" . "http://maps.google.com/maps?q=%s")
    ("blog" . "http://blog.wordbrewery.com/")))

;; Chrome as default browser
(setq browse-url-generic-program "google-chrome")
(setq browse-url-browser-function 'browse-url-generic)