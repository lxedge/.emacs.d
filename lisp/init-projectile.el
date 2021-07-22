;;; -*- lexical-binding: t -*-

;; https://docs.projectile.mx/projectile/usage.html

(use-package projectile
  :init
  (add-hook 'after-init-hook 'projectile-mode)

  :config
  (setq-default projectile-mode-line-prefix " Proj")
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(use-package ibuffer-projectile
  :init
  (add-hook 'ibuffer-hook
            (lambda ()
              (ibuffer-projectile-set-filter-groups)
              (unless (eq ibuffer-sorting-mode 'alphabetic)
                (ibuffer-do-sort-by-alphabetic))))

  :config
  (setq ibuffer-formats
        '((mark modified read-only " "
                (name 18 18 :left :elide)
                " "
                (size 9 -1 :right)
                " "
                (mode 16 16 :left :elide)
                " "
                project-relative-file))))


(provide 'init-projectile)
