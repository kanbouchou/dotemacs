;;; 履歴数を大きくする
(setq history-length 10000)

;;; ミニバッファの履歴を保存する
(savehist-mode 1)

;;; 最近開いたファイルを保存する数を増やす
(setq recentf-max-saved-items 10000)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'volatile-highlights)
(volatile-highlights-mode t)
