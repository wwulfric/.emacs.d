(let (;; temporarily increase `gc-cons-threshold' when loading to speed up startup.
      (gc-cons-threshold most-positive-fixnum)
      ;; Empty to avoid analyzing files when loading remote files.
      (file-name-handler-alist nil))

  ;; Emacs configuration file content is written below.

  (defvar emacs-root-dir (file-truename "~/.emacs.d/lisp/"))

  (defun add-subdirs-to-load-path (dir)
    "Recursive add directories to `load-path'."
    (let ((default-directory (file-name-as-directory dir)))
      (add-to-list 'load-path dir)
      (normal-top-level-add-subdirs-to-load-path)))
  (add-subdirs-to-load-path emacs-root-dir)


  (auto-save-visited-mode 1)
  (setq auto-save-visited-interval 1)
  (recentf-mode 1)
  (setq recentf-max-menu-items 25)
  (setq recentf-max-saved-items 25)
  (global-set-key "\C-x\ \C-r" 'recentf-open-files)

  (global-visual-line-mode 1)
  (setq word-wrap nil)
  
  (require 'init-mackey)
  (require 'elegance)
  (require 'sanity)
  (elegance-light)
  (require 'my-gtd)
  ; (require 'init-mode)
  (require 'init-haskell)
  ; (require 'init-ivy)
  (require 'init-ido)
  (require 'init-projectile)
  (require 'init-magit)
  ; (require 'init-email)
  ;(require 'snails)
)
