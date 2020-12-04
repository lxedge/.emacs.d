;;; -*- lexical-binding: t -*-

;; wgrep allows you to edit a grep buffer and apply those changes to the file buffer like sed interactively.
;; No need to learn sed script, just learn Emacs.

(setq-default grep-highlight-matches t
	      grep-scroll-output t)

(use-package wgrep)

;; 暂时还没有配好 rg
(use-package rg
  :config
  (rg-enable-default-bindings))

(dolist (key (list (kbd "C-c C-q") (kbd "w")))
  (define-key grep-mode-map key 'wgrep-change-to-wgrep-mode))


(provide 'init-grep)
