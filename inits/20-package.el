(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    ag
    anzu
    auto-highlight-symbol
    c-eldoc
    color-theme
    company
    company-c-headers
    company-irony
    cmake-mode
    diminish
    eldoc
    ess
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
    helm-swoop
    hiwin
    irony-eldoc
    magit
    markdown-mode
    matlab-mode
    mozc
    polymode
    rtags
    smartparens
    smex
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
