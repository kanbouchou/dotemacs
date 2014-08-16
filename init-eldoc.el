(require 'c-eldoc)

(add-hook 'c-mode-common-hook
          (lambda ()
            (set (make-local-variable 'eldoc-idle-delay) 1)
            (c-turn-on-eldoc-mode)
            ))
