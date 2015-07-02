; ace jump mode major function
(add-to-list 'load-path "~/.emacs.d/plugins")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)

; enable a more powerful jump back function from ace jump mode
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

; Evil mode
(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)

;;
(provide 'init-acejump)
