(require 'helm-ag-r)
(setq
 helm-ag-r-google-contacts-lang "ja_JP.UTF-8"
 helm-ag-r-option-list '("-S -U --hidden"
                         "-S -U -g")
 ;; 不安定な場合以下の項目を調整すれば
 ;; よくなるかもしれません
 ;; helm-ag-r-requires-pattern 3    ; 文字数以上入力してから検索
 ;; helm-ag-r-input-idle-delay 0.5  ; 検索をdelay後からおこなう
 ;; helm-ag-r-use-no-highlight t    ; ハイライト無効化
 helm-ag-r-candidate-limit 1000  ; 候補の上限を設定
 )
