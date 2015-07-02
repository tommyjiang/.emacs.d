; Load evil mode
; (add-to-list 'load-path "~/.emacs.d/plugins/evil")
; (require 'evil)
(evil-mode 1) 

; Set evil mode of each mode 
(evil-set-initial-state 'calendar-mode 'emacs)
(evil-set-initial-state 'inferior-ess-mode 'emacs)
(evil-set-initial-state 'ess-watch-mode 'emacs)
(evil-set-initial-state 'git-commit-mode 'insert)
(evil-set-initial-state 'gnuplot-comint-mode 'emacs)

(add-to-list 'auto-mode-alist '("\\.gnu\\'" . gnuplot-mode))
;(evil-set-initial-state 'mew-summary-mode 'emacs)

; Makes Return to follow link work
(define-key evil-normal-state-map (kbd "RET") 'org-return)

; Ace jump in evil mode
(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-line-mode)
(define-key evil-normal-state-map (kbd "C-c SPC") 'ace-jump-char-mode)

; Map "jj" to ESC (back to normal mode)
(define-key evil-insert-state-map "j" #'cofi/maybe-exit)
 
(evil-define-command cofi/maybe-exit ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p)))
    (insert "j")
    (let ((evt (read-event (format "Insert %c to exit insert state" ?j)
               nil 0.5)))
      (cond
       ((null evt) (message ""))
       ((and (integerp evt) (char-equal evt ?j))
    (delete-char -1)
    (set-buffer-modified-p modified)
    (push 'escape unread-command-events))
       (t (setq unread-command-events (append unread-command-events
                          (list evt))))))))

;;
(provide 'init-evil)
