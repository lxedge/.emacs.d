;;; -*- lexical-binding: t -*-

(use-package exec-path-from-shell
  :config
  (dolist (v '("SSH_AUTH_SOCK" "SSH_AGENT_PID" "GPG_AGENT_INFO" "LANG" "LC_CTYPE"))
    (add-to-list 'exec-path-from-shell-variables v)))

(when (or (memq window-system '(mac ns x))
	  (unless (memq system-type '(ms-dos windows-nt))
	    (daemonp)))
  (exec-path-from-shell-initialize))


(provide 'init-exec-path-from-shell)
