(ido-mode t)
(setq ido-enable-flex-matching t)                   ;模糊匹配
; (add-hook 'ido-make-file-list-hook 'ido-sort-mtime) ;文件的排序方法
; (add-hook 'ido-make-dir-list-hook 'ido-sort-mtime)  ;目录的排序方法
(provide 'init-ido)
