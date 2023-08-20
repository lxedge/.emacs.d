;;; -*- lexical-binding: t -*-

;; 使用 straight
(require 'init-straight)
;; 感觉和 symbol-overlay 差不多，先去除
;; (require 'init-anzu)
;; (require 'init-grep)
(require 'init-exec-path-from-shell)

;; UI 相关配置
(require 'init-ui)
;; 编辑功能相关
(require 'init-edit)
(require 'init-ivy)
(require 'init-company)
;; 项目相关
(require 'init-project)

;; not used recently
;; (require 'init-common-lisp)
;; (require 'init-python)

(require 'init-go)
(require 'init-elixir)
(require 'init-clojure)
(require 'init-rust)

(provide 'init)
