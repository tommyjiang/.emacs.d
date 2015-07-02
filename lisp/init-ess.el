; Load ESS
(add-to-list 'load-path "~/.emacs.d/plugins/ess-14.09/lisp")
(load "ess-site")

; ESS will not print the evaluated commands, also speeds up the evaluation 
(setq ess-eval-visibly nil) 

;if you don't want to be prompted each time you start an interactive R session
(setq ess-ask-for-ess-directory nil) 
(setq ess-directory "~/Documents/Geek/R")

;;
(provide 'init-ess)
