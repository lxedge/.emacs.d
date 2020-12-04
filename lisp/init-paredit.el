;;; -*- lexical-binding: t -*-

(use-package paredit
  :straight
  (paredit :type git
	   :host github
	   :repo "emacsmirror/paredit")

  :init
  (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
  (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
  (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
  (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
  (add-hook 'scheme-mode-hook           #'enable-paredit-mode)

  :config
  (diminish 'paredit-mode "Par"))

(use-package paredit-everywhere
  :init
  (add-hook 'prog-mode-hook 'paredit-everywhere-mode))


(provide 'init-paredit)
