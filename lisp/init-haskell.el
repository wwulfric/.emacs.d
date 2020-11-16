; (require 'haskell-mode)
; (require 'haskell-indentation)
; (require 'haskell-extension)
; 
; (add-hook 'haskell-mode-hook 'turn-on-font-lock) ;高亮模式
; (setq haskell-font-lock-symbols t)               ;美化符号

(require 'haskell-mode-autoloads)
(add-to-list 'Info-default-directory-list (concat emacs-root-dir "haskell-mode/"))

(provide 'init-haskell)
