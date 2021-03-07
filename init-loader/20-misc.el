(setq history-length 10000) ;;; 履歴数を大きくする

(savehist-mode 1) ;;; ミニバッファの履歴を保存する

(setq recentf-max-saved-items 10000) ;;; 最近開いたファイルを保存する数を増やす

;;; hooks
;; (add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq save-place t)	    ; 前回編集していた場所を記憶
(recentf-mode t)	    ; 最近使ったファイル
(setq-default indent-tabs-mode nil)	; インデントに空白を使う

(setq compilation-scroll-output t) ;; コンパイルバッファの追跡
(setq compilation-skip-threshold 2) ;; skip warning, just move to errors. https://emacs.stackexchange.com/a/13647

(setq kill-whole-line t) ;;; 行の先頭でC-kを一回押すだけで行全体を消去する
(setq require-final-newline t) ;;; 最終行に必ず一行挿入する

(require 'server)
(unless (server-running-p)
  (server-start)
  )

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(delete-selection-mode 1) ; overwrite when yanking

(global-auto-revert-mode 1) ; バッファ自動再読み込み

;; use display-line-numbers if available because global-linum-mode is slow
(if (require 'display-line-numbers nil 'noerror)
    (global-display-line-numbers-mode t)
  (global-linum-mode t)
)

(require 'git-gutter-fringe)
(global-git-gutter-mode t)

(require 'smartparens-config)
(smartparens-global-mode t)

(fset 'yes-or-no-p 'y-or-n-p) ; y/n instead of yes/no

(require 'generic-x)

(global-anzu-mode t)

(yas-global-mode t)

;; no alarm bells
(setq ring-bell-function 'ignore)

;; highlight
(require 'highlight-symbol)
(setq highlight-symbol-idle-delay 0.2)
(add-hook 'prog-mode-hook 'highlight-symbol-mode)

;; qml-mode is not activated by deafult
(add-to-list 'auto-mode-alist '("\\.qml\\'" . qml-mode))

;; for seeing log files with colors
(defun display-ansi-colors ()
  (interactive)
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region (point-min) (point-max))))

;; slow mouse wheel scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))

;; junk file
(setq open-junk-file-format (format "%s/%s" (getenv "HOME") "junk/%Y/%m/%Y-%m-%d-%H%M%S."))

(require 'quickrun)
(quickrun-add-command "g++/profile"
  '((:command . "g++")
    (:exec    . ("%c -std=c++1z %o -o %e %s"
		 "time %e %a"))
    (:remove  . ("%e"))
    (:description . "Compile C++ file with g++ and execute with time"))
  :default "c++")
