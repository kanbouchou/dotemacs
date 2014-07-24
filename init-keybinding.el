(global-set-key (kbd "M-x")     'helm-M-x)
(global-set-key (kbd "M-y")     'helm-show-kill-ring)

(global-set-key (kbd "C-c C-r") 'helm-recentf)
(global-set-key (kbd "C-c C-f") 'helm-find-files)
(global-set-key (kbd "C-c C-b") 'helm-find-files)
(global-set-key (kbd "C-c C-l") 'helm-ls-git-ls)

(global-set-key (kbd "C-c i")   'helm-imenu)
(global-set-key (kbd "C-x b")   'helm-buffers-list)

(global-set-key (kbd "C-c g")   'git-gutter-mode)
;(global-set-key [f7]    'git-gutter:next-hunk)
;(global-set-key [S-f7]  'git-gutter:previous-hunk)

(global-set-key [f4] 'align-current)
(global-set-key [S-f4] 'align-entire)
(global-set-key [C-f4] 'align-regexp)

(global-set-key [f10] 'next-error)
(global-set-key [S-f10] 'previous-error)

;; build operation
(setq compilation-ask-about-save nil)
(global-set-key [f9] 'recompile)
(global-set-key [S-f9] 'compile)

;; window operation
(global-set-key [f8] 'other-window-or-split-horizontally)
(global-set-key [C-f8] 'split-window-vertically)
(global-set-key [S-f8] 'delete-other-windows)

;; find file operation
(global-set-key [f7] 'helm-recentf)
(global-set-key [C-f7] 'my-helm-git-files)

;; search operation
(global-set-key [f6]   'helm-ag)
(global-set-key [C-f6] 'helm-ag-r-from-git-repo)
(global-set-key [S-f6] 'rgrep)

;; line operation
(global-set-key [f5] 'global-linum-mode)
(global-set-key [C-f5] 'global-hl-line-mode)

(require 'wdired)
(define-key dired-mode-map (kbd "C-x C-q") 'wdired-change-to-wdired-mode)

(global-unset-key (kbd "C-\\")) ; unbind toggle-input-method
