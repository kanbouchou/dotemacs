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

;; counsel-git-grep search thing at point
(defun my-ivy-with-thing-at-point (cmd &optional dir)
  "Wrap a call to CMD with setting "
  (let ((ivy-initial-inputs-alist
         (list
          (cons cmd (thing-at-point 'symbol)))))
    (funcall cmd nil dir)))

(defun counsel-git-grep-at-point ()
  (interactive)
  (my-ivy-with-thing-at-point
   'counsel-git-grep))


;; use fuzzy matcher
;; https://oremacs.com/2016/01/06/ivy-flx/
(setq ivy-re-builders-alist
      '((ivy-switch-buffer . ivy--regex-plus)
        (t . ivy--regex-fuzzy)))
(setq ivy-initial-inputs-alist nil)
