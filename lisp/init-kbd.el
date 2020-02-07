;;open init-packages.el file
(defun open-my-init-packages-files()
  (interactive)
  (find-file "~/.emacs.d/lisp/init-packages.el"))

(global-set-key (kbd "<f3>") 'open-my-init-packages-files)
;;end open

;;helm-configurations
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "C-x b") 'helm-buffers-list)

;;for helm-ag
(global-set-key (kbd "C-h C-s") 'helm-do-ag-this-file)
;;end helm-ag
;;end helm

;;offset
(setq c-basic-offset 4)
(setq c-default-style "linux")
;;end offset

;;swiper search && counsel
(global-set-key (kbd "C-c C-s") 'swiper)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
;;end region

;;anzu-config
(global-set-key (kbd "C-c C-r") 'anzu-replace-at-cursor-thing)
;;替换选光标选中的单词
;;end anzu
