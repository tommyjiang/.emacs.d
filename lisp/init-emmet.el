; Enable Emmet-mode (advanced zencoding mode for Emacs)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

; Cancel the indented region by markup mode
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indent-after-insert nil)))

; Set custom indent level 
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent 2 spaces.

; Set cursor to the first empty quotes 
(setq emmet-move-cursor-between-quotes t) ;; default nil

; Disable auto-fill column in sgml mode
(add-hook 'sgml-mode-hook
          (lambda ()
            (set-fill-column 99999)))

;; 
(provide 'init-emmet)
