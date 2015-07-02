; Simple settings from Wang Yin

; User information
(setq user-full-name "Jiang Hao")

; Disable noisable error sound
(setq visible-bell nil)

; Disable startup screen
(setq inhibit-startup-message t)

; For easy reading
(setq default-fill-column 80)

; For easy scrolling
(setq scroll-margin 3
      scroll-conservatively 10000)

; Default mode to text-mode
(setq default-major-mode 'text-mode)

; Display the other paren
(show-paren-mode t)
(setq show-paren-style 'parentheses)

; Avoid eye-binding from mouse when the cursor is near it
(mouse-avoidance-mode 'animate)

; Auto open and display image
(auto-image-file-mode)

; y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

; Display time, please
(display-time)

; Column and row number
(column-number-mode t)

; Highlight copy area
(transient-mark-mode t)

; Show paren mode
(show-paren-mode t)

; No toolbar
(tool-bar-mode -1)

; No temp file
(setq-default make-backup-files nil)

; Set warning time and display interval
(setq appt-message-warning-time '10)
(setq appt-display-interval '5)

; Set default directory
(setq default-directory "~")

; Windmove shortkeys
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

(provide 'init-simplewy)
