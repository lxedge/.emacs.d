;;; -*- lexical-binding: t -*-

;; not use anymore

;; Settings which needn't require any package

;; terminal
(add-hook 'term-mode-hook
          (lambda () (setq line-space 0)))

;; M-f; M-b: through camelCaseWords
(global-subword-mode 0)

;; (setq default-frame-alist
;;       '((background-color . "cornsilk")))

(defun lxedge/clean-whitespace ()
  ""
  (interactive)
  (let ($begin $end)
    (if (use-region-p)
        (setq $begin (region-beginning) $end (region-end))
      (setq $begin (point-min) $end (point-max)))
    (save-excursion
      (save-restriction
        (narrow-to-region $begin $end)
        (progn
          (goto-char (point-min))
          (while (re-search-forward "[ \t]+\n" nil "move")
            (replace-match "\n")))
        (progn
          (goto-char (point-min))
          (while (re-search-forward "\n\n\n+" nil "move")
            (replace-match "\n\n")))
        (progn
          (goto-char (point-min))
          (while (equal (char-before) 32) ; char 32 is space
            (delete-char -1))))
      (message "white space cleaned"))))

(defun lxedge/clean-empty-lines ()
  ""
  (interactive)
  (let ($begin $end)
    (if (use-region-p)
        (setq $begin (region-beginning) $end (region-end))
      (setq $begin (point-min) $end (point-max)))
    (save-excursion
      (save-restriction
        (narrow-to-region $begin $end)
        (progn
          (goto-char (point-min))
          (while (re-search-forward "\n\n\n+" nil "move")
            (replace-match "\n\n")))))))

;; (add-hook 'before-save-hook 'lxedge/clean-empty-lines)
;; (add-hook 'before-save-hook 'lxedge/clean-whitespace)
(add-hook 'before-save-hook 'whitespace-cleanup)

(provide 'init-settings)
