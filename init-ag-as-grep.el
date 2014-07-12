
(require 'grep)
(eval-when-compile (require 'cl))
(require 'thingatpt)

;; Use ag if the command was exist, otherwise use grep
(defvar grep-command-before-query
  (if (zerop (shell-command "which ag"))
      "ag --nogroup -a -S "
    ;; Recursive grep by -r
    "grep -nH -r -e "))

(defun grep-default-command ()
  (lexical-let*
      ((grep-read-from-point
        (let ((grep-command-before-target
               (concat grep-command-before-query
                       (shell-quote-argument (grep-tag-default)))))
          (cons (if buffer-file-name
                    (concat grep-command-before-target
                            " *."
                            (file-name-extension buffer-file-name))
                  (concat grep-command-before-target " ."))
                (1+ (length grep-command-before-target))))))
    grep-read-from-point))

(setq grep-command (cons (concat grep-command-before-query "\"\" .")
                         (+ (length grep-command-before-query) 2)))
