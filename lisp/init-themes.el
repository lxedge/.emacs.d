;;; -*- lexical-binding: t -*-

(use-package color-theme-sanityinc-solarized)
(use-package color-theme-sanityinc-tomorrow)

(setq custom-safe-themes t)
(setq-default custom-enabled-themes '(sanityinc-tomorrow-bright))

(defun reapply-themes ()
  "Forcibly load the themes listed in `custom-enabled-themes'."
  (dolist (theme custom-enabled-themes)
    (unless (custom-theme-p theme)
      (load-theme theme)))
  (custom-set-variables `(custom-enabled-themes (quote ,custom-enabled-themes))))

(defun light ()
  "Activate a light color theme."
  (interactive)
  (setq custom-enabled-themes '(sanityinc-tomorrow-day))
  (reapply-themes))

(defun dark ()
  "Activate a dark color theme."
  (interactive)
  (setq custom-enabled-themes '(sanityinc-tomorrow-bright))
  (reapply-themes))

(add-hook 'after-init-hook 'reapply-themes)


(provide 'init-themes)
