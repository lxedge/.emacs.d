;;; -*- lexical-binding: t -*-

;; TODO: 使用 magit package

(use-package diff-hl
  :init (add-hook 'after-init-hook 'global-diff-hl-mode)
  :config (define-key diff-hl-mode-map (kbd "<left-fringe> <mouse-1>") 'diff-hl-diff-goto-hunk))


;; https://docs.projectile.mx/projectile/configuration.html
(use-package projectile
  :ensure t
  :init (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map))
  :config (setq projectile-project-search-path '("~/practice/" "~/workspace/")))

;; (use-package ibuffer-projectile
;;   :init
;;   (add-hook 'ibuffer-hook
;;             (lambda ()
;;               (ibuffer-projectile-set-filter-groups)
;;               (unless (eq ibuffer-sorting-mode 'alphabetic)
;;                 (ibuffer-do-sort-by-alphabetic))))
;;   :config
;;   (setq ibuffer-formats
;;         '((mark modified read-only " "
;;                 (name 18 18 :left :elide)
;;                 " "
;;                 (size 9 -1 :right)
;;                 " "
;;                 (mode 16 16 :left :elide)
;;                 " "
;;                 project-relative-file))))

(provide 'init-project)
