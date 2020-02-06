;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;loadfiles
(load-file "~/.emacs.d/lisp/init-packages.el")
;;end

(tool-bar-mode -1)
(setq make-backup-files nil)
(menu-bar-mode -1)
(global-linum-mode 1)
;;关闭启动动画
(setq inhibit-splash-screen 1)

;;更改光标样式
(setq-default cursor-type 'bar)

;;高亮当前行
(global-hl-line-mode 1)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd"<f2>") 'open-init-file)

(fset 'yes-or-no-p 'y-or-n-p)

(scroll-bar-mode -1)

;;recentf-file
(require 'recentf)
(recentf-mode 1)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
;;-----------------------------------------------------------end---------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-matching-delay 0)
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 1)
 '(custom-safe-themes
   (quote
    ("a2cde79e4cc8dc9a03e7d9a42fabf8928720d420034b66aecc5b665bbf05d4e9" default)))
 '(icomplete-max-delay-chars 1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
