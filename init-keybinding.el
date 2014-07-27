(global-set-key (kbd "M-x")     'helm-M-x)
(global-set-key (kbd "M-y")     'helm-show-kill-ring)

(global-set-key (kbd "C-;")     'helm-for-files)
(require 'grep-buffers)
(global-set-key (kbd "C-:")     'grep-buffers-symbol-at-point)

(global-set-key (kbd "C-c i")   'helm-imenu)
(global-set-key (kbd "C-c b")   'helm-buffers-list)
(global-set-key (kbd "C-c l")   'global-linum-mode) ; line number on left
(global-set-key (kbd "C-c h")   'global-hl-line-mode) ; hilight current

;; helm-gtags
(global-set-key [f1]            'helm-gtags-find-tag)
(global-set-key [C-f1]          'helm-gtags-find-rtag)
(global-set-key [C-f1]          'helm-gtags-find-symbol)

;; git
(global-set-key [f2]            'magit-status)
(global-set-key [C-f2]          'git-gutter:next-hunk)
(global-set-key [S-f2]          'git-gutter:previous-hunk)

;; align
(global-set-key [f4]            'align-current)
(global-set-key [S-f4]          'align-entire)
(global-set-key [C-f4]          'align-regexp)

;; search operation by ag
(global-set-key [f6]            'ag)
(global-set-key [C-f6]          'ag-project-at-point)
(global-set-key [S-f6]          'ag-project-files)
(global-set-key [S-f6]          'rgrep)
;;(require                      'grep-buffers)
;;(global-set-key [M-f6]        'grep-buffers)

;; find file operation
(global-set-key [f7]            'helm-for-files)
(global-set-key [C-f7]          'helm-find-files)
(global-set-key [S-f7]          'my-helm-git-files)

;; window operation
(global-set-key [f8]            'other-window-or-split-horizontally)
(global-set-key [C-f8]          'split-window-vertically)
(global-set-key [S-f8]          'delete-other-windows)

;; build operation
(setq compilation-ask-about-save nil)
(global-set-key [f9]            'recompile)
(global-set-key [S-f9]          'compile)

;; navigation
(global-set-key [f10]           'next-error)
(global-set-key [S-f10]         'previous-error)

(global-unset-key (kbd "C-\\")) ; unbind toggle-input-method
