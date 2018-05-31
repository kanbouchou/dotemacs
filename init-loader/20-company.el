(when (require 'company)
  (add-to-list 'company-backends 'company-irony)
  (add-to-list 'company-backends 'company-c-headers)
  (add-to-list 'company-backends 'company-files)
  (setq company-idle-delay 1)
  (setq company-async-timeout 3)
  )

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(add-hook 'irony-mode-hook 'irony-eldoc)

(global-company-mode t)

(eval-after-load 'company
  '(progn
     (define-key company-mode-map [C-tab] 'helm-company)
     (define-key company-active-map [C-tab] 'helm-company)))

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'python-mode-hook 'company-mode)

;; rtags
(add-to-list 'company-backends 'company-rtags)
(setq company-rtags-begin-after-member-access t)
(setq rtags-completions-enabled t)
(rtags-diagnostics)
