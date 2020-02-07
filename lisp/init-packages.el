(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
		      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

 ;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
		      company
		      spacemacs-theme
		      helm
		      helm-ag
		      ;;---for search--
		      swiper
		      ivy
		      counsel
		      anzu
		      ;;---better editor---
		      smartparens
		      
		      )"Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

 ;; Find Executable Path on OS X
 (when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))

;;--------------------------------------------config-end-------------------------------------
(global-undo-tree-mode)
;;--------------------------------------------company---------------------------------------
(require 'company)
(global-company-mode 1)

;;-------------------------------------------end company------------------------------------

;;------------------------------------------emacs theme-------------------------------------


(load-theme 'spacemacs-dark 1)


;;---------------------------------------------end------------------------------------------

;;---------------------------------------------helm-----------------------------------------
(require 'helm)

;;--------------------------------------------end helm--------------------------------------

;;anzu-mode
(global-anzu-mode 1)
;;end-anzu-mode


;;--------------------------------------------smartparens-----------------------------------
(require 'smartparens-config)


(add-hook 'c++-mode-hook 'smartparens-mode)
(add-hook 'c-mode-hook 'smartparens-mode)
(add-hook 'emacs-lisp-mode-hook #'smartparens-mode)


;;-------------------------------------------end smartparens--------------------------------
