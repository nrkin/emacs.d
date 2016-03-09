(require 'clojure-mode)
(require 'idle-highlight-mode)

(eval-after-load 'clojure-mode
  '(font-lock-add-keywords
    'clojure-mode `(("(\\(fn\\)[\[[:space:]]"
                     (0 (progn (compose-region (match-beginning 1)
                                               (match-end 1) "λ")
                               nil)))
                    ("\\(#\\)("
                     (0 (progn (compose-region (match-beginning 1)
                                               (match-end 1) "ƒ")
                               nil)))
                    ("\\(#\\){"
                     (0 (progn (compose-region (match-beginning 1)
                                               (match-end 1) "∈")
                               nil))))))

(add-hook 'clojure-mode-hook (idle-highlight-mode t))
