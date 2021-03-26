(when window-system
  (scroll-bar-mode -1) ;  hide scroll bar
  (menu-bar-mode -1) ; メニューバーを消す
  (tool-bar-mode -1) ; ツールバーを消す
)

(require 'doom-modeline)
(doom-modeline-mode 1)
(setq doom-modeline-project-detection 'projectile)
(setq doom-modeline-buffer-file-name-style 'truncate-upto-project)
(setq doom-modeline-buffer-encoding nil)
(setq doom-modeline-icon (display-graphic-p))
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-buffer-state-icon t)
(setq doom-modeline-buffer-modification-icon t)
(setq doom-modeline-unicode-fallback nil)
(setq doom-modeline-minor-modes nil)
(setq doom-modeline-buffer-encoding t)
(setq doom-modeline-vcs-max-length 12)
(setq doom-modeline-workspace-name t)
(setq doom-modeline-persp-icon t)
(setq doom-modeline-irc-stylize 'identity)
(setq doom-modeline-height 10)
(setq doom-modeline-icon nil)

(require 'doom-themes)
(load-theme 'doom-tomorrow-night t)

(require 'delight)
(delight 'rainbow-mode)
(delight 'emacs-lisp-mode :major)
(delight 'c++-mode :major)
(delight 'python-mode :major)


(require 'symbol-overlay)
(define-globalized-minor-mode my-global-symbol-overlay-mode symbol-overlay-mode
  (lambda () (symbol-overlay-mode 1)))
(my-global-symbol-overlay-mode 1)
