;; remove company-clang--handle-error from company-clang.el
;; otherwise it hangs when clang fails to autocomplete

(require 'company)

(defun my-company-cc-mode-setup ()
  (setq company-clang-arguments
        (mapcar (lambda (item)(concat "-I" item))
                (split-string
                 "
 /usr/include/c++/4.8
 /usr/include/i386-linux-gnu/c++/4.8
 /usr/include/c++/4.8/backward
 /usr/lib/gcc/i686-linux-gnu/4.8/include
 /usr/local/include
 /usr/lib/gcc/i686-linux-gnu/4.8/include-fixed
 /usr/include/i386-linux-gnu
 /usr/include
 /usr/lib/llvm-3.4/include
")))
  (add-to-list 'company-dabbrev-code-modes 'c++-mode)
  (setq company-idle-delay 0)
)

(add-hook 'c-mode-hook 'my-company-cc-mode-setup)
(add-hook 'c++-mode-hook 'my-company-cc-mode-setup)

(global-company-mode t)

(eval-after-load 'company
  '(progn
     (define-key company-mode-map [C-tab] 'helm-company)
     (define-key company-active-map [C-tab] 'helm-company)))
