(add-to-list 'load-path "~/.emacs.d/lisp/magit/lisp")
(require 'magit)

(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
               "~/.emacs.d/lisp/magit/Documentation/"))
(provide 'init-magit)
