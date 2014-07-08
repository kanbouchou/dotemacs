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

;; window operation
(global-set-key [f6] 'other-window)
(global-set-key [C-f6] 'delete-other-windows)
(global-set-key [S-f6] 'follow-delete-other-windows-and-split)
(global-set-key [f5] 'split-window-horizontally)
(global-set-key [C-f5] 'split-window-vertically)

;; find file operation
(global-set-key [f8] 'helm-recentf)
(global-set-key [C-f8] 'helm-ls-git-ls)

;; search operation
(global-set-key [f7]   'helm-ag)
(global-set-key [C-f7] 'helm-ag-r-from-git-repo)
(global-set-key [S-f7] 'rgrep)

;; build operation
(setq compilation-ask-about-save nil)
(global-set-key [f9] 'recompile)
(global-set-key [S-f9] 'compile)

(global-set-key [f10] 'next-error)
(global-set-key [S-f10] 'previous-error)
