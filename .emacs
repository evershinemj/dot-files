;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

;; (set-foreground-color "blue")
;; (set-background-color "black")
;; (set-background-color "white")

;; set menu-bar-mode in custom-set-variables 
;; (setq menu-bar-mode -1)
;; (global-set-key "\C-4" 'shell-command)
(global-set-key "\C-c\C-m" 'menu-bar-mode)
(global-set-key "\C-c\C-b" 'menu-bar-open)
(global-set-key "\C-c\C-t" 'term)
(global-set-key "\C-c\C-p" 'viper-mode)
(global-set-key (kbd "C-c s") 'shell)
(global-set-key (kbd "C-x t") 'tool-bar-mode)
(global-set-key (kbd "C-c t") 'text-mode)
(global-set-key (kbd "C-c o") 'org-mode)
;; (global-set-key (kbd "C-x-c") 'customize)
(global-set-key (kbd "C-x c") 'customize)
(global-set-key (kbd "C-x C-e") 'scroll-up-line)
(global-set-key (kbd "C-x C-y") 'scroll-down-line)
(global-set-key (kbd "M-g e") 'emms-playlist-mode-go)
(global-set-key (kbd "C-c e") 'emms)
;; (global-set-key (kbd "M-g f") 'append-to-file)
;; (global-set-key (kbd "M-g b") 'append-to-buffer)
(global-set-key (kbd "C-x <RET> f") 'append-to-file)
(global-set-key (kbd "C-x <RET> b") 'append-to-buffer)
(global-set-key (kbd "M-g d") 'emms-add-directory)
(global-set-key (kbd "M-g t") 'emms-add-directory-tree)
(global-set-key (kbd "M-g c") 'emms-browse-by-composer)
(global-set-key (kbd "M-g a") 'emms-browse-by-artist)
(global-set-key (kbd "C-c c") 'calendar)
;; (global-set-key (kbd "C-;" 'beginning-of-buffer)
;; (global-set-key (kbd "C'" 'end-of-buffer)
;; (global-set-key "\C-x\C-a" 'beginning-of-buffer)
;; (global-set-key "\C-x\C-e" 'end-of-buffer)		
;; use visible bell instead of audible bell to indicate errors
(setq visible-bell t)
;; (tool-bar-mode nil)

(global-set-key (kbd "C-x <RET> r") 'recover-this-file)

(global-set-key (kbd "C-j") 'goto-line)
(define-key text-mode-map (kbd "C-j") 'auto-complete-mode)
(global-set-key (kbd "C-/") 'undo)
(setq track-eol t)

;; (setq-default auto-fill-function 'do-auto-fill)
(fset 'yes-or-no-p 'y-or-n-p)
;; (setq default-directory "~/org/")
;; (setq default-directory "~/java/")
(setq display-time-mode 1)
(setq display-time-day-and-date t)

(put 'scroll-left 'disabled nil)
(put 'scroll-right 'disabled nil)

(setq initial-frame-alist '((width . 100) (height . 100)))

(setq column-number-mode t)
(setq line-number-mode t)

;; typo!
;; (setq inhibit-startup-messate t)
(setq inhibit-startup-message t)
;; (setq gnus-inhibit-startup-messate t)
(setq default-major-mode 'text-mode)
;; (add-hook 'text-mode-hook 'turn-on-auto-fill)

;; (setq show-paren-mode t)
;; (setq display-time-24hr-format t)
(set 'display-time-24hr-format t)

(global-set-key [f5] 'eshell)
(global-set-key [f7] 'calendar)
(global-set-key [f8] 'view-mode)
(global-set-key [f9] 'other-window)
(global-set-key [f11] 'compile)
(global-set-key [f12] 'gdb)

(global-set-key "\C-c\C-s" 'eshell)
(global-set-key "\C-c\C-v" 'view-mode)
(global-set-key "\C-c\C-e" 'evil-mode)
(global-set-key "\C-c\C-f" 'fundamental-mode)
(global-set-key "\C-cm" 'mail-mode)
(global-set-key "\C-c\C-a" 'auto-complete-mode)
(global-set-key "\M-o" 'other-window)
;; [f10] opens the file menu; C-f and C-b moves forward and back,
;; C-n and C-p moves down and up
(global-set-key [f4] 'auto-complete-mode)

;; (global-set-key "\C-\[" 'beginning-of-buffer)
;; (global-set-key "\C-\]" 'end-of-buffer)
;; (global-set-key "\C-/" 'undo)
(global-set-key "\C-x\C-b" 'electric-buffer-list)
(global-set-key "\C-c\C-o" 'occur)
(global-set-key "\M-/" 'hippie-expand)
(global-set-key "\C-c\C-c" 'eval-buffer)
(global-set-key "\C-xa" 'beginning-of-buffer)
(global-set-key "\C-xe" 'end-of-buffer)
(global-set-key (kbd "C-;") 'beginning-of-buffer)
(global-set-key (kbd "C-'") 'end-of-buffer)
(global-set-key "\C-c\C-w" 'kill-ring-save)
(global-set-key (kbd "C-M-y") 'scroll-other-window-down)
;; (global-set-key "\C-c\C-s" 'kill-ring-save)
;; (global-set-key (kbd "C-[") 'beginning-of-buffer)
;; (global-set-key (kbd "C-]") 'end-of-buffer)
;; (global-set-key "\C-/" 'undo)
;; (global-set-key "\C-[" 'beginning-of-buffer)
;; (global-set-key "\C-]" 'end-of-buffer)
;; (define-key ctl-x-m-map "m" 'man-follow)
;; (define-key ctl-x-m-map "k" 'browse-kill-ring)

;; setq for set quote
(setq user-name "wangxueming")

;; (setq frame-title-format '("Emacs@"system-name":%b %+%+ %f"))
(setq frame-title-format "EMACS@%b FILE PATH: %f")
(set-foreground-color "green")
;; (set-foreground-color "blue")
;; (set-background-color "black")
;; (set-cursor-color "gold")
(set-cursor-color "blue")
(set-mouse-color "gold")

(setq default-cursor-type 'bar)
(setq default-tab-width 4)
(setq tab-width 4)

(setq make-backup-files nil)
;; (add-to-list 'load-path "~/.emacs.d/elpa/evil-20190222.1212/")
;; (load 'evil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; tell emacs where to find emacs lisp file
(add-to-list 'load-path "~/.emacs.d/elpa/emms-20190620.1526/")
;; source emacs lisp file under any one path in 'load-path
(require 'emms-setup)
;; call the following two functions in el file: emms-setup
(emms-all)
(emms-default-players)
(setq emms-source-file-default-directory "~/Music/网易云音乐/")
;; (setq emms-playlist-default-major-mode 'emms-playlist-mode)

(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-auto-indent nil)
 '(evil-command-window-height 3)
 '(evil-complete-all-buffers nil)
 '(evil-default-state (quote normal))
 '(evil-disable-insert-state-bindings t)
 '(evil-echo-state t)
 '(evil-ex-search-case (quote smart))
 '(evil-ex-search-highlight-all t)
 '(evil-ex-search-persistent-highlight nil)
 '(initial-frame-alist (quote ((width . 200) (height . 100))))
 '(kill-whole-line nil)
 '(menu-bar-mode nil)
 '(org-agenda-files (quote ("~/org/emacs.org" "~/org/foo.org")))
 '(package-selected-packages (quote (emms-bilibili emms company auto-complete evil)))
 '(require-final-newline t)
 '(send-mail-function (quote mailclient-send-it))
 '(shift-select-mode t)
 '(show-trailing-whitespace nil)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(window-sides-vertical nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold-italic ((t (:slant italic :weight bold))))
 '(cursor ((t (:background "blue1"))))
 '(evil-ex-commands ((t (:underline t :slant italic))))
 '(evil-ex-search ((t (:inherit isearch))))
 '(tool-bar ((t (:background "cyan1" :foreground "dark blue" :box (:line-width 1 :style released-button))))))
