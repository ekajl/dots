;;; init-elpa.el --- elpa --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'package)

(add-to-list 'package-archives '("melpa stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(package-initialize)
(package-refresh-contents)

(provide 'init-elpa)
;;; init-elpa.el ends here
