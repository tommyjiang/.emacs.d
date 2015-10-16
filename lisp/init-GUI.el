; Set default Font
(set-face-attribute
'default nil :font "Yahei Consolas Hybrid 20")
; Set fonts
(when *is-mac*
  (set-face-attribute
    'default nil :font "Inconsolata 24"))

(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
  charset
  (font-spec :family "Heiti SC")))

; (setq initial-frame-alist '((top . 0) (left . 0)))
; (add-to-list 'initial-frame-alist '(width . 120))
; (add-to-list 'initial-frame-alist '(height . 32))

; Set cursor color
(set-cursor-color "white")

; Cyberpunk theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'cyberpunk t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
; (load-theme 'solarized t)

; Recent file
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
; (global-set-key "\C-x\ \C-r" 'recentf-open-files)

; Default encoding priority
(prefer-coding-system 'gb2312)
(prefer-coding-system 'utf-8)

; Display line number
(global-linum-mode t)

; Disable tooltip mode to avoid hanging tooltip in mode line
(setq tooltip-use-echo-area t) 

;;
(provide 'init-GUI)
