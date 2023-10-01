;;; lisp3d-packages.lisp - Package file for Lisp 3d Edition Winston-Horn
;;; Time-stamp: <2023-10-01 09:29:59 wlh>

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
   :presentp
   ;; Problem 5-9
   :squash
   :squash-h
   ;; Problem 5-11
   :punctuate
   ;; Problem 5-12
   :fibonnaci
   ;; Problem 5-13
   :tail-recursive-expt
   ;; Problem 5-14
   :tail-recursive-reverse))

;;; End lisp3d-packages.lisp
