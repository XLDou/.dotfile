(setq inhibit-startup-message t)
;;setting up packages
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                     ("marmalade" . "http://marmalade-repo.org/packages/")
                     ("melpa" . "http://melpa.org/packages/")))
(setq package-check-signature nil)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)
(use-package which-key
  :ensure t
  :config (which-key-mode))


;;org-mode
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda() (org-bullets-mode 1))))

;;activing evil mode
(require 'evil)
(evil-mode 1)


;;my color scheme
(load-theme 'zenburn t)


;;add color to member method
(font-lock-add-keywords 'c++-mode
 `((,(concat
   "\\<[_a-zA-Z][_a-zA-Z0-9]*\\>"       ; Object identifier
   "\\s *"                              ; Optional white space
   "\\(?:\\.\\|->\\)"                   ; Member access
   "\\s *"                              ; Optional white space
   "\\<\\([_a-zA-Z][_a-zA-Z0-9]*\\)\\>" ; Member identifier
   "\\s *"                              ; Optional white space
   "(")                                 ; Paren for method invocation
   1 'font-lock-function-name-face t)))

(use-package auctex-latexmk
  :ensure t
  :init
  (with-eval-after-load 'tex
    (auctex-latexmk-setup))
  :config

  ;; Use Latexmk as the default command.
  ;; (We have to use a hook instead of `setq-default' because AUCTeX sets this variable on mode activation.)
  (defun my-tex-set-latexmk-as-default ()
    (setq TeX-command-default "LatexMk"))
  (add-hook 'TeX-mode-hook #'my-tex-set-latexmk-as-default)

  ;; Compile to PDF when `TeX-PDF-mode' is active.
  (setq auctex-latexmk-inherit-TeX-PDF-mode t))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (magit auctex-latexmk auctex zenburn-theme zenburn solarized-theme evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
