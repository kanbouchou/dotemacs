;; diminish globally enabled modes from minor modes
(require 'diminish)
(eval-after-load "anzu" '(diminish 'anzu-mode))
(eval-after-load "git-gutter-fringe+" '(diminish 'git-gutter+-mode))
(eval-after-load "smartparens" '(diminish 'smartparens-mode))
(eval-after-load "volatile-highlights" '(diminish 'volatile-highlights-mode))
(eval-after-load "highlight-symbol" '(diminish 'highlight-symbol-mode))
(eval-after-load "ARev" '(diminish 'auto-revert-mode))
