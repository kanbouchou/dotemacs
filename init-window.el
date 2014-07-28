(setq inhibit-startup-screen t)

(when window-system
  (menu-bar-mode -1) ; メニューバーを消す
  (tool-bar-mode -1) ; ツールバーを消す
)

(require 'generic-x)
(windmove-default-keybindings)          ; Shift + 矢印キー でウィンドウ間移動

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

(defun other-window-or-split ()
  (interactive)
  (if (>= (window-body-width) 100)
      (split-window-horizontally)
    (if (>= (window-body-height) 40)
        (split-window-vertically)
      (other-window 1)))
  )


(blink-cursor-mode 0)

(global-hl-line-mode 1)
(set-face-background 'hl-line "#3e4446")
(set-face-foreground 'highlight nil)

(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-laptop)

(set-face-foreground 'mode-line "white")
(set-face-background 'mode-line "tomato")
(set-face-background 'modeline-inactive "dim gray")
(set-face-background 'default "#000020")
