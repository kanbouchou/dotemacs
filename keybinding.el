(global-set-key (kbd "M-x")     'helm-M-x)
(global-set-key (kbd "M-y")     'helm-show-kill-ring)

(global-set-key (kbd "<f8>")    'helm-ag) 
(global-set-key (kbd "C-c C-r") 'helm-recentf)
(global-set-key (kbd "C-c C-f") 'helm-find-files)
(global-set-key (kbd "C-c C-b") 'helm-find-files)
(global-set-key (kbd "C-c C-l") 'helm-ls-git-ls)

(global-set-key (kbd "C-c i")   'helm-imenu)
(global-set-key (kbd "C-x b")   'helm-buffers-list)

(global-set-key (kbd "C-c g")   'git-gutter-mode)
(global-set-key (kbd "<f7>")    'git-gutter:next-hunk) 
(global-set-key (kbd "S-<f7>")  'git-gutter:previous-hunk) 
