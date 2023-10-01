;;; lisp3d.lisp - Lisp 3d Edition by Winston and Horn
;;; Time-stamp: <2023-10-01 09:00:51 wlh>

;;; Author: LOLH
;;; Created: 2023-09-24

;;; Commentary:
;;  Problems  from  Lisp  3d  Edition by  Patrick  Henry  Winston  and
;;  Berthold  Klaus  Paul Horn  (1989).   Each  chapter gets  its  own
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
;;  Write a procedure, KEEP-FIRST-N,  not tail-recursive, that returns
;;  a a list  of the first N  elements in a list.You  may assume there
;;  are at least N elements.

(defun keep-first-n (n l)
  (if (zerop n) nil
      (cons (first l)
	    (keep-first-n (1- n) (rest l)))))

;;; Problem 5-3
;;  Now  write   a  pair   of  procedures   KEEP-FIRST-N-CLEVERLY  and
;;  KEEP-FIRST-N-CLEVERLY-AUX, that together make  a list of the first
;;  N elements in  a list.  Be sure  that KEEP-FIRST-N-CLEVERLY-AUX is
;;  tail-recursive.

(defun keep-first-n-cleverly (n l)
  (keep-first-n-cleverly-aux n l nil))

(defun keep-first-n-cleverly-aux (n l trl)
  (if (zerop n)
      (reverse trl)
      (keep-first-n-cleverly-aux (1- n)
                                 (rest l)
                                 (cons (first l)
                                       trl))))

;;; Problem 5-4
;;  The Lisp primitives 1+ and 1-  increment and decrement a number by
;;  one.   Using 1+  and 1-,  write  a recursive  procedure, ADD,  for
;;  adding  two  numbers without  +.   Assume  that both  numbers  are
;;  positive.

(defun add (x y)
  (if (zerop y)
      x
      (add (1+ x) (1- y))))

;;; Problem 5-5 The Tower of Hanoi
;;  Suppose TOWER-OF-HANOI is to count the number of moves required to
;;  move a  list of  pins from  one pin  to another,  given a  list of
;;  disks.  Define TOWER-OF-HANOI.

(defun tower-of-hanoi (l)
  (if (endp l)
      0
      (+
       (tower-of-hanoi (rest l))
       1
       (tower-of-hanoi (rest l)))))

;;; Problem 5-8 PRESENTP
;;  Define PRESENTP, a predicate that  determines whehter a given atom
;;  occurs anywhere in an expression.  PRESENTP differs from MEMBER in
;;  that    MEMBER    looks    oinly   for    topo-level    instances.
;;  Symbolic-mathematics systems make use of a procedure like PRESENTP
;;  to determine if an expression contains a particular variable.

(defun presentp (e f)
  (cond ((atom f) (eql e f))
	((endp f) nil)
	(t (or (presentp e (first f))
	       (presentp e (rest f))))))

;;; Problem 5-9 SQUASH
;;  Define  SQUASH,  a  procedure  that takes  an  expression  as  its
;;  argument and  returns a nonnested list  of all atoms found  in the
;;  expression.  Essentially,  this procedure  explores the  fringe of
;;  the tree represented by the list given as its argument, and return
;;  a list of all the leaves.

(defun squash (l)
  (cond ((null l) nil)
        ((atom l) (list l))
        (t (append (squash (first l)) (squash (rest l))))))

(defun squash-h (nested)
  (squash-helper nested nil))

(defun squash-helper (n l)
  (cond ((endp n) l)
	((atom (first n))
	 (cons (first n) (squash-helper (rest n) l)))
	((listp (first n))
	 (squash-helper (first n) (squash-helper (rest n) l)))))

;;; Problem 5-11 PUNCTUATE
;;

(defun punctuate (l &optional (mark 'PERIOD))
  (append l (list mark)))

;;; Problem 5-12 FIBONNACI
;;  Create a FIBONNACI procedure that uses optional parameters and is
;;  more efficient than the simple procedure.

(defun fibonnaci (n &optional (c 1) (n1 1) (n2 1))
  "Fibonnaci that stores the previous two solutions in optional
   parameters.  N is the number to calculate.  C is the number of the
   current iteration.  N1 is the value of the current calculation and
   is the sum of the prior two calculations. N2 is the value of the
   prior calculation."
  (if (eql c n) n1
      (fibonnaci n (1+ c) (+ n1 n2) n1)))


;;; End lisp3d.lisp
