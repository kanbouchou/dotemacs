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

(global-set-key [f10] 'next-error)
(global-set-key [S-f10] 'previous-error)

;; build operation
(setq compilation-ask-about-save nil)
(global-set-key [f9] 'recompile)
(global-set-key [S-f9] 'compile)

;; window operation
(global-set-key [f8] 'other-window-or-split-horizontally)
(global-set-key [C-f8] 'delete-other-windows)
(global-set-key [S-f8] 'split-window-vertically)
(global-set-key [M-f8] 'split-window-horizontally)

;; find file operation
(global-set-key [f7] 'helm-recentf)
(global-set-key [C-f7] 'helm-ls-git-ls)

;; search operation
(global-set-key [f6]   'helm-ag)
(global-set-key [C-f6] 'helm-ag-r-from-git-repo)
(global-set-key [S-f6] 'rgrep)


;; line operation
(global-set-key [f5] 'global-linum-mode)
(global-set-key [C-f5] 'global-hl-line-mode)
