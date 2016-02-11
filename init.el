(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.org/packages/"))
  (package-refresh-contents)
  (package-initialize)
  (package-install 'el-get)
  (require 'el-get))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(add-to-list 'custom-theme-load-path
             (file-name-as-directory "~/.emacs.d/el-get/replace-colorthemes"))

(load-file "~/.emacs.d/init-el-get.el")
(load-file "~/.emacs.d/init-diminish.el")
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
(load-file "~/.emacs.d/init-fonts.el")
