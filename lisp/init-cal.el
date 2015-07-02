; Set latitude, longitude and location time
(setq calendar-latitude 40.01)
(setq calendar-longitude 116.3)
(setq calendar-location-time "Beijing, China")

; Emacs calendar with week numbers

; Need to set week start day to 1 first
(setq calendar-week-start-day 1)

(setq calendar-intermonth-text
      '(propertize
        (format "%2d"
                (car
                 (calendar-iso-from-absolute
                  (calendar-absolute-from-gregorian (list month day year)))))
        'font-lock-face 'font-lock-warning-face))

(setq calendar-intermonth-header
      (propertize "Wk"                  
                  'font-lock-face 'font-lock-keyword-face))

; Display weekend days in color
(defadvice calendar-generate-month
  (after highlight-weekend-days (month year indent) activate)
  "Highlight weekend days"
  (dotimes (i 31)
    (let ((date (list month (1+ i) year)))
      (if (or (= (calendar-day-of-week date) 0)
              (= (calendar-day-of-week date) 6))
          (calendar-mark-visible-date date 'font-lock-keyword-face)))))

;;
(provide 'init-cal)
