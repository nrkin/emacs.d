(require 'smartparens-utils)

(sp-local-pair 'sp-lisp-modes "(" nil
               :pre-handlers '(spc-space-before-sexp)
               :post-handlers '(spc-space-after-sexp))

(sp-local-pair 'emacs-lisp-mode "(" nil
               :pre-handlers '(spc-space-before-sexp)
               :post-handlers '(spc-space-after-sexp))
