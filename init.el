(cua-mode t)
(column-number-mode t)
(which-function-mode t)
(show-paren-mode t)

(global-hl-line-mode t)
(global-linum-mode t)

(recentf-mode 1)

(windmove-default-keybindings)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq scroll-step 1)
(setq linum-format "%4d ")
(setq hl-line-face 'underline)
(setq cua-enable-cua-keys nil)
(setq history-delete-duplicates t)
(setq history-length 1000)
(setq message-log-max 10000)
(setq ruby-insert-encoding-magic-comment nil)
(setq kill-whole-line t)
(setq gc-cons-threshold (* 50 gc-cons-threshold))
(setq js-indent-level 2)
(setq css-indent-offset 2)
(setq typescript-indent-level 2)
(setq c-default-style "linux" c-basic-offset 4)

(setq-default tab-width 4 indent-tabs-mode nil)
(set-face-attribute 'linum nil :foreground "green")

(define-key global-map (kbd "C-t") 'other-window)
(define-key global-map (kbd "C-^") 'cua-set-rectangle-mark)
(define-key global-map (kbd "C-c r") 'replace-regexp)
(define-key global-map (kbd "C-c h") 'recentf-open-files)
(define-key global-map (kbd "C-c c") 'org-capture)

(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "M-h") 'backward-kill-word)
;; (global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-m") 'newline-and-indent)
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

(require 'ruby-end)
(ruby-end-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (gtags twittering-mode org yaml-mode typescript-mode typescript slim-mode scss-mode sass-mode ruby-end ruby-block rainbow-delimiters org-mobile-sync org-ac json-mode flycheck))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq org-log-done 'time)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/workspace/org-mode/gtd.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("m" "Metaphrase" entry (file "~/workspace/org-mode/metaphrase.org")
         "* %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/workspace/org-mode/journal.org")
         "* %?\n#+BEGIN_QUOTE\n#+END_QUOTE\nEntered on %U\n  %i\n")))

(require 'twittering-mode)
;; (setq twittering-use-master-password t)

(require 'gtags)
(global-set-key "\M-t" 'gtags-find-tag)
(global-set-key "\M-r" 'gtags-find-rtag)
(global-set-key "\M-w" 'gtags-find-symbol)
(global-set-key "\C-a" 'gtags-pop-stack)
(define-key gtags-select-mode-map "\C-m" 'gtags-select-tag)
