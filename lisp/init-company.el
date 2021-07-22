;;; -*- lexical-binding: t -*-

(use-package company
  :init
  (setq tab-always-indent 'complete)
  (add-to-list 'completion-styles 'initials t)
  (add-hook 'after-init-hook 'global-company-mode)

  ;; :hook
  ;; (after-init . global-company-mode)

  :config
  (diminish 'company "company")
  (dolist (backend '(company-eclim company-semantic))
              (delq backend company-backends)))


(provide 'init-company)
