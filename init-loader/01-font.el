(defun set-if-font-exists-p (myfont)
  (when (member myfont (font-family-list))
    (set-default-font myfont)
    (set-face-attribute 'default nil
                        :family myfont
                        :height 110)
    (set-fontset-font (frame-parameter nil 'font)
                      'japanese-jisx0208
                      (cons myfont "iso10646-1"))
    (set-fontset-font (frame-parameter nil 'font)
                      'japanese-jisx0212
                      (cons myfont "iso10646-1"))
    (set-fontset-font (frame-parameter nil 'font)
                      'katakana-jisx0201
                      (cons myfont "iso10646-1"))
    (message "setting font %s" myfont)
    )
  )

(set-if-font-exists-p "Ricty Diminished")
(set-if-font-exists-p "Source Han Code JP")
