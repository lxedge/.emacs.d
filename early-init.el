;; Settings which needn't require any package

(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq package-archives
      '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
	("melpa" . "http://elpa.emacs-china.org/melpa/")
	("melpa-stable" . "http://elpa.emacs-china.org/melpa-stable/")))

;; gc setting
(add-hook 'after-init-hook (lambda () (setq gc-cons-threshold (* 1024 1024))))
;; does auto completion in minibuffer, for buffer/file names.
(add-hook 'after-init-hook 'ido-mode)
;; For all minibuffer prompt completion.
(add-hook 'after-init-hook 'icomplete-mode)
;; recentf-mode
(add-hook 'after-init-hook (recentf-mode 1))


(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-screen t)

;; disable tool bar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; disable scroll bar
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))

;; disable menu bar
(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))

;; no border
(let ((no-border '(internal-border-width . 0)))
  (add-to-list 'default-frame-alist no-border)
  (add-to-list 'initial-frame-alist no-border))

;; frame title
(setq frame-title-format
      '((:eval (if (buffer-file-name)
		   (abbreviate-file-name (buffer-file-name))
		 "%b"))))
