
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(unless load-file-name
  (cd (getenv "HOME")))

(require 'cl-lib)

(when load-file-name
  (setq-default user-emacs-directory (file-name-directory load-file-name)))

(load (concat user-emacs-directory "init-el-get.el"))

;; init-loader
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ag-highlight-search t)
 '(ag-reuse-buffers (quote nil))
 '(ag-reuse-window (quote nil))
 '(counsel-projectile-ag-initial-input (quote (ivy-thing-at-point)))
 '(cursor-type "hollow")
 '(el-get-verbose t)
 '(init-loader-show-log-after-init (quote error-only))
 '(underline-minimum-offset 10))
(init-loader-load (concat user-emacs-directory "init-loader"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-indent-guides-character-face ((t (:foreground "#000043")))))
