(add-hook 'view-mode-hook
          (lambda ()
            (define-key view-mode-map "n" 'next-line)
            (define-key view-mode-map "p" 'previous-line)
            (define-key view-mode-map "j" 'next-line)
            (define-key view-mode-map "k" 'previous-line)
            (define-key view-mode-map "h" 'backward-char)
            (define-key view-mode-map "l" 'forward-char)
            (define-key view-mode-map "\n" nil)
            (define-key view-mode-map "\r" nil)))
