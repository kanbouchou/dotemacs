;; unbind
(global-unset-key (kbd "C-\\")) ; toggle-input-method
(global-unset-key (kbd "C-z")) ; iconify-or-deiconify-frame

(global-set-key (kbd "M-x")   'helm-M-x)
(global-set-key (kbd "M-y")   'helm-show-kill-ring)
(global-set-key (kbd "M-%")   'anzu-query-replace-at-cursor)
(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)

(global-set-key (kbd "C-;")  'helm-for-files)
(global-set-key (kbd "C-:")  'helm-buffers-list)
(global-set-key (kbd "C-.")  'helm-git-grep-at-point)
(global-set-key (kbd "C-,")  'ag-project-at-point)
(global-set-key (kbd "C-o")  'helm-find-files) ; overwrite open-line

(global-set-key (kbd "C-^")  'helm-resume)
(global-set-key (kbd "C-z")  'helm-occur-from-isearch) ;

;; window operation
(global-set-key (kbd "C-\+") 'other-window-or-split)
(global-set-key (kbd "C-\-") 'delete-other-windows)

(global-set-key [C-tab]      'company-complete)

;; line navigation
(global-set-key [M-up]       'beginning-of-buffer)
(global-set-key [M-down]     'end-of-buffer)

;; flyspell
(global-set-key [C-f1]       'flyspell-buffer)
(global-set-key [S-f1]       'flyspell-mode)
(global-set-key [f1]         'flyspell-goto-next-error)

;; git
(global-set-key [f2]         'magit-status)
(global-set-key [C-f2]       'git-gutter+-revert-hunk)

;; beautifulizer
(load "/usr/share/emacs/site-lisp/clang-format-3.4/clang-format.el")
(global-set-key [f3]         'clang-format-region)

;; align
(global-set-key [f4]         'align-current)
(global-set-key [C-f4]       'align-regexp)

(global-set-key [f5]         'helm-imenu)

;; tags
(global-set-key [f7]         'rtags-location-stack-back)
(global-set-key [C-f7]       'rtags-location-stack-forward)
(global-set-key [S-f7]       'rtags-location-stack-reset)
(global-set-key [f8]         'rtags-find-symbol-at-point)
(global-set-key [C-f8]       'rtags-find-references-at-point)

;; build operation
(setq compilation-ask-about-save nil)
(global-set-key [f9]         'recompile)
(global-set-key [C-f9]       'kill-compilation)
(global-set-key [S-f9]       'compile)

;; navigation: error
(global-set-key [f10]        'next-error)
(global-set-key [S-f10]      'previous-error)

;; navigation: git
(global-set-key [C-f11]      'global-git-gutter+-mode)
(global-set-key [f11]        'git-gutter+-next-hunk)
(global-set-key [S-f11]      'git-gutter+-previous-hunk)

;; navigation: line
(global-set-key [f12]        'goto-line)
