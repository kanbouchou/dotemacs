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
