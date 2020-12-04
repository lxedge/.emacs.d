;;; -*- lexical-binding: t -*-

(use-package projectile
  :init
  (add-hook 'after-init-hook 'projectile-mode)

  :config
  (setq-default projectile-mode-line-prefix "Proj")
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(use-package ibuffer-projectile)


(provide 'init-projectile)
