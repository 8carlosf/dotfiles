(setq tetris-score-file "~/.emacs.d/tetris-scores")

;; -------- Theme by carlosf --------

;;; cf-theme.el --- Custom face theme for Emacs

;; Copyright (C) 2011 carlosf <8carlosf@gmail.com>.

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(deftheme cf
  "Theme by carlosf")

;; set default compile command
(defalias 'yes-or-no-p 'y-or-n-p)
(add-hook 'java-mode-hook
	  (lambda ()
	      (set (make-local-variable 'compile-command)
		   (concat "javac '" buffer-file-name "'"))))
;; -ansi -pedantic
(add-hook 'c-mode-hook
       (lambda ()
	 (unless (or (file-exists-p "makefile")
		     (file-exists-p "Makefile"))
	   (set (make-local-variable 'compile-command)
		(concat "gcc -g -Wall -lm -o '" (file-name-sans-extension buffer-file-name) "' '" buffer-file-name "'")))))

;; set font height
(set-face-attribute 'default nil :height 100)
;; show current function
(which-func-mode t)
;; show line and column
(line-number-mode t)
(column-number-mode t)
;; no scroll bar or tool bar please
(scroll-bar-mode nil)
;; better buffer-switching
(ido-mode t)
;; show line numbers
(global-linum-mode 1)
;; auto-complete
;;(global-set-key (kbd "C-<return>") 'dabbrev-completion)
;; normalize scroll step
(setq scroll-step 1)
;; shift + arrow key = switch to window
(windmove-default-keybindings)
;; default frame size
(add-to-list 'default-frame-alist '(height . 44))
(add-to-list 'default-frame-alist '(width . 78))
;; dont show any startup message
(setq inhibit-startup-message t)
;; no backup files
(setq make-backup-files nil)
;; no .saves files
(setq auto-save-list-file-name nil)
;; no auto saving
(setq auto-save-default nil)


(custom-theme-set-faces
 'cf
 '(default ((t (:background "#000000" :foreground "#ffffff"))))
 '(cursor ((t (:background "#73cb0c" :foreground "#000000"))))
 '(region ((t (:background "#555555"))))
 '(mode-line ((t (:background "#bbbbbb" :foreground "#000000"))))
 '(mode-line-inactive ((t (:background "#222222" :foreground "#bbbbbb"))))
 '(fringe ((t (:background "#bbbbbb"))))
 '(minibuffer-prompt ((t (:foreground "#ffec50" :weight bold))))
 '(font-lock-builtin-face ((t (:foreground "#8800ee"))))
 '(font-lock-comment-face ((t (:slant italic :foreground "#ccff33"))))
 '(font-lock-constant-face ((t (:foreground "#aa00ff"))))
 '(font-lock-function-name-face ((t (:foreground "#cf2200"))))
 '(font-lock-keyword-face ((t (:foreground "#0077d2"))))
 '(font-lock-string-face ((t (:foreground "#fff000"))))
 '(font-lock-type-face ((t (:foreground "#88cf00"))))
 '(font-lock-variable-name-face ((t (:foreground "#ff9933"))))
 '(font-lock-warning-face ((t (:foreground "#ff0000"))))
 '(isearch ((t (:background "#ce5c00" :foreground "#ffffff"))))
 '(lazy-highlight ((t (:background "#8f5902"))))
 '(link ((t (:foreground "#729fcf" :underline t))))
 '(link-visited ((t (:foreground "#3465a4" :underline t))))
 '(button ((t (:foreground "#729fcf" :underline t :weight bold))))
 '(header-line ((t (:background "#222222" :foreground "#ffffff")))))

(provide-theme 'cf)

;; AUTOCOMPLETE MODE (needs some extra files)

;;auto complete mode
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")

(ac-config-default)
;; Distinguish case
(setq ac-ignore-case nil)
(set-face-background 'ac-candidate-face "#888888")
(set-face-underline 'ac-candidate-face "#888888")
(set-face-background 'ac-selection-face "#333333")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
;; Local Variables:
;; no-byte-compile: t
;; End:

;;; cf-theme.el  ends here
