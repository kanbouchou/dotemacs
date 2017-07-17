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
      '(helm-source-ls-git
        helm-source-recentf
        helm-source-find-files
        helm-source-file-cache
        helm-source-files-in-current-dir
        helm-source-locate))

;;; helm-source-ls-git is nil until helm-ls-git-ls is invoked once.
;;; this is a work around to initialize it until issue is fixed
;;; https://github.com/emacs-helm/helm-ls-git/issues/47
(setq helm-source-ls-git-status
      (and (memq 'helm-source-ls-git-status helm-ls-git-default-sources)
           (helm-make-source "Git status" 'helm-ls-git-status-source
             :fuzzy-match helm-ls-git-fuzzy-match))
      helm-source-ls-git
      (and (memq 'helm-source-ls-git helm-ls-git-default-sources)
           (helm-make-source "Git files" 'helm-ls-git-source
             :fuzzy-match helm-ls-git-fuzzy-match))
      helm-source-ls-git-buffers
      (and (memq 'helm-source-ls-git-buffers helm-ls-git-default-sources)
           (helm-make-source "Buffers in git project" 'helm-source-buffers
             :header-name #'helm-ls-git-header-name
             :buffer-list (lambda () (helm-browse-project-get-buffers
                                      (helm-ls-git-root-dir)))
             :keymap helm-ls-git-buffer-map)))

;;; mlocate 0.23.1 doesn't have -A option. so overwrite default provided by helm-locate.el
(setq helm-locate-command "locate %s -e --regex %s")

;;; helm ag
(require 'helm-ag)
(setq helm-ag-base-command "ag --nocolor --nogroup -i")
(setq helm-ag-insert-at-point 'symbol)
(setq helm-ag-source-type 'file-line)

;;; helm-gtags
(require 'helm-gtags)
(setq helm-gtags-auto-update t)
(setq helm-gtags-read-only t)


(put 'helm-show-kill-ring 'delete-selection t) ; helm-show-kill-ring with delete selection mode

;;; don't use helm for these commands
(add-to-list 'helm-completing-read-handlers-alist '(find-file-read-only . nil))
