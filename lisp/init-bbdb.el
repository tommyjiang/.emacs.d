; Load bbdb
; (require 'bbdb-loaddefs "~/.emacs.d/plugins/bbdb/bbdb-loaddefs.el")
(require 'bbdb)

;; file where things will be saved
(setq bbdb-file "~/org/bbdb")
;(setq bbdb-print-tex-path "~/.emacs.d/plugins/bbdb")
(setq bbdb-print-tex-path "/usr/local/share/bbdb")

;; initialization
(bbdb-initialize 'gnus 'message)
(bbdb-mua-auto-update-init 'gnus 'message)

;; size of the bbdb popup
(setq bbdb-pop-up-window-size 10)

;; What do we do when invoking bbdb interactively
(setq bbdb-mua-update-interactive-p '(query . create))

;; Make sure we look at every address in a message and not only the
;; first one
(setq bbdb-message-all-addresses t)

;; use ; on a message to invoke bbdb interactively
(add-hook
 'gnus-summary-mode-hook
 (lambda ()
   (define-key gnus-summary-mode-map (kbd ";") 'bbdb-mua-edit-field)
   ))

(provide 'init-bbdb)
