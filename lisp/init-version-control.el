;;; -*- lexical-binding: t -*-

;; TODO: 使用 magit package

(use-package diff-hl
  :init
  (add-hook 'after-init-hook 'global-diff-hl-mode)

  :config
  (define-key diff-hl-mode-map (kbd "<left-fringe> <mouse-1>") 'diff-hl-diff-goto-hunk))

(provide 'init-version-control)
