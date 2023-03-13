;;; -*- lexical-binding: t -*-

;; 使用 straight
(require 'init-straight)
;; 感觉和 symbol-overlay 差不多，先去除
;; (require 'init-anzu)
;; (require 'init-grep)
;; (require 'init-exec-path-from-shell)
;; diff-hl 侧边栏添加 vcs 状态
(require 'init-version-control)
;; UI 相关配置
(require 'init-ui)
;; 编辑功能相关
(require 'init-edit)
(require 'init-ivy)

(require 'init-company)
(require 'init-projectile)

;; not used recently
;; (require 'init-common-lisp)
;; (require 'init-python)
;; (require 'init-golang)

(require 'init-elixir)
(require 'init-clojure)
(require 'init-rust)

(provide 'init)
