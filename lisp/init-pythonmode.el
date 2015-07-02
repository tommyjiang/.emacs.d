; Load python-mode
(add-to-list 'load-path "~/.emacs.d/lisp/init-pythonmode")
(require 'python-mode)

; Mode config for .py files
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

; Disable prompt on changed
(setq py-prompt-on-changed-p nil)

;;
(provide 'init-pythonmode)
