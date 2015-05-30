(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    ace-jump-mode
    ag
    anzu
    bash-completion
    color-theme
    company
    company-c-headers
    company-irony
    cmake-mode
    eldoc
    c-eldoc
    git-gutter+
    git-gutter-fringe+
    google-this
    helm
    helm-ag
    helm-ag-r
    helm-company
    helm-git-files
    helm-git-grep
    helm-gtags
    helm-ls-git
    hiwin
    irony-eldoc
    magit
    matlab-mode
    rainbow-delimiters
    rtags
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
