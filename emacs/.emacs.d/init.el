;; UI tweaks
(setq inhibit-startup-message t)
(when (display-graphic-p)
  (scroll-bar-mode -1)
  (set-fringe-mode 32))
(tool-bar-mode -1)
(menu-bar-mode -1)
(tooltip-mode -1)
(setq visible-bell t)
(load-theme 'tango-dark)

;; Font
(add-to-list 'default-frame-alist
  '(font . "Pragmasevka-13:antialias=true:hinting=false"))

;; Package Archives
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("elpa" . "https://elpa.gnu.org/packages/")))

;; Bootstrap use-package
(package-initialize)
(unless package-archive-contents
	(package-refresh-contents))

(unless (package-installed-p 'use-package)
	(package-install 'use-package))

;; Functions
(defun reload-config ()
  (interactive)
  (load-file (expand-file-name "init.el" user-emacs-directory)))

(defun spawn-shell (name)
  (interactive "MName of the shell buffer to create: ")
  (pop-to-buffer (get-buffer-create (generate-new-buffer-name name)))
  (shell (current-buffer)))

;; Org
(add-to-list 'org-export-backends 'md)

;; Scheme
(add-to-list 'auto-mode-alist '("\\.sld$" . scheme-mode))
(setq scheme-program-name "ypsilon")
