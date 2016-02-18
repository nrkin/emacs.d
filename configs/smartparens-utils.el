(require 'smartparens)


(defun spc-space-before-sexp (id action _context)
  (when (eq action 'insert)
    (save-excursion
      (backward-char (length id))
      (when (or (eq (char-syntax (preceding-char)) ?w)
                (looking-at (sp--get-closing-regexp)))
        (insert " ")))))


(defun spc-space-before-sexp-and-cparen (id action _context)
  (when (eq action 'insert)
    (save-excursion
      (backward-char (length id))
      (when (or (eq (char-syntax (preceding-char)) ?w)
                (looking-at (sp--get-closing-regexp))
                (eq (preceding-char) 41))
        (insert " ")))))


(defun spc-space-after-sexp (id action _context)
  (when (eq action 'insert)
    (save-excursion
      (forward-char (length (plist-get (sp-get-pair id) :close)))
      (when (or (eq (char-syntax (following-char)) ?w)
                (looking-at (sp--get-opening-regexp)))
        (insert " ")))))


(provide 'smartparens-utils)
