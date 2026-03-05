;;; init-python.el --- python --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-hook 'python-mode-hook 'eglot-ensure)
(add-to-list 'eglot-server-programs
	     `(python-mode
	       . ,(eglot-alternatives '(("pyright-langserver" "--stdio")
					"jedi-language-server"
					"pylsp"))))
(provide 'init-python)
;;; init-python.el ends here
