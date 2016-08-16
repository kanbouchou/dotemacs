;; unbind
(global-unset-key (kbd "C-z")) ; iconify-or-deiconify-frame

;; japanese input
(global-unset-key (kbd "C-\\")) ; toggle-input-method
(global-set-key (kbd "C-S-SPC") 'toggle-input-method)


(global-set-key (kbd "M-x")   'smex)
(global-set-key (kbd "M-y")   'helm-show-kill-ring)

;; anzu
(global-set-key (kbd "M-%")   'anzu-query-replace)
(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)

(global-set-key (kbd "C-?")  'helm-apropos)
(global-set-key (kbd "C-;")  'helm-for-files)
(global-set-key (kbd "C-'")  'helm-mini)
(global-set-key (kbd "C-.")  'helm-do-ag-project-root)
(global-set-key (kbd "C->")  'helm-ag-project-root)
(global-set-key (kbd "C-,")  'helm-multi-swoop-all)
(global-set-key (kbd "C-o")  'other-frame) ; overwrite open-line
(global-set-key (kbd "C-h")  'delete-backward-char); over
(global-set-key (kbd "C-]")  'helm-resume)
(global-set-key (kbd "C-z")  'helm-occur-from-isearch) ;

;; window operation
(global-set-key (kbd "C-t")  'other-window); overwrite transpose-chars
(global-set-key (kbd "C-\+") 'other-window-or-split)
(global-set-key (kbd "C-\-") 'delete-other-windows)

(global-set-key [C-tab]      'company-complete)

;; navigation inside window
(global-set-key [M-up]    'goto-last-change)
(global-set-key [M-down]  'goto-last-change-reverse)
(global-set-key (kbd "M-,") 'avy-goto-char-2)

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
(require 'jedi)
(add-hook 'python-mode-hook
          '(lambda()
             (local-set-key [f8] 'jedi:goto-definition)
             (local-set-key [C-f8] 'jedi:goto-definition-pop-marker)
             (local-set-key [f7] 'jedi:show-doc)
             ))

(defun rtags-keybinds()
  (local-set-key [C-f8]     'tags-pop-stack)
  (local-set-key [f8]     'tags-find-symbol-at-point)
  (local-set-key [f7]   'tags-find-references-at-point)
  )
(add-hook 'c-mode-hook   'rtags-keybinds)
(add-hook 'c++-mode-hook 'rtags-keybinds)

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
(global-set-key [S-f11]  'helm-bm)
(global-set-key [f12]    'bm-next)
(global-set-key [S-f12]  'bm-previous)

;; google-this
(global-set-key (kbd "C-x C-g") 'google-this)
