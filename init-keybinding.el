(global-set-key (kbd "M-x")     'helm-M-x)
(global-set-key (kbd "M-y")     'helm-show-kill-ring)

(global-set-key (kbd "C-c C-r") 'helm-recentf)
(global-set-key (kbd "C-c C-f") 'helm-find-files)
(global-set-key (kbd "C-c C-b") 'helm-find-files)
(global-set-key (kbd "C-c C-l") 'helm-ls-git-ls)

(global-set-key (kbd "C-c i")   'helm-imenu)
(global-set-key (kbd "C-x b")   'helm-buffers-list)

;; helm-gtags
(global-set-key [f1] 'helm-gtags-find-tag)
(global-set-key [C-f1] 'helm-gtags-find-rtag)
(global-set-key [C-f1] 'helm-gtags-find-symbol)

;; git gutter
(global-set-key [f2]    'git-gutter:next-hunk)
(global-set-key [S-f2]  'git-gutter:previous-hunk)

;; align
(global-set-key [f4] 'align-current)
(global-set-key [S-f4] 'align-entire)
(global-set-key [C-f4] 'align-regexp)

;; line operation
(global-set-key [f5] 'global-linum-mode)
(global-set-key [C-f5] 'global-hl-line-mode)

;; search operation
(global-set-key [f6]   'ag)
(global-set-key [C-f6] 'helm-ag)
(global-set-key [S-f6] 'rgrep)
(global-set-key [M-f6] 'grep-buffers)

;; find file operation
(global-set-key [f7] 'helm-for-files)
(global-set-key [C-f7] 'helm-find-files)
(global-set-key [S-f7] 'my-helm-git-files)

;; window operation
(global-set-key [f8] 'other-window-or-split-horizontally)
(global-set-key [C-f8] 'split-window-vertically)
(global-set-key [S-f8] 'delete-other-windows)

;; build operation
(setq compilation-ask-about-save nil)
(global-set-key [f9] 'recompile)
(global-set-key [S-f9] 'compile)

;; navigation
(global-set-key [f10] 'next-error)
(global-set-key [S-f10] 'previous-error)

(require 'wdired)
(define-key dired-mode-map (kbd "C-x C-q") 'wdired-change-to-wdired-mode)

(global-unset-key (kbd "C-\\")) ; unbind toggle-input-method
