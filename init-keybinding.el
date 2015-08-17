;; unbind
;(global-unset-key (kbd "C-\\")) ; toggle-input-method
(global-unset-key (kbd "C-z")) ; iconify-or-deiconify-frame

(global-set-key (kbd "M-x")   'helm-M-x)
(global-set-key (kbd "M-y")   'helm-show-kill-ring)
(global-set-key (kbd "M-%")   'anzu-query-replace)
(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)

(global-set-key (kbd "C-;")  'helm-for-files)
(global-set-key (kbd "C-:")  'helm-mini)
(global-set-key (kbd "C-.")  'helm-git-grep-at-point)
(global-set-key (kbd "C-,")  'helm-multi-swoop-all)
(global-set-key (kbd "C-o")  'helm-find-files) ; overwrite open-line
(global-set-key (kbd "C-h")  'delete-backward-char); over
(global-set-key (kbd "C-^")  'helm-resume)
(global-set-key (kbd "C-z")  'helm-occur-from-isearch) ;

(global-set-key (kbd "C-M-n") 'next-multiframe-window)
(global-set-key (kbd "C-M-p") 'previous-multiframe-window)

;; window operation
(global-set-key (kbd "C-\+") 'other-window-or-split)
(global-set-key (kbd "C-\-") 'delete-other-windows)

(global-set-key [C-tab]      'company-complete)

;; input method selection
(global-set-key (kbd "<muhenkan>")  (lambda () (interactive) (set-input-method)))
(global-set-key (kbd "<henkan>")  (lambda () (interactive) (set-input-method 'japanese-mozc)))

;; navigation
(global-set-key [M-up]   'beginning-of-buffer)
(global-set-key [M-down] 'end-of-buffer)

;; git-gutter
(global-set-key [f1]     'git-gutter+-next-hunk)
(global-set-key [S-f1]   'git-gutter+-previous-hunk)
(global-set-key [f2]     'git-gutter+-show-hunk)
(global-set-key [C-f2]   'git-gutter+-revert-hunk)

;; magit
(global-set-key [f3]     'magit-status)
(global-set-key [C-f3]   'magit-diff)

;; align
(global-set-key [f4]     'align-current)
(global-set-key [C-f4]   'align-regexp)

(global-set-key [f5]     'helm-imenu)

;; tags
(global-set-key [f7]     'tags-pop-stack)
(global-set-key [C-f7]   'rtags-location-stack-forward)
(global-set-key [S-f7]   'tags-clear-stack)
(global-set-key [f8]     'tags-find-symbol-at-point)
(global-set-key [C-f8]   'tags-find-references-at-point)

;; build operation
(setq compilation-ask-about-save nil)
(global-set-key [f9]     'recompile)
(global-set-key [C-f9]   'kill-compilation)
(global-set-key [S-f9]   'compile)

;; navigation: error
(global-set-key [f10]    'next-error)
(global-set-key [S-f10]  'previous-error)

;; navigation: rtags diagnostics error
(global-set-key [f11]    'rtags-next-diag)
(global-set-key [S-f11]  'rtags-previous-diag)

(require                 'expand-region)
(global-set-key [f12]    'er/expand-region)
(global-set-key [S-f12]  'er/contract-region)
