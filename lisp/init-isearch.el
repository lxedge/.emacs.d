;;; -*- lexical-binding: t -*-

(use-package anzu
  :straight
  (anzu :type git
	:host github
	:repo "emacsorphanage/anzu")

  :init
  (add-hook 'after-init-hook 'global-anzu-mode))

(global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp)
(global-set-key [remap query-replace] 'anzu-query-replace)

(define-key isearch-mode-map [remap isearch-delete-char] 'isearch-del-char)

(when (fboundp 'isearch-occur)
  (define-key isearch-mode-map (kbd "C-c C-o") 'isearch-occur))


(provide 'init-isearch)
