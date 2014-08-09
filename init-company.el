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
"))))
(add-hook 'c-mode-hook 'my-company-cc-mode-setup)
(add-hook 'c++-mode-hook 'my-company-cc-mode-setup)
(global-company-mode t)
