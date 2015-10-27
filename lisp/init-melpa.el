; Melpa settings
(require 'package)

; General archives
; (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
; Stable archives
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
; Org mode archives
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; lisp related settings
; highlight defined mode in lisp mode
(add-hook 'lisp-mode-hook 'highlight-defined-mode)

; lisp-extra-font-lock-mode
(lisp-extra-font-lock-global-mode 1)

;; yasnippet
; (yas-global-mode 1)
; (setq yas-snippet-dirs "~/.emacs.d/elpa/yasnippet-0.9.0.1/snippets")

; ESS
(load "ess-site")

; ESS will not print the evaluated commands, also speeds up the evaluation 
(setq ess-eval-visibly nil) 

;if you don't want to be prompted each time you start an interactive R session
(setq ess-ask-for-ess-directory nil) 
(setq ess-directory "~/Documents/Geek/R")
; Enable r-autoyas to complete R code
; (require 'r-autoyas)
(add-hook 'ess-mode-hook 'r-autoyas-ess-activate)

; Turn on expansion of user-defined fucntions
(setq r-autoyas-expand-package-functions-only nil)

; Do not remove explicit assignments when using r-autoyas
(setq r-autoyas-remove-explicit-assignments nil)

; ESS highlight
(setq ess-R-font-lock-keywords
  '((ess-fl-keyword:fun-calls . t)
    (ess-fl-keyword:numbers . t)
    (ess-fl-keyword:operators . t)
    (ess-fl-keyword:delimiters . t)
    (ess-fl-keyword:= . t)
    (ess-R-fl-keyword:F&T . t)))

(setq inferior-R-font-lock-keywords
  '((ess-fl-keyword:fun-calls . t)
    (ess-fl-keyword:numbers . t)
    (ess-fl-keyword:operators . t)
    (ess-fl-keyword:delimiters . t)
    (ess-fl-keyword:= . t)
    (ess-R-fl-keyword:F&T . t)))

; (add-hook 'ess-R-post-run-hook
;           (lambda () (set-buffer-process-coding-system
;                       'zh_CN.UTF-8 'zh_CN.UTF-8)))

; Markdown mode
(autoload 'markdown-mode "markdown-mode"
	"Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'". markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'". markdown-mode))

; Smart mode line
;; These two lines are just examples
; (setq powerline-arrow-shape 'curve)
; (setq powerline-default-separator-dir '(right . left))
; ;; These two lines you really need.
; (setq sml/theme 'powerline)
(setq sml/no-confirm-load-theme t)
(setq sml/theme 'dark)
(sml/setup)

; hydra key bindings
(defhydra hydra-global-org (:color blue :hint nil)

  "
^Magit^        ^Clock^         ^Capture^
--------------------------------------------------
_s_ status     _i_ clock in    _c_ capture
_l_ log        _o_ clock out   
"
  ("s" magit-status)
  ("l" magit-log)

  ("i" bh/punch-in :color red)
  ("o" bh/punch-out :color red)
  
  ("c" org-capture)
)

(global-set-key (kbd "<f5>") 'hydra-global-org/body)

; mmm mode
(require 'mmm-mode)
 
; ; Markdown + TeX
; (mmm-add-classes
; '((markdown-TeX
; :submode LaTeX-mode
; :face mmm-declaration-submode-face
; :front "^```TeX[\n\r]+"
; :back "^```$")))

; Markdown + HTML
; (mmm-add-classes
; '((markdown-HTML
; :submode js2-mode
; :face mmm-declaration-submode-face
; :front "^<!-- -->[\n\r]+"
; :back "^<!-- end -->$")))

; (setq mmm-global-mode 't)
; (setq js2-strict-missing-semi-warning nil)
; (mmm-add-mode-ext-class 'markdown-mode nil 'markdown-HTML)

; anzu mode
(global-anzu-mode +1)

; helm find file
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)

; Magit push 
(setq magit-push-always-verify nil)

; Set env the same as OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

; Swiper
(global-set-key (kbd "C-s") 'swiper)

;;
(provide 'init-melpa)
