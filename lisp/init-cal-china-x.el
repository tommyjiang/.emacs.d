; Load cal-china-x
(require 'cal-china-x)

; Default settings for Tranditional Chinese Calendar
; (setq mark-holidays-in-calendar t)
(setq cal-china-x-important-holidays cal-china-x-chinese-holidays)
(setq calendar-holidays cal-china-x-important-holidays)

;;
(provide 'init-cal-china-x)
