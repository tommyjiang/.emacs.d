; helm-bibtex
; Bib path
(setq helm-bibtex-bibliography '("~/Documents/Work/论文/MPC.bib"
                                 "~/Documents/Work/论文/Wind.bib"
                                 "~/Documents/爱好/期刊/Common.bib"))

; PDF path
(setq helm-bibtex-library-path '("~/Documents/Work/论文/PDF/" 
                                 "~/Documents/爱好/期刊/Nature"))

; Note path
(setq helm-bibtex-notes-path "~/Documents/Work/Papers/Notes/")

; PDF open tool
(setq helm-bibtex-pdf-open-function 'helm-open-file-with-default-tool)

; helm-bibtex shortkey
(global-set-key (kbd "C-c h") 'helm-bibtex)

;; 
(provide 'init-helm-bibtex)
