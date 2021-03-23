
(when window-system
  (scroll-bar-mode -1) ;  hide scroll bar
  (menu-bar-mode -1) ; メニューバーを消す
  (tool-bar-mode -1) ; ツールバーを消す
)
(set-face-background 'mode-line-inactive "#000020")
(set-face-foreground 'mode-line "white")
(set-face-background 'mode-line "midnightblue")


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
(require 'smart-mode-line)
(defvar sml/no-confirm-load-theme t)
(setq sml/no-confirm-load-theme t)
(sml/setup)
