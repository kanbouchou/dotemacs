;;; 履歴数を大きくする
(setq history-length 10000)

;;; ミニバッファの履歴を保存する
(savehist-mode 1)

;;; 最近開いたファイルを保存する数を増やす
(setq recentf-max-saved-items 10000)

;;; hooks
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'volatile-highlights)
(volatile-highlights-mode t)

;;; use alias and environment variables from bash
(require 'bash-completion)
(bash-completion-setup)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(require 'wdired)
(define-key dired-mode-map (kbd "C-x C-q") 'wdired-change-to-wdired-mode)
