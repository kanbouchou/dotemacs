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


(load-file "~/.emacs.d/init-ag.el")
(load-file "~/.emacs.d/init-tags.el")
(load-file "~/.emacs.d/init-helm.el")
(load-file "~/.emacs.d/init-window.el")
(load-file "~/.emacs.d/init-highlight.el")
;;;(load-file "~/.emacs.d/init-ag-as-grep.el")

(load-file "~/.emacs.d/init-ediff.el")
(load-file "~/.emacs.d/init-ffap.el")
(load-file "~/.emacs.d/init-misc.el")
(load-file "~/.emacs.d/init-cc-mode.el")
(load-file "~/.emacs.d/init-keybinding.el")
;(load-file "~/.emacs.d/init-auto-complete.el")
(load-file "~/.emacs.d/init-company.el")
(load-file "~/.emacs.d/init-wgrep-ag.el")
;(load-file "~/.emacs.d/init-eldoc.el")

(load-file "~/.emacs.d/init-rainbow-mode.el")
