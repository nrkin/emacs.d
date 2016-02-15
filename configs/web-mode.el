(require 'web-mode)

(eval-after-load 'web-mode
  '(progn (setq web-mode-code-indent-offset 2)
          (setq web-mode-markup-indent-offset 2)
          (setq web-mode-indent-style 2)
          (setq web-mode-enable-auto-quoting nil)
          (font-lock-add-keywords
           'web-mode `(("\\(function\s\\)("
                        (0 (progn (compose-region (match-beginning 1)
                                                  (match-end 1) "ƒ")
                                  nil)))))))

(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

(defun web-mode-hook ()
  (setq web-mode-ac-sources-alist
        '(("css" . (ac-source-words-in-buffer ac-source-css-property))
          ("html" . (ac-source-words-in-buffer ac-source-abbrev))
          ("jsx" . (ac-source-words-in-buffer ac-source-words-in-same-mode-buffers))
          ("js" . (ac-source-words-in-buffer ac-source-words-in-same-mode-buffers)))))


(add-hook 'web-mode-hook 'web-mode-hook)

(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . web-mode))