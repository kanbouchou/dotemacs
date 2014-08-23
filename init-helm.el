;;; helm
(require 'helm-config)
(setq helm-buffer-max-length 40)

;;; helm git fiels
(require 'helm-git-files)
(defun my-helm-git-files ()
  "`helm' for opening files managed by Git."
  (interactive)
  (helm-other-buffer `(helm-git-files:modified-source
		       helm-git-files:all-source
		       helm-git-files:untracked-source
		       ,@(helm-git-files:submodule-sources
			  '(modified untracked all)))
		     "*helm for git files*"))

(require 'helm-ls-git)
;;; helm for files
(setq helm-for-files-preferred-list
      '(helm-source-buffers-list
        helm-source-bookmarks
        helm-source-recentf
        helm-source-ls-git
        helm-source-find-files
        helm-source-file-cache
        helm-source-files-in-current-dir
        helm-source-locate))

;;; helm ag
(require 'helm-ag)
(setq helm-ag-base-command "ag --nocolor --nogroup -i")
(setq helm-ag-insert-at-point 'symbol)
(setq helm-ag-source-type 'file-line)

;;; helm-ag-r
(require 'helm-ag-r)
(setq
 helm-ag-r-google-contacts-lang "ja_JP.UTF-8"
 helm-ag-r-option-list '("-S -U --hidden"
                         "-S -U -g")
 ;; 不安定な場合以下の項目を調整すれば
 ;; よくなるかもしれません
 helm-ag-r-requires-pattern 3    ; 文字数以上入力してから検索
 helm-ag-r-input-idle-delay 0.5  ; 検索をdelay後からおこなう
 ;; helm-ag-r-use-no-highlight t    ; ハイライト無効化
 helm-ag-r-candidate-limit 1000  ; 候補の上限を設定
 )

;;; helm-gtags
(require 'helm-gtags)
(setq helm-gtags-auto-update t)
(setq helm-gtags-read-only t)


(put 'helm-show-kill-ring 'delete-selection t) ; helm-show-kill-ring with delete selection mode
