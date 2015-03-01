;; Save emacs backup files in system "temp" directory:
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/")
(add-to-list 'load-path "~/.emacs.d/markdown-mode/")
(add-to-list 'load-path "~/.emacs.d/lua-mode/")

(require 'color-theme)
(color-theme-initialize)
(color-theme-resolve)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;;Markdown mode
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;Lua mode
(autoload 'lua-mode "lua-mode" "Lua editing mode." )
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(setq default-fill-mode 80)
(custom-set-variables
 ;; custom-set-variables was added by Custom.  If you edit it by hand,
 ;; you could mess it up, so be careful.  Your init file should
 ;; contain only one such instance.  If there is more than one, they
 ;; won't work right.
 '(tool-bar-mode nil)
 '(show-paren-mode 1)
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.  If you edit it by hand, you
 ;; could mess it up, so be careful.  Your init file should contain
 ;; only one such instance.  If there is more than one, they won't
 ;; work right.
 )

;; custom shortcuts

;; Unbind Pesky Sleep Button
(global-unset-key [(control z)])
(global-unset-key [(control x)(control z)])

;; Windows Style Undo
(global-set-key [(control z)] 'undo)

;; Navigation shortcuts
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)
