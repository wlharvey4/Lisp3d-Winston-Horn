;;; lisp3d-tests-package.lisp - Test package file
;;; Time-stamp: <2023-09-25 01:49:51 minilolh>

;;; Author: LOLH
;;; Created 2023-09-24
;;; Version 0.1.0

;;; Commentary:

;;; Code:

(defpackage :lisp3d-tests
  (:use
   :cl
   :fiveam
   :lolh/lisp3d)
  (:export
   :lisp3d-run-all-tests))

;;; End lisp3d-tests-package
