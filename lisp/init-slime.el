(require 'slime)

; Set sbcl path
(setq inferior-lisp-program (executable-find "sbcl"))

(slime-setup '(slime-fancy slime-repl))
(require 'slime-autoloads)

; Slime mode
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode 1)))

; Slime settings
(setq lisp-indent-function 'common-lisp-indent-function
      slime-complete-symbol-function 'slime-fuzzy-complete-symbol
      slime-enable-evaluate-in-emacs t
      slime-fuzzy-completion-in-place nil)

; ac-slime settings
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
    '(add-to-list 'ac-modes 'slime-repl-mode))

; Indent
(add-hook 'lisp-mode-hook '(lambda ()
  (local-set-key (kbd "C-j") 'newline-and-indent)
  ;(local-set-key (kbd "RET") (key-binding (kbd "C-j")))
  ))
(setq-default tab-width 2)

; Load quicklisp/slime-helper
; (load (expand-file-name "~/quicklisp/slime-helper.el"))

; Swap () and [] keys
; (define-key key-translation-map [?\(] [?\[] )
; (define-key key-translation-map [?\[] [?\(] )
; (define-key key-translation-map [?\)] [?\]] )
; (define-key key-translation-map [?\]] [?\)] )



; Common lisp style
; (setq common-lisp-style-default "modern")

;;
(provide 'init-slime)
