;; Load default auto-complete configs
(ac-config-default)

;; Start smartparens mode
(smartparens-strict-mode)

;; Start undo-tree
(global-undo-tree-mode)

;; Set up ace-jump-mode
(autoload 'ace-jump-mode 
  "ace-jump-mode" 
  "Emacs quick move minor mode"
  t)

(autoload 'ace-jump-mode-pop-mark 
  "ace-jump-mode" 
  "Ace jump back:-"
  t)

;; Setup ido-mode
(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-max-prospects 10)

;; Cleanup whitespace
(add-hook 'before-save-hook 'whitespace-cleanup)
