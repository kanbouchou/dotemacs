(require 'package)
(setq package-user-dir "~/.emacs.d/elpa/")
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; ~/.emacs.d/site-lisp 以下全部読み込み
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))



(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")


(load-file "~/.emacs.d/helm-ag.el")
(load-file "~/.emacs.d/window.el")
(load-file "~/.emacs.d/highlight.el")
;(load-file "~/.emacs.d/grep-a-lot.el")
(load-file "~/.emacs.d/ag-as-grep.el")

(load-file "~/.emacs.d/keybinding.el")
(load-file "~/.emacs.d/ediff.el")
(load-file "~/.emacs.d/misc.el")

(global-git-gutter-mode +1)
