;;; lisp3d-packages.lisp - Package file for Lisp 3d Edition Winston-Horn
;;; Time-stamp: <2023-10-05 08:08:41 minilolh>

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
   :tail-recursive-reverse
   ;; Problem 5-15
   :clever-count-atoms
   ;; Problem 5-16
   :user-defined-list
   ;; Problem 5-17
   :user-defined-nthcdr
   ;; Problem 5-18
   :user-defined-last
   ))

(defpackage :lolh/lisp3d-chapter-6
  (:use :cl)
  (:export
   :make-book
   :book-title
   :book-author
   :book-classification
   :book-author-writer
   :list-authors
   :list-fiction-books
   :count-fiction-books
   :find-first-fiction-book
   ))

;;; End lisp3d-packages.lisp
