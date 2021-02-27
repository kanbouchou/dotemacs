;; unbind
(global-unset-key (kbd "C-z")) ; iconify-or-deiconify-frame

;; japanese input
(global-unset-key (kbd "C-\\")) ; toggle-input-method
(global-set-key (kbd "C-S-SPC") 'toggle-input-method)


(global-set-key (kbd "M-x")   'counsel-M-x)
(global-set-key (kbd "M-y")   'counsel-yank-pop)

;; anzu
(global-set-key (kbd "M-%")   'anzu-query-replace)
(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)

(global-set-key (kbd "C-;")  'counsel-git)
(global-set-key (kbd "C-'")  'counsel-ibuffer)
(global-set-key (kbd "C-\"")  'counsel-switch-buffer-other-window)
(global-set-key (kbd "C-.")  'counsel-git-grep-at-point)
(global-set-key (kbd "C->")  'helm-ag-project-root)
(global-set-key (kbd "C-,")  'swiper-all-thing-at-point)
(global-set-key (kbd "C-o")  'other-frame) ; overwrite open-line
(global-set-key (kbd "C-h")  'delete-backward-char); over
(global-set-key (kbd "C-]")  'ivy-resume)
(global-set-key (kbd "C-z")  'swiper-from-isearch) ;

;; window operation
(global-set-key (kbd "C-t")  'other-window); overwrite transpose-chars
(global-set-key (kbd "C-\+") 'other-window-or-split)
(global-set-key (kbd "C-\-") 'delete-other-windows)

(global-set-key [C-tab]      'company-complete)

;; navigation inside window
(global-set-key [M-up]    'goto-last-change)
(global-set-key [M-down]  'goto-last-change-reverse)
(global-set-key (kbd "M-,") 'avy-goto-char-timer)

;; git-gutter
(global-set-key [f1]     'git-gutter:next-hunk)
(global-set-key [S-f1]   'git-gutter:previous-hunk)
(global-set-key [f2]     'git-gutter:popup-hunk)
(global-set-key [C-f2]   'git-gutter:revert-hunk)

;; magit
(global-set-key [f3]     'magit-status)
(global-set-key [C-f3]   'magit-diff)

;; align
(global-set-key [f4]     'align-current)
(global-set-key [C-f4]   'align-regexp)

(global-set-key [f5]     'counsel-imenu)

(global-set-key [f8]     'quickrun)
(global-set-key [S-f8]   'quickrun-with-arg)

;; build operation
(setq compilation-ask-about-save nil)
(global-set-key [f9]     'recompile)
(global-set-key [C-f9]   'kill-compilation)
(global-set-key [S-f9]   'compile)

;; navigation: error
(global-set-key [f10]    'next-error)
(global-set-key [S-f10]  'previous-error)

;; bookmark
(global-set-key [f11]    'bm-toggle)
(global-set-key [f12]    'bm-next)
(global-set-key [S-f12]  'bm-previous)

;; google-this
(global-set-key (kbd "C-x C-g") 'google-this)
