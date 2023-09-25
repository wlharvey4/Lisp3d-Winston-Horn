;;; lisp3d-packages.lisp - Package file for Lisp 3d Edition Winston-Horn
;;; Time-stamp: <2023-09-25 08:10:10 minilolh>

;;; Author: LOLH
;;; Created: 2023-09-24

;;; Commentary: Packages for Lisp3d by Winston and Horn.
;;  Each chapter gets its own package, and each problem gets its own command.

;;; Code:

(defpackage :lolh/lisp3d-chapter5
  (:use :cl)
  (:export
   ;; Problem 5-1
   :skip-first-n))

;;; End lisp3d-packages.lisp
