;;; lisp3d-packages.lisp - Package file for Lisp 3d Edition Winston-Horn
;;; Time-stamp: <2023-09-27 03:40:28 wlh>

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
   :keep-first-n-cleverly
   ;; Problem 5-4
   :add
   ;; Problem 5-5
   :tower-of-hanoi
   ;; Problem 5-8
   :presentp))

;;; End lisp3d-packages.lisp
