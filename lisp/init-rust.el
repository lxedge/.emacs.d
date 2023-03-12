;;; -*- lexical-binding: t -*-

(use-package rust-mode
  :init
  (add-hook 'rust-mode-hook
            (lambda () (setq indent-tabs-mode nil)))
  (add-hook 'rust-mode-hook #'lsp)
  (add-hook 'rust-mode-hook 'cargo-minor-mode)
  (setq rust-format-on-save t))

(use-package lsp-mode
  :ensure t
  :bind-keymap ("C-c l" . lsp-command-map)
  :config (lsp-enable-which-key-integration t))

(use-package company
  :ensure t
  :hook ((emacs-lisp-mode . (lambda ()
                              (setq-local company-backends '(company-elisp))))
         (emacs-lisp-mode . company-mode))
  :config
  (company-keymap--unbind-quick-access company-active-map)
  (company-tng-configure-default)
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 1))

(use-package flycheck
  :ensure t)

;; (use-package tree-sitter
;;   :config
;;   (require 'tree-sitter-langs)
;;   (global-tree-sitter-mode)
;;   (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(use-package rustic)
(setq rustic-lsp-server 'rust-analyzer)

(use-package cargo-mode
  :config
  (add-hook 'rust-mode-hook 'cargo-minor-mode))

(provide 'init-rust)
