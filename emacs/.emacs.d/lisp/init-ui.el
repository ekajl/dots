;;; init-ui.el --- ui --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;;; functions
(defun pulse-line (&rest _)
  "Pulse the current line."
  (pulse-momentary-highlight-one-line (point)))

(dolist (command '(scroll-up-command scroll-down-command recenter-top-bottom other-window))
  (advice-add command :after #'pulse-line))

;;; settings
(setq inhibit-startup-message t)
(when *is-in-terminal*
  (menu-bar-mode -1))
(when (not *is-in-terminal*)
  (scroll-bar-mode -1)
  (tool-bar-mode -1)
  (tooltip-mode -1)
  (set-fringe-mode 28)
  (setq visible-bell t))

(load-theme 'tango-dark t)

(provide 'init-ut)
;;; init-ui.el ends here
