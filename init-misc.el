(setq history-length 10000) ;;; 履歴数を大きくする

(savehist-mode 1) ;;; ミニバッファの履歴を保存する

(setq recentf-max-saved-items 10000) ;;; 最近開いたファイルを保存する数を増やす

;;; hooks
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'volatile-highlights)
(volatile-highlights-mode t)

;;; use alias and environment variables from bash
(require 'bash-completion)
(bash-completion-setup)

(setq save-place t)	    ; 前回編集していた場所を記憶
(recentf-mode t)	    ; 最近使ったファイル
(setq-default indent-tabs-mode nil)	; インデントに空白を使う

(setq compilation-scroll-output t) ;; コンパイルバッファの追跡

(setq kill-whole-line t) ;;; 行の先頭でC-kを一回押すだけで行全体を消去する
(setq require-final-newline t) ;;; 最終行に必ず一行挿入する

(require 'server)
(unless (server-running-p)
  (server-start)
  )

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(require 'wdired)
(define-key dired-mode-map (kbd "C-x C-q") 'wdired-change-to-wdired-mode)

(delete-selection-mode 1)
