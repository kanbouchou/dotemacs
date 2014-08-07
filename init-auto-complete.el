;; auto-complete
(when (require 'auto-complete-config)
  (ac-config-default)
  (global-auto-complete-mode t)
  ;; カスタマイズ
  ;; http://cx4a.org/software/auto-complete/manual.ja.htm
  (setq ac-dwim t)
  (setq ac-auto-start 2) ;; n文字以上の単語の時に補完を開始
  (setq ac-delay 0.05)  ;; n秒後に補完開始
  (setq ac-use-fuzzy t)  ;; 曖昧マッチ有効
  (setq ac-use-comphist t)  ;; 補完推測機能有効
  (setq ac-auto-show-menu 0.05)  ;; n秒後に補完メニューを表示
  (setq ac-use-quick-help t)
  (setq ac-quick-help-delay 0.5)  ;; n秒後にクイックヘルプを表示
  (setq ac-ignore-case nil)  ;; 大文字・小文字を区別する
  (setq ac-menu-height 20) ;; 20行分表示
  (add-to-list 'ac-modes 'eshell-mode)
  (add-to-list 'ac-modes 'python-mode)
  (add-to-list 'ac-modes 'cmake-mode)
  (delq 'xml-mode ac-modes)             ; 巨大なdaeファイルを編集時に重くなるので

  (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
  )

(require 'auto-complete-clang)
(defun my-ac-config ()
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers)))

(defun my-ac-cc-mode-setup ()
    (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources))
    (setq ac-clang-prefix-header "~/.emacs.d/pch/stdafx.pch")
      (setq ac-clang-flags (append
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
")) ac-clang-flags )))
(add-hook 'c-mode-hook 'my-ac-cc-mode-setup)
(add-hook 'c++-mode-hook 'my-ac-cc-mode-setup)

(my-ac-config)
