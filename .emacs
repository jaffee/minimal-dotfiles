(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))


(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-xm" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key (kbd "<C-tab>") 'other-window)
(defun back-window ()
  "Make the window go back."
  (interactive)
  (other-window -1))
(global-set-key (kbd "<C-S-iso-lefttab>") 'back-window)

;;make default C-e behavior end of line instead of end of visual line
(global-set-key (kbd "<C-e>") 'end-of-line)

;;bindings for comment and uncomment region
(global-set-key "\C-c/" 'comment-region)
(global-set-key "\C-c\\" 'uncomment-region)

(global-set-key "\C-cb" 'bury-buffer)

;;need to make sure this doesn't stomp on anything
(global-set-key "\C-c " 'fixup-whitespace)

;; buffer renaming keybinding
(global-set-key "\C-cr" 'rename-buffer)


(global-set-key "\C-x\C-k" 'clipboard-kill-region)
(global-set-key "\M-w" 'clipboard-kill-ring-save)

;; save hist mode ftw
(savehist-mode 1)

;; go into c++ mode for CUDA .cu files
(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))

;; in org-mode, rebind C-tab to other window instead of whatever crap org mode binds it to
(add-hook 'org-mode-hook (lambda () (local-unset-key (kbd "<C-tab>"))))
(add-hook 'org-mode-hook (lambda () (local-set-key (kbd "<C-tab>") 'other-window)))

(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; make this only for .py files?

;; use iswitchb
(iswitchb-mode 1)

;; enable upcase-region
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(global-set-key (kbd "C-x C-/") 'magit-status)
