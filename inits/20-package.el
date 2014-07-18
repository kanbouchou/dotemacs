(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    auto-complete
    bash-completion
    color-theme
    cmake-mode
    git-gutter
    magit
    helm
    helm-ag
    helm-ag-r
    helm-git-files
    matlab-mode
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
