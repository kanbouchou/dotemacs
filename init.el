
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
 '(rg-highlight-search t)
 '(rg-reuse-buffers (quote nil))
 '(rg-reuse-window (quote nil))
 '(bm-highlight-style (quote bm-highlight-only-fringe))
 '(counsel-projectile-rg-initial-input (quote (ivy-thing-at-point)))
;; '(cursor-type (quote (hbar . 5)))
 '(el-get-verbose t)
 '(highlight-indent-guides-method (quote bitmap))
 '(highlight-indent-guides-responsive (quote top))
 '(init-loader-show-log-after-init (quote error-only))
 '(underline-minimum-offset 10))
(init-loader-load (concat user-emacs-directory "init-loader"))
(setq highlight-indent-guides-bitmap-function 'highlight-indent-guides--bitmap-line)
((t
  (:underline
   (:color foreground-color :style line))))

(setq counsel-rg-base-command "rg --max-columns 5000 --with-filename --no-heading --line-number --color never %s")
