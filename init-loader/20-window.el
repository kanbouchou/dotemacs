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

;; theme
(require 'clarity-theme)
(load-theme 'clarity t)
(enable-theme 'clarity)
(setq frame-background-mode 'dark)

(defun other-window-or-split ()
  (interactive)
  (setq threshold 800)
  (setq width (window-body-width nil t))
  (setq height (window-body-height nil t))
  (setq max_width_height (max width height))
  (if (>= max_width_height threshold)
      (if (>= width height)
          (split-window-horizontally)
        (split-window-vertically))
    (other-window 1))
  )


(blink-cursor-mode 0)
(custom-set-variables '(underline-minimum-offset 10))
(set-face-background 'highlight nil)
(set-face-foreground 'highlight nil)
(set-face-underline-p 'highlight "dark gray")
(global-hl-line-mode t)

(defun my-out-focused-mode-line()
  (set-face-background 'mode-line "black"))

(defun my-in-focused-mode-line()
  (set-face-foreground 'mode-line "white")
  (set-face-background 'mode-line "tomato")
  (set-face-background 'modeline-inactive "dim gray")
  (set-face-background 'default "#000010"))

(add-hook 'focus-out-hook 'my-out-focused-mode-line)
(add-hook 'focus-in-hook 'my-in-focused-mode-line)

(set-face-background 'cursor "yellow green")
(set-face-background 'show-paren-match "dark green")
(require 'bm)
(set-face-background 'bm-face "midnight blue")
(set-face-foreground 'bm-face nil)

;;package-listのformat
(define-derived-mode package-menu-mode tabulated-list-mode "Package Menu"
  "Major mode for browsing a list of packages.
Letters do not insert themselves; instead, they are commands.
\\<package-menu-mode-map>
\\{package-menu-mode-map}"
  (setq tabulated-list-format [("Package" 35 package-menu--name-predicate)
                               ("Version" 15 package-menu--version-predicate)
                               ("Status"  10 package-menu--status-predicate)
                               ("Description" 10 package-menu--description-predicate)])
  (setq tabulated-list-padding 1)
  (setq tabulated-list-sort-key (cons "Status" nil))
  (tabulated-list-init-header))
