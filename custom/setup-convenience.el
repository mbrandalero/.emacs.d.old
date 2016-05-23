(provide 'setup-convenience)

;; GROUP: Convenience -> Revert
;; update any change made on file to the current buffer
(global-auto-revert-mode)

;; GROUP: Convenience -> Ibuffer
(setq ibuffer-use-other-window t) ;; always display ibuffer in another window

;; GROUP: Convenience -> Linum
(add-hook 'prog-mode-hook 'linum-mode) ;; enable linum only in programming modes

;; Enable transient mark mode
(transient-mark-mode 1)

;; Show column number
(setq column-number-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;; Auto-complete ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
