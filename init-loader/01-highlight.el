;;; 対応する括弧を光らせる。
(show-paren-mode 1)
;;; ウィンドウ内に収まらないときだけ括弧内も光らせる。
(setq show-paren-style 'mixed)

;;; カーソルの位置が何文字目かを表示する
(column-number-mode t)

;;; カーソルの位置が何行目かを表示する
(line-number-mode t)

;;; カーソルの場所を保存する
(require 'saveplace)
(setq-default save-place t)

;;; which-function-modeを大きなpythonファイルで使うと重くなる
;;; https://github.com/bbatsov/prelude/issues/703
(which-function-mode 0)

;;; spelling check
;(setq-default flyspell-mode t)
(setq ispell-dictionary "american")
