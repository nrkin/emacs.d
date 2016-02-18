(when (memq window-system '(mac ns))
  (setq magit-git-executable "/usr/local/bin/git"
        vc-git-program "/usr/local/bin/git"
        mac-command-modifier 'meta)
  (exec-path-from-shell-initialize))
