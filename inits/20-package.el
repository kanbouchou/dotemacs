(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    ag
    bash-completion
    color-theme
    company
    company-c-headers
    company-irony
    cmake-mode
    flycheck
    git-gutter+
    git-gutter-fringe+
    helm
    helm-ag
    helm-ag-r
    helm-company
    helm-git-files
    helm-git-grep
    helm-gtags
    helm-ls-git
    magit
    matlab-mode
    smartparens
    volatile-highlights
    wgrep-ag
    yaml-mode
    )
  )

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))
