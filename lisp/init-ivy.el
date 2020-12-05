;;; -*- lexical-binding: t -*-

(use-package ivy
  :init
  (add-hook 'after-init-hook 'ivy-mode)

  :config
  (setq-default ivy-use-virtual-buffers t
		ivy-virtual-abbreviate 'fullpath
		ivy-count-format ""
		projectile-completion-system 'ivy
		ivy-magic-tilde nil
		ivy-dynamic-exhibit-delay-ms 150
		ivy-use-selectable-prompt t
		ivy-initial-inputs-alist
		'((Man-completion-table . "^")
		  (woman . "^")))
  (define-key ivy-minibuffer-map (kbd "RET") #'ivy-alt-done)
  (define-key ivy-minibuffer-map (kbd "<up>") #'ivy-previous-line-or-history)
  (define-key ivy-occur-mode-map (kbd "C-c C-q") #'ivy-wgrep-change-to-wgrep-mode)
  (dolist (k '("C-j" "C-RET"))
    (define-key ivy-minibuffer-map (kbd k) #'ivy-immediate-done)))

(use-package counsel
  :init
  (add-hook 'after-init-hook 'counsel-mode)

  :config
  (setq-default counsel-mode-override-describe-bindings t))

(use-package swiper
  :config
  (define-key ivy-mode-map (kbd "M-s /") 'swiper-thing-at-point))

(use-package ivy-xref
  :config
  (setq xref-show-xrefs-function 'ivy-xref-show-xrefs))


(provide 'init-ivy)
