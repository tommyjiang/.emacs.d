; Load color theme
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))

;;
(provide 'init-color-theme)
