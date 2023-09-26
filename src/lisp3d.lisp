;;; lisp3d.lisp - Lisp 3d Edition by Winston and Horn
;;; Time-stamp: <2023-09-25 23:29:14 wlh>

;;; Author: LOLH
;;; Created: 2023-09-24

;;; Commentary:
;;  Problems from Lisp 3d Edition by Patrick Henry Winston and
;;  Berthold Klaus Paul Horn (1989).  Each chapter gets its own
;;  package.

;;; Code:

(in-package :lolh/lisp3d-chapter-5)

;;; Problem 5-1
;;  Ignoring the existence  of NTHCDR, the primitive  supplied by Lisp
;;  itself, write a tail  recursive procedure, SKIP-FIRST-N that trims
;;  off the first `n' elements from a list and returns the rest.

(defun skip-first-n (n l)
  (if (zerop n) l
      (skip-first-n (1- n) (rest l))))

;;; Problem 5-2
;;  Write a procedure, KEEP-FIRST-N, not tail-recursive, that returns a
;;  a list of the first N elements in a list.You may assume there are at
;;  least N elements.

(defun keep-first-n (n l)
  (if (zerop n) nil
      (cons (first l)
	    (keep-first-n (1- n) (rest l)))))

;;; End lisp3d.lisp
