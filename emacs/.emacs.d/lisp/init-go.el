;;; init-go.el --- go --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package go-mode
  :ensure t)


;; https://go.dev/gopls/editor/emacs#configuring-project-for-go-modules-in-emacs
(require 'project)

(defun project-find-go-module (dir)
  (when-let ((root (locate-dominating-file dir "go.mod")))
    (cons 'go-module root)))

(cl-defmethod project-root ((project (head go-module)))
  (cdr project))

(add-hook 'project-find-functions #'project-find-go-module)

(add-hook 'go-mode-hook 'eglot-ensure)

(defun eglot-format-buffer-before-save ()
  (add-hook 'before-save-hook #'eglot-format-buffer -10 t))
(add-hook 'go-mode-hook #'eglot-format-buffer-before-save)

;; https://go.dev/gopls/editor/emacs#organizing-imports-with-eglot
(add-hook 'before-save-hook
    (lambda ()
        (call-interactively 'eglot-code-action-organize-imports))
    nil t)

(provide 'init-go)
;;; init-go.el ends here
