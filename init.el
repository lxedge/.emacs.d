;;; -*- lexical-binding: t -*-

;; 使用 straight
(require 'init-straight)
;; diff-hl 侧边栏添加 vcs 状态
(require 'init-version-control)

;; UI 相关配置
(require 'init-ui)

;; 编辑功能相关
(require 'init-edit)

(require 'init-grep)
(require 'init-ivy)
(require 'init-anzu)

(require 'init-exec-path-from-shell)
(require 'init-company)
(require 'init-paredit)
(require 'init-projectile)

;; not used recently
;; (require 'init-common-lisp)

(require 'init-elixir)
(require 'init-clojure)
(require 'init-rust)
;; (require 'init-python)
;; (require 'init-golang)

(provide 'init)
