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
