;;; init-org.el --- org --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq org-agenda-files (list "~/org/"))
(setq org-log-done 'time)

(require 'ox)
(require 'ox-md)
(add-to-list 'org-export-backends 'md)

(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(provide 'init-org)
;;; init-org.el ends here
