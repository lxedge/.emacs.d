;;; -*- lexical-binding: t -*-

(use-package switch-window
  :bind
  ("C-x 1" . delete-other-windows)
  ("C-x 2" . split-window-vertically)
  ("C-x 3" . split-window-horizontally))

(provide 'init-window)
