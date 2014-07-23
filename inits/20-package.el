(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    ag
    auto-complete
    bash-completion
    color-theme
    cmake-mode
    git-gutter
    git-gutter-fringe
    magit
    helm
    helm-ag
    helm-ag-r
    helm-git-files
    helm-gtags
    matlab-mode
    migemo
    wgrep-ag
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
