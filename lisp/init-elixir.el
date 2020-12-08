;;; -*- lexical-binding: t -*-

(use-package elixir-mode
  :init
  (add-hook 'elixir-mode-hook
	    (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))
  (add-hook 'elixir-format-hook
	    (lambda ()
	      (if (projectile-project-p)
		  (setq elixir-format-arguments
			(list "--dot-formatter"
			      (concat (locate-dominating-file buffer-file-name ".formatter.exs") ".formatter.exs")))
		(setq elixir-format-arguments nil))))
  )

(use-package alchemist
  :config
  (setq alchemist-mix-command "/usr/bin/mix")
  (setq alchemist-mix-env "prod")
  (setq alchemist-iex-program-name "/usr/bin/iex")
  (setq alchemist-execute-command "/usr/bin/elixir")
  (setq alchemist-compile-command "/usr/bin/elixirc")
  ;; Compile your project with alchemist-mix-compile after saving a buffer.
  (setq alchemist-hooks-compile-on-save t)
  ;; (setq alchemist-goto-erlang-source-dir "/path/to/erlang/source/")
  ;; (setq alchemist-goto-elixir-source-dir "/path/to/elixir/source/")
  )

(use-package lsp-mode
  :commands lsp
  :ensure t
  :diminish lsp-mode
  :hook
  (elixir-mode . lsp)
  :init
  (add-to-list 'exec-path "/home/xing/apps/elixir-ls/release"))


;; (use-package eglot
;;   :init
;;   (add-hook 'elixir-mode-hook 'eglot-ensure)

;;   :config
;;   (add-to-list 'eglot-server-programs '(elixir-mode "/User/miles/lsp/elixir-ls-1.10.4/language_server.sh")))


(provide 'init-elixir)
