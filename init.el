(setq user-full-name "Nachiket Kakatkar")
(setq user-mail-address "nachiketkakatkar@gmail.com")

;; Setup folders
(setq root-dir (file-name-directory
                (or (buffer-file-name) load-file-name)))

(setq config-dir (file-name-as-directory (concat root-dir "configs")))
(setq tmp-dir (file-name-as-directory (concat root-dir "tmp")))
(setq backup-directory-alist `(("." . ,(expand-file-name
                                        (concat tmp-dir "backups")))))
(setq auto-save-file-name-transforms `((".*" ,(expand-file-name
                                               (concat tmp-dir "backups")))))

;; Start
(load-file (concat root-dir "packages.el"))
(load-file (concat root-dir "interface.el"))
(load-file (concat root-dir "key-bindings.el"))
(load-file (concat root-dir "system.el"))
(load-file (concat root-dir "global.el"))
(load-file (concat config-dir "init.el"))
