(let ((default-directory  "~/.emacs.d/lisp/"))
 (normal-top-level-add-subdirs-to-load-path))
(require 'elegance)
(require 'sanity)
(elegance-light)
;(require 'snails)

;; mac 快捷键
(global-set-key [(hyper a)] 'mark-whole-buffer)
(global-set-key [(hyper v)] 'yank)
(global-set-key [(hyper c)] 'kill-ring-save)
(global-set-key [(hyper s)] 'save-buffer)
(global-set-key [(hyper l)] 'goto-line)
(global-set-key [(hyper w)]
                (lambda () (interactive) (delete-window)))
(global-set-key [(hyper z)] 'undo)
(global-set-key [(hyper x)] 'kill-region)
(global-set-key [(hyper backspace)] 'kill-whole-line)


;; mac switch meta key
(defun mac-switch-meta nil
  "switch meta between Option and Command"
  (interactive)
  (if (eq mac-option-modifier nil)
      (progn
        (setq mac-option-modifier 'meta)
        (setq mac-command-modifier 'hyper)
        )
    (progn
      (setq mac-option-modifier nil)
      (setq mac-command-modifier 'meta)
      )
    )
  )
(setq mac-option-key-is-meta t)
(setq mac-command-key-is-meta nil)
(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'hyper)

;; delete selection
(delete-selection-mode 1)

;; (if (display-graphic-p)
;;     (progn
;;       (tool-bar-mode -1)
;;       (scroll-bar-mode -1)
;;       (fringe-mode '(0 . 0))
;;       )
;;   )

(setq frame-title-format
          '(buffer-file-name "%f"
            (dired-directory dired-directory "%b")))

;;; 关于没有选中区域,则默认为选中整行的advice
;;;;默认情况下M-w复制一个区域，但是如果没有区域被选中，则复制当前行
(defadvice kill-ring-save (before slickcopy activate compile)
  "When called interactively with no active region, copy a single line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (message "已选中当前行!")
     (list (line-beginning-position)
           (line-beginning-position 2)))))

(defadvice kill-region (before slickcopy activate compile)
  "When called interactively with no active region, copy a single line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (message "已剪切当前行!")
     (list (line-beginning-position)
           (line-beginning-position 2)))))

(setq org-directory "~/org/")
(setq org-agenda-files '("~/org"))
