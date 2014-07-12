(setq inhibit-startup-screen t)

(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
)

(global-font-lock-mode t)
(transient-mark-mode 1)			; 選択範囲に色を付ける

(require 'ansi-color)
(add-hook 'compilation-filter-hook
          '(lambda ()
             (ansi-color-apply-on-region (point-min) (point-max))))

;; color-theme
(when (require 'color-theme nil t)
  (color-theme-initialize)
  (if (window-system)
    ;(color-theme-robin-hood)
    (color-theme-clarity)
    ;(color-theme-greiner)
    (color-theme-emacs-nw)
    ))
(setq frame-background-mode 'dark)

(defun other-window-or-split-horizontally ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))
