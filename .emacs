;;------------------------------------------------------------------------ 
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) 
;;------------------------------------------------------------------------

;;auto-complete----------------------------------------------------------
(ac-config-default)
(require 'auto-complete-c-headers)
(add-to-list 'ac-sources 'ac-source-c-headers)
;;------------------------------------------------------------------------

;;lines-------------------------------------------------------------------
(global-linum-mode 1)
;;------------------------------------------------------------------------

;;braces------------------------------------------------------------------
(electric-indent-mode 1)
;;------------------------------------------------------------------------

;;movement between tabs----------------------------------------------------------------------
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
;;------------------------------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(c-default-style "k&r")
 '(custom-enabled-themes (quote (wombat)))
 '(electric-layout-mode t)
 '(electric-pair-mode t)
 '(electric-pair-pairs (quote ((40 . 41) (123 . 125) (34 . 34))))
 '(tab-always-indent t)
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Terminus" :foundry "xos4" :slant normal :weight normal :height 90 :width normal)))))
