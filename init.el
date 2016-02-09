(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))

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
