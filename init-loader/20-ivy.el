;; ivy設定
(require 'ivy)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(setq ivy-height 20)
(setq ivy-extra-directories nil)
(setq ivy-re-builders-alist
      '((t . ivy--regex-plus)))


;; disable ivy find-file
;; https://emacs.stackexchange.com/questions/45929/disable-ivy-for-find-file
(setq read-file-name-function
  (lambda (&rest args)
    (let ((completing-read-function #'completing-read-default))
      (apply #'read-file-name-default args))))

(define-key counsel-mode-map [remap find-file] nil)
