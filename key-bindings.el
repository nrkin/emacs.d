(require 'yasnippet)
(require 'smartparens)
(require 'ace-jump-mode)

;; Revert
(global-set-key (kbd "<f5>") 'revert-buffer)

;; Jumping
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "M-j") 'pop-to-mark-command)

;; Rgrep
(global-set-key (kbd "M-R") 'rgrep)

;; Manipulation
(global-set-key (kbd "C-x ^") 'join-line)
(global-set-key (kbd "C-M-h") 'backward-kill-word)
(global-set-key (kbd "C-.") 'delete-region)

;; Clipboard related
(global-set-key (kbd "C-w") 'clipboard-kill-region)
(global-set-key (kbd "M-w") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-y") 'clipboard-yank)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; Smex bindings
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Zooming
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Ace jump bindings
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;; Yas bindings
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "<backtab>") 'yas-expand) ;; shift+tab
(define-key yas-minor-mode-map (kbd "C-c e") 'yas-expand)

;; Smartparens
(define-key smartparens-mode-map (kbd "C-M-<backspace>") 'sp-splice-sexp-killing-backward)


;; Alignment
(global-set-key (kbd "C-M-;")
                (lambda (b e)
                  (interactive "r")
                  (align-regexp b e "\\(\\s-*\\):" 1 1)))
