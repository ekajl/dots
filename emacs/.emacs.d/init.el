;;; init.el --- Initialization file -*- lexical binding: t -*-
;;; Commentary:
;;; Code:

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defconst *is-in-terminal* (not (display-graphic-p)))

(require 'init-ui)
(require 'init-elpa)
(require 'init-exec-path)
(require 'init-flycheck)
(require 'init-magit)
(require 'init-ruby)
(require 'init-go)
(require 'init-scheme)
(require 'init-terraform)
(require 'init-docker)
(require 'init-yaml)
(require 'init-fido)
(require 'init-org)
(require 'init-shell)
