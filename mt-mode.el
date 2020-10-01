;;;; A Simple major mode for editing mt code
;;;; Copyright (C) 2020 Ramsay Carslaw

;;; Let users add thier own hooks
(defvar mt-mode-hook nil)

;;; All the syntax highlighting
(setq mt-font-lock-keywords
      (let* (
             (x-keywords '("if" "else" "for" "while" "fn" "class" "return" "var"))
             (x-functions '("read" "write" "clock" "input" "exit" "clear" "Cd" "Ls" "printf" "println" "color" "append" "delete" "len"))

             (x-keywords-regexp (regexp-opt x-keywords 'words))
             (x-functions-regexp (regexp-opt x-functions 'words)))
        `(
          (,x-functions-regexp . font-lock-function-name-face)
          (,x-keywords-regexp . font-lock-keyword-face)
          )))

(define-derived-mode mt-mode c-mode "mt mode"
  "Major mode for editing mt code"
  (setq font-lock-defaults '((mt-font-lock-keywords))))

(provide 'mt-mode)


