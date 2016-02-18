(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "M-g") 'goto-line)

(global-set-key (kbd "C-w") 'clipboard-kill-region)
(global-set-key (kbd "M-w") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-y") 'clipboard-yank)

(global-set-key (kbd "M-R") 'rgrep)
(global-set-key (kbd "C-x ^") 'join-line)
(global-set-key (kbd "M-j") 'pop-to-mark-command)

(global-set-key (kbd "<f5>") 'revert-buffer)

(global-set-key (kbd "C-M-h") 'backward-kill-word)
(global-set-key (kbd "C-.") 'delete-region)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; align on :
(global-set-key (kbd "C-M-;")
                (lambda (b e)
                  (interactive "r")
                  (align-regexp b e "\\(\\s-*\\):" 1 1)))
