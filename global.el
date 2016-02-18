(require 'yasnippet)
(require 'git-gutter)
(require 'smartparens-config)


;; Load default auto-complete configs
(ac-config-default)
(setq ac-comphist-file  (concat tmp-dir "ac-comphist.dat"))


;; Start smartparens mode
(smartparens-global-strict-mode)


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


;; y/n
(defalias 'yes-or-no-p 'y-or-n-p)


;; Tab fix
(setq-default tab-width 4
              standard-indent 4
              indent-tabs-mode nil
              show-trailing-whitespace t)


;; Setup ido-mode
(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-max-prospects 10)


;; Cleanup whitespace
(add-hook 'before-save-hook 'whitespace-cleanup)


;; Automatically save and restore sessions
(setq desktop-dirname             tmp-dir
      desktop-base-file-name      "emacs.desktop"
      desktop-base-lock-name      "lock"
      desktop-path                (list desktop-dirname)
      desktop-save                t
      desktop-files-not-to-save   "^$" ;reload tramp paths
      desktop-load-locked-desktop nil)
(desktop-save-mode 1)


;; Initialize yasnippets
(yas/initialize)
(setq yas/root-directory (concat root-dir "snippets"))
(yas/load-directory yas/root-directory)


;; Initialize Git-gutter
(global-git-gutter-mode t)
(custom-set-variables
 '(git-gutter:modified-sign "=")
 '(git-gutter:added-sign "+")
 '(git-gutter:deleted-sign "-"))
