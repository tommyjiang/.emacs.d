; Enable yasnippet mode
; (add-to-list 'load-path "~/.emacs.d/el-get/yasnippet")
; (yas-global-mode 1)
; (setq yas-snippet-dirs "~/.emacs.d/el-get/yasnippet/snippets")

; Enable autocomplete mode
(require 'auto-complete-config)
(global-auto-complete-mode t)
; (setq ac-use-quick-help t)
(setq ac-fuzzy-enable t)
(setq-default ac-sources '( ac-source-yasnippet
                            ac-source-words-in-all-buffer
                            ac-source-functions
                            ac-source-variables
                            ac-source-symbols
                            ac-source-features
                            ac-source-words-in-same-mode-buffers))

;;
(provide 'init-autocomplete)
