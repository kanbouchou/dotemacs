(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(custom-set-variables
 '(el-get-verbose t))

;; lock package version
(el-get-bundle tarao/el-get-lock)
(el-get-lock)

;; setup
(el-get-bundle emacs-jp/init-loader)
(el-get-bundle purcell/exec-path-from-shell)

;; appearance
(el-get-bundle emacs-jp/replace-colorthemes
  (add-to-list 'custom-theme-load-path default-directory))
(el-get-bundle diminish)
(el-get-bundle Fanael/rainbow-delimiters)
(el-get-bundle 10sr/switch-buffer-functions-el)

;; highlighting
(el-get-bundle col-highlight)
(el-get-bundle highlight-symbol)

;; search within buffer
(el-get-bundle syohex/emacs-anzu :name anzu)

;; search and edit multiple files
(el-get-bundle ag)
(el-get-bundle mhayashi1120/Emacs-wgrep :name wgrep)
(el-get-bundle wgrep-ag)

;; search web
(el-get-bundle google-this)

;; moving cursor
(el-get-bundle abo-abo/avy)

;; Pair
(el-get-bundle smartparens)

;; helm
(el-get-bundle helm)
(el-get-bundle helm-ag)
(el-get-bundle bm)
(el-get-bundle yasuyk/helm-bm)
(el-get-bundle helm-company)
(el-get-bundle kenbeese/helm-git-files)
(el-get-bundle helm-ls-git)
(el-get-bundle helm-swoop)

;; tag
;; (el-get-bundle rtags)
(el-get-bundle helm-gtags)

;; snippet
(el-get-bundle yasnippet)

;; Python
(el-get-bundle tkf/emacs-python-environment)
(el-get-bundle epc)
(el-get-bundle DarthFennec/highlight-indent-guides :name highlight-indent-guides-mode)

;; matlab
(el-get-bundle ruediger/matlab-emacs :name matlab-mode) ; default recipe uses cvs, which does not work behind proxy

;; Build tool
(el-get-bundle cmake-mode)

;; Markup language
(el-get-bundle markdown-mode)
(el-get-bundle yoshiki/yaml-mode)
(el-get-bundle cataska/qml-mode)

;; go
(el-get-bundle go-mode)

;; VCS
(el-get-bundle magit/transient)
(el-get-bundle magit/ghub)
(el-get-bundle magit/magit-popup)
(el-get-bundle magit/magit)
(add-to-list 'load-path (locate-user-emacs-file "el-get/magit/lisp")) ;; work around. doesn't work on some machines.
(require 'magit)

(el-get-bundle syohex/emacs-git-gutter-fringe :name git-gutter-fringe)
(el-get-bundle syohex/emacs-git-messenger :name git-messenger)

(el-get-bundle syohex/emacs-quickrun :name quickrun)

;; M-x
(el-get-bundle smex)

;; snippet
(el-get-bundle emacs-jp/helm-c-yasnippet)

;; misc
(el-get-bundle open-junk-file)

;; mode line
(el-get-bundle smart-mode-line)
