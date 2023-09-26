;;; lisp3d-packages.lisp - Package file for Lisp 3d Edition Winston-Horn
;;; Time-stamp: <2023-09-26 00:04:49 minilolh>

;;; Author: LOLH
;;; Created: 2023-09-24

;;; Commentary: Packages for Lisp3d by Winston and Horn.
;;  Each chapter gets its own package, and each problem gets its own command.

;;; Code:

(defpackage :lolh/lisp3d-chapter-5
  (:use :cl)
  (:export
   ;; Problem 5-1
   :skip-first-n
   ;; Problem 5-2
   :keep-first-n
   ;; Problem 5-3
   :keep-first-n-cleverly))

;;; End lisp3d-packages.lisp
