(fset 'sphinx-title
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 up 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 1 down down 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 1 down return up] 0 "%d")) arg)))

(fset 'sphinx-first-level-heading
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 down 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 1 down return up] 0 "%d")) arg)))

(fset 'sphinx-second-level-heading
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 down 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 return 1 up down up down] 0 "%d")) arg)))


(fset 'sphinx-third-level-heading
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 down 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 126 return 1] 0 "%d")) arg)))


(fset 'html-li
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 60 108 105 62 5 60 47 108 105 62 1 down] 0 "%d")) arg)))

(fset 'add-star-emphasis
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("**" 0 "%d")) arg)))


(fset 'make-list-item
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 45 32 down 1] 0 "%d")) arg)))


(fset 'make-markdown-link
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("\342[]()" 0 "%d")) arg)))


(fset 'newlines-around-audio-tags
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([19 97 117 100 105 111 return 1 return down down down return] 0 "%d")) arg)))


(fset 'make-checkbox
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("- [ ] " 0 "%d")) arg)))


(fset 'section-sign-plus-nonbreaking-space
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217848 up return up up return 134217848 up return up up return] 0 "%d")) arg)))


(fset 'section-sign-plus-nonbreaking-space
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217848 107 backspace 105 110 115 101 114 116 45 99 104 97 114 return 115 101 99 116 105 111 110 32 115 105 103 110 return 134217848 105 110 115 101 114 116 45 99 104 97 114 return 110 111 110 45 98 114 101 97 107 105 110 103 45 backspace 32 115 112 97 99 101 return] 0 "%d")) arg)))

(fset 'insert-em-dash
      (lambda (&optional arg) "Keyboard macro" (interactive "p") (kmacro-exec-ring-item (quote ([134217848 105 110 115 101 114 116 45 99 104 97 114 return 69 77 33554464 68 65 83 72 return] 0 "%d")) arg)))


(fset 'html-link-to-markdown
      (lambda (&optional arg) "Keyboard macro" (interactive "p") (kmacro-exec-ring-item (quote ([19 104 114 101 102 61 right 32 backspace 33554464 backspace 67108896 19 34 left 134217847 up right return up 109 100 tab backspace backspace backspace 45 32 91 73 backspace 32 93 40 25 41 down 19 62 right left S-right S-right S-right S-right S-right S-right S-right left left left left left left left 67108896 67108896 up down 67108896 19 60 left 134217847 up 1 19 41 18 40 backspace backspace 40 backspace backspace backspace 40 left left backspace 25 right right right right right right right right right right right right right right right right right right right right right right right right right right right right right left left left left left left left left left left left left left left left left 5 return] 0 "%d")) arg)))


(fset 'ledger_amount
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("  $" 0 "%d")) arg)))


(fset 'insert-blog-post-from-header
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 134217830 134217826 11 25 return return return up 3 22 4 109 97 114 107 100 111 119 110 return 32 58 116 97 110 103 108 101 32 126 47 119 98 98 108 111 103 47 95 100 114 97 102 116 115 47 25 18 116 97 110 103 108 101 right 5 right 11 25 down down return up up up 5 return return return up 24 105 25 67108911 backspace backspace backspace backspace backspace backspace backspace backspace backspace backspace backspace backspace backspace 25 return 3 14] 0 "%d")) arg)))


(fset 'insert-published-blog-post-from-header
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([3 16 134217830 134217826 11 25 return return 3 22 4 104 116 109 108 return return return return up down up 24 105 backspace backspace backspace backspace 25 1 119 98 backspace backspace 126 47 98 108 111 backspace backspace 119 backspace backspace 119 98 108 backspace 98 108 111 103 47 95 112 111 115 116 115 47 5 return 3 14] 0 "%d")) arg)))




(provide 'init-macros)











