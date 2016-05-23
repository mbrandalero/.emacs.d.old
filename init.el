;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; Package manager ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(add-to-list
 'package-archives
 '("melpa" . "http://melpa.org/packages/")
 t)
;; Set up load paths
(package-initialize)

;; Add custom modules path
(add-to-list 'load-path "~/.emacs.d/custom/")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; Custom modules ;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package install-these-packs)
    (unless (package-installed-p package)
      (package-install package))))

(defconst install-these-packs
  '(volatile-highlights
    yasnippet
    nyan-mode
    indent-guide))

(install-packages)

(require 'setup-applications)
(require 'setup-communication)
(require 'setup-convenience)
(require 'setup-data)
(require 'setup-development)
(require 'setup-editing)
(require 'setup-environment)
(require 'setup-external)
(require 'setup-faces-and-ui)
(require 'setup-files)
(require 'setup-help)
(require 'setup-helm)
(require 'setup-programming)
(require 'setup-text)
(require 'setup-local)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; Other configs ;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Replace common buffer view by ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(defalias 'list-buffers 'ibuffer)

;; Line wrap - or visual line mode
(global-visual-line-mode 1)

;; Smooth scrolling
(setq scroll-step 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;; Smooth scroll ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(require 'smooth-scroll)
;(smooth-scroll-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; indent-guide ;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'indent-guide)
(indent-guide-global-mode)
(setq indent-guide-recursive t)
