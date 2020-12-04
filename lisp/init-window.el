;;; -*- lexical-binding: t -*-

(defun lxedge/split-window-func-with-other-buffer (split-function)
  (lambda (&optional arg)
    "Split this window and switch to the new window unless ARG is proivided"
    (interactive "P")
    (funcall split-function)
    (let ((target-window (next-window)))
      (set-window-buffer target-window (other-buffer))
      (unless arg
	(select-window target-window)))))

(defun lxedge/toggle-delete-other-windows ()
  "Delete other windows in frame if any, or restore previous window config."
  (interactive)
  (if (and winner-mode
	    (equal (selected-window) (next-window)))
    (winner-undo)
    (delete-other-windows)))


(use-package switch-window
  :bind
  ("C-x 1" . delete-other-windows)
  ("C-x 2" . split-window-vertically)
  ("C-x 3" . split-window-horizontally))


;; (global-set-key (kbd "C-x 1") 'lxedge/toggle-delete-other-windows)
;; (global-set-key (kbd "C-x 2") (lxedge/split-window-func-with-other-buffer 'split-window-vertically))
;; (global-set-key (kbd "C-x 3") (lxedge/split-window-func-with-other-buffer 'split-window-horizontally))

(provide 'init-window)
