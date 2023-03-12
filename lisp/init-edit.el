;;; -*- lexical-binding: t -*-

;; https://github.com/abo-abo/ace-window VS switch-window?
(use-package switch-window
  :ensure t
  :bind (("C-x o" . switch-window)
         ("C-x 1" . delete-other-windows)
         ("C-x 2" . split-window-vertically)
         ("C-x 3" . split-window-horizontally))
  :config (setq switch-window-shortcut-appearance 'image))

;; 根据字符跳转光标
(use-package ace-jump-mode
  :ensure t
  :bind ("C-c SPC" . ace-jump-mode))

;; 可能没有什么用，弹出来一堆看也看不过来
(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1)
  (which-key-setup-side-window-bottom))

;; 当前文件搜索相同的词
(use-package symbol-overlay
  :ensure t
  :init (add-hook 'after-init-hook 'symbol-overlay-mode)
  :bind (("M-i" . symbol-overlay-put)
         ("M-n" . symbol-overlay-jump-next)
         ("M-p" . symbol-overlay-jump-prev)
         ("M-SPC" . symbol-overlay-rename)))

(provide 'init-edit)
