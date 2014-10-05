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
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 156 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

(require 'whitespace)

(setq-default indent-tabs-mode nil)
(setq js-indent-level 2)

;; use Shift+arrow_keys to move cursor around split panes
(windmove-default-keybindings)
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)


;; when cursor is on edge, move to the other side, as in a toroidal space
(setq windmove-wrap-around t )

(global-set-key (kbd "C-x r") 'revert-buffer) ; Ctrl+x a

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
  )

;; (defun node-repl () (interactive):
;;   (pop-to-buffer (make-comint "node-repl" "node" nil "--interactive")))
;; (setenv "NODE_NO_READLINE" "1")

(defun send-to-node-repl () (interactive)
  (mark-whole-buffer) (append-to-buffer "*nodejs*" (region-beginning) (region-end))) 


;;(global-set-key (kbd "C-x n") 




