;; Remove menubar, toolbar, scrollbar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode t)

;; Maximize frame
(toggle-frame-maximized)

;; Theme
(load-theme 'tangotango t)

;; Initial message
(setq inhibit-startup-screen "f")
(setq initial-scratch-message "")
