;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

; Operating system
(defconst *is-mac* (eq system-type 'darwin))

; Startup time
;(require 'init-startup)

; melpa
(require 'init-melpa)
; GUI: Font, Theme, Cursor Color
(require 'init-GUI)
; Disable displaying line number in some major modes
(require 'linum-off)
; Simple settings from Wang Yin
(require 'init-simplewy)
; Calendar
(require 'init-cal)
; Traditional Chinese Calendar
(require 'init-cal-china-x)
; bbdb
(require 'init-bbdb)
; Org mode
(require 'init-org)
; Org Tommy
(require 'init-orgTommy)
; Auto-complete
(require 'init-autocomplete)
; ESS
; (require 'init-ess)
; Emmet
; (require 'init-emmet)
; AucTeX
(require 'init-auctex)
; Ess r-autoyas
; (require 'r-autoyas)
; (add-hook 'ess-mode-hook 'r-autoyas-ess-activate)
; slime
(require 'init-slime)
; mew
; (require 'init-mew)
; helm-bibtex
(require 'init-helm-bibtex)
; evil
(require 'init-evil)
; ace-jump-mode
; (require 'init-acejump)

; Global key shortcut
; Helm mode 
(helm-mode 1)
; Magit
(global-set-key (kbd "<f10>") 'magit-status)

; Company mode
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'org-mode-hook 'company-mode)

; LaTeX mode
; (add-to-list 'auto-mode-alist '("\\.tex$" . LaTeX-mode))

; No scroll bar and no fringe
(scroll-bar-mode -1)
(set-fringe-mode 0)

; Line number display format
(setq linum-format "%d ")

; Ledger
(autoload 'ledger-mode "ledger-mode" "A major mode for Ledger" t)
(add-to-list 'load-path (expand-file-name "/usr/local/Cellar/ledger/3.1/share/emacs/site-lisp/ledger"))
(add-to-list 'auto-mode-alist '("\\.ld$" . ledger-mode))

; Set enviroment variables
(setenv "HOME" "/Users/tommy")
(setenv "PATH" "/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Library/TeX/texbin")

; set the default file path
(setq default-directory "~/")

; Display time mode
(display-time-mode 0)

; helm-mode map tab
; (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action

; Abbrevs
; (setq abbrev-file-name "~/git/org/abbrev_defs")
; (setq-default abbrev-mode t)

; Maximize after startup
(toggle-frame-maximized)
(provide 'init)
; (custom-set-faces
;  ;; custom-set-faces was added by Custom.
;  ;; If you edit it by hand, you could mess it up, so be careful.
;  ;; Your init file should contain only one such instance.
;  ;; If there is more than one, they won't work right.
;  '(org-agenda-date-today ((t (:inherit org-agenda-date :weight bold))) t)
;  '(org-agenda-date-weekend ((t (:inherit org-agenda-date :foreground "#F47983" :weight bold))) t)
;  '(org-mode-line-clock ((t (:foreground "red" :box (:line-width -1 :style released-button)))) t)
;  '(org-scheduled-today ((t (:foreground "00FF00")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
