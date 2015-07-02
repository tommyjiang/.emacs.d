; User information
(setq mew-proto "%")
(setq mew-name "江浩")
(setq mew-user "187355802")
(setq mew-mail-domain "qq.com")

; IMAP settings
(setq mew-imap-server "imap.qq.com")
(setq mew-imap-user "187355802@qq.com")
(setq mew-imap-auth t)
(setq mew-imap-ssl t)
(setq mew-imap-ssl-port "993")

; SMTP setting
(setq mew-smtp-auth t)
(setq mew-smtp-ssl t)
(setq mew-smtp-ssl-port "465")
(setq mew-smtp-user "187355802@qq.com")
(setq mew-smtp-server "smtp.qq.com")
; (setq smtp-auth-list "LOGIN")

; SSL verification
(setq mew-ssl-verify-level 0)
; Cache password
(setq mew-use-cached-passwd t)

;
(provide 'init-mew)
