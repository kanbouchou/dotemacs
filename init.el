(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; el-get
(load-file "~/.emacs.d/init-el-get.el")

;; set keybind asap
(load-file "~/.emacs.d/init-keybinding.el")

(load-file "~/.emacs.d/init-diminish.el")
(load-file "~/.emacs.d/init-ag.el")
(load-file "~/.emacs.d/init-tags.el")
(load-file "~/.emacs.d/init-helm.el")
(load-file "~/.emacs.d/init-window.el")
(load-file "~/.emacs.d/init-highlight.el")

(load-file "~/.emacs.d/init-ediff.el")
(load-file "~/.emacs.d/init-ffap.el")
(load-file "~/.emacs.d/init-misc.el")
(load-file "~/.emacs.d/init-cc-mode.el")
(load-file "~/.emacs.d/init-company.el")
(load-file "~/.emacs.d/init-wgrep-ag.el")
(load-file "~/.emacs.d/init-fonts.el")
