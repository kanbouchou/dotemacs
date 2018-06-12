(setq inhibit-startup-screen t)

(when window-system
  (scroll-bar-mode -1) ;  hide scroll bar
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
(set-face-underline-p 'highlight "SkyBlue4")
(global-hl-line-mode t)

(set-face-background 'default "#000010")
(set-face-background 'mode-line-inactive "#000020")
(set-face-foreground 'mode-line "white")
(set-face-background 'mode-line "midnightblue")

(defun out-focused-mode-line()
  (set-face-background 'mode-line "#000020"))
(defun mode-line-by-buffer-name(prev cur)
  (if (and (not (equal nil (buffer-file-name cur))) (string-match ".*\/review\/.*" (buffer-file-name cur)))
      (set-face-background 'mode-line "#004060")
    (set-face-background 'mode-line "midnightblue")))

(defun in-focused-mode-line()
  (set-face-background 'mode-line "midnightblue"))

(add-hook 'focus-out-hook 'out-focused-mode-line)
(add-hook 'focus-in-hook 'in-focused-mode-line)

(add-hook 'switch-buffer-functions 'mode-line-by-buffer-name)

(set-face-background 'cursor "dark green")
(set-face-background 'show-paren-match "skyblue4")
(set-face-background 'helm-selection "SteelBlue4")
(set-face-background 'region "#000080")
(set-face-background 'highlight-symbol-face "steel blue")
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

(add-to-list 'display-buffer-alist
                    `(,(rx bos "*helm" (* not-newline) "*" eos)
                         (display-buffer-in-side-window)
                         (inhibit-same-window . t)
                         (window-height . 0.4)))
