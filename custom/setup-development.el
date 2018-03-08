(provide 'setup-development)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GROUP: Development -> Projects -> gem5 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(c-add-style "m5"
	     '((c-basic-offset . 4)
               (indent-tabs-mode . nil)
	       (c-offsets-alist . ((substatement-open . 0)
				   (inline-open . 0)
				   (block-open . -4)
				   (case-label . 2)
				   (label . 2)
				   (statement-case-intro . 2)
				   (statement-case-open . 2)
				   (access-label . -2)
				   (innamespace . 0)))))
