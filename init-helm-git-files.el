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
