(setq inhibit-startup-screen t)

(require 'generic-x)
(windmove-default-keybindings)          ; Shift + 矢印キー でウィンドウ間移動

(global-font-lock-mode t)
(transient-mark-mode 1)			; 選択範囲に色を付ける

(require 'ansi-color)
(add-hook 'compilation-filter-hook
          '(lambda ()
             (ansi-color-apply-on-region (point-min) (point-max))))

;; theme
(require 'clarity-theme)
(load-theme 'clarity t)
(enable-theme 'clarity)
(setq frame-background-mode 'dark)

(defun other-window-or-split ()
  (interactive)
  (setq threshold 800)
  (setq width (window-body-width nil t))
  (setq height (window-body-height nil t))
  (setq max_width_height (max width height))
  (if (>= max_width_height threshold)
      (if (>= width height)
          (split-window-horizontally)
        (split-window-vertically))
    (other-window 1))
  )


(blink-cursor-mode 0)
(set-face-background 'highlight nil)
(set-face-foreground 'highlight nil)

(setq line-number-mode nil)
(setq column-number-mode nil)
(setq mode-line-percent-position nil)

(defun set-cursor(frame)
  (select-frame frame)
  (custom-set-variables '(underline-minimum-offset 10))
  (set-face-underline-p 'highlight "coral3")
  (set-face-background 'cursor "lime green")
  (custom-set-variables '(cursor-type (quote (hbar . 5))))
  )
(add-hook 'after-make-frame-functions 'set-cursor)
(set-cursor (selected-frame))

(global-hl-line-mode t)

(set-face-background 'default "#000010")


(set-face-background 'show-paren-match "skyblue4")
(set-face-background 'region "#000080")
;;(set-face-background 'highlight-symbol-face "steel blue")
(require 'bm)
(set-face-background 'bm-face "blue")
(custom-set-variables '(bm-highlight-style (quote bm-highlight-only-fringe)))

; (require 'highlight-indent-guides)
;(setq highlight-indent-guides-method 'character)
;(setq highlight-indent-guides-character ?\|)
;; (setq highlight-indent-guides-auto-odd-face-perc 15)
;; (setq highlight-indent-guides-auto-even-face-perc 15)
;; (setq highlight-indent-guides-auto-character-face-perc 20)
; (setq highlight-indent-guides-auto-enabled nil)
; (add-hook 'python-mode-hook 'highlight-indent-guides-mode)

;(set-face-background 'highlight-indent-guides-odd-face "darkgray")
; (set-face-foreground 'highlight-indent-guides-character-face "dimgray")
;(set-face-background 'highlight-indent-guides-even-face "dimgray")


; ok but slow
;; (setq highlight-indent-guides-method 'character)
;; (setq highlight-indent-guides-responsive 'stack)

;(setq highlight-indent-guides-auto-enabled t)
;(setq highlight-indent-guides-character ?\|)
