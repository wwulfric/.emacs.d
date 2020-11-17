;;; init-email.el --- email
;;; -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2020 haidao
;;
;; Author: haidao <http://github/haidao>
;; Maintainer: haidao <wwulfric@gmail.com>
;; Created: November 17, 2020
;; Modified: November 17, 2020
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/haidao/init-email
;; Package-Requires: ((emacs 27.1) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;
;;
;;; Code:

(require 'notmuch)
(setq notmuch-search-oldest-first nil)
(provide 'init-email)
;;; init-email.el ends here
