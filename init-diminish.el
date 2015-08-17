;; diminish globally enabled modes from minor modes
(require 'diminish)
(eval-after-load "anzu" '(diminish 'anzu-mode))
(eval-after-load "git-gutter-fringe+" '(diminish 'git-gutter+-mode))
(eval-after-load "smartparens" '(diminish 'smartparens-mode))
(eval-after-load "volatile-highlights" '(diminish 'volatile-highlights-mode))
(eval-after-load "auto-highlight-symbol" '(diminish 'auto-highlight-symbol-mode))
