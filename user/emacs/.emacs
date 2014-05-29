(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (wombat)))
 '(save-place t nil (saveplace))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))

(add-to-list 'default-frame-alist '(height . 60))
(add-to-list 'default-frame-alist '(width . 160))

(setq inhibit-startup-message t)
(setq default-tab-width 4)
(setq backup-inhibited t)
(setq auto-save-default nil)

(add-to-list 'load-path "/home/gwinn/.emacs.d/")

(require 'ido)
(ido-mode t)

(defface hl-line '((t (:background "grey40")))
         "Face to use for `hl-line-face'." :group 'hl-line)
(setq hl-line-face 'hl-line)
(global-hl-line-mode t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq tab-stop-list '(2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86))
(setq indent-line-function 'insert-tab)

(defun My-smart-home ()
    (interactive)
            (if (and (eq last-command 'My-smart-home)
                        (/= (line-beginning-position) (point)))
                            (beginning-of-line)
                                        (beginning-of-line-text))
            )

(global-set-key [home] 'My-smart-home)

(setq display-time-day-and-date t
    display-time-24hr-format t)
(display-time)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "microsoft" :slant normal :weight normal :height 90 :width normal)))))

(require 'package)
(package-initialize)

(setq package-archives '(("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

(autoload 'dirtree "dirtree" "Add directory to tree view" t)
(require 'dirtree)
(global-set-key "\C-o" 'dirtree-show)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/gwinn/.emacs.d/elpa/auto-complete-20130724.1750/dict")
(ac-config-default)

(require 'auto-complete-exuberant-ctags)
(ac-exuberant-ctags-setup)

(require 'yasnippet)
(yas-global-mode 1)

(require 'nlinum)
(global-nlinum-mode 1)


