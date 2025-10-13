;;; init-shell.el --- shell --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun spawn-shell (name)
  "Spawn a shell buffer with a specific name"
  (interactive "MName of the shell buffer to create: ")
  (pop-to-buffer (get-buffer-create (generate-new-buffer-name name)))
  (shell (current-buffer)))

(provide 'init-shell)
;;; init-shell.el ends here
