(require 'helm-config)
(require 'helm-ag)

(setq helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
(setq helm-ag-insert-at-point 'symbol)
(setq helm-ag-source-type 'file-line)
