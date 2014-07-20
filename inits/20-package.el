(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    bash-completion
    color-theme
    cmake-mode
    git-gutter
    magit
    helm
    helm-ag
    helm-ag-r
    helm-ls-git
    migemo
    yaml-mode
    volatile-highlights
    )
  )

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))
