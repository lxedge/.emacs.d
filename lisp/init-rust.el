;;; -*- lexical-binding: t -*-

(use-package rust-mode
  :ensure t
  :mode (("\\.rs\\'" . rust-mode))
  :init
  (add-hook 'rust-mode-hook (lambda () (setq indent-tabs-mode nil)))
  (add-hook 'rust-mode-hook (lambda () (prettify-symbols-mode)))
  (add-hook 'rust-mode-hook 'eglot-ensure)
  (add-hook 'rust-mode-hook 'lsp-deferred)
  (add-hook 'rust-mode-hook 'cargo-minor-mode)

  :config
  (setq rust-format-on-save t)
  (setq rustic-lsp-server 'rust-analyzer))

;; (use-package lsp-mode
;;   :ensure t
;;   :bind-keymap ("C-c l" . lsp-command-map)
;;   :config (lsp-enable-which-key-integration t))

(use-package tree-sitter-langs
  :ensure t)

(use-package tree-sitter
  :ensure t
  :config
  (require 'tree-sitter-langs)
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(use-package rustic
  :ensure t
  :config (setq rustic-lsp-client 'eglot))

(use-package cargo-mode
  :ensure t
  :config
  (add-hook 'rust-mode-hook 'cargo-minor-mode)
  (setq compilation-scroll-output t))

(provide 'init-rust)
