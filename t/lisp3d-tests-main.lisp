;;; lisp3d-tests-main.lisp - Main test file
;;; Time-stamp: <2023-09-25 22:53:24 wlh>

;;; Author: LOLH
;;; Created: 2023-09-24

;;; Commentary: Tests for the lisp3d Winston-Horn textbook

;;; Code:

(in-package :lisp3d-tests)

(test dummytest
  (is (eq t t))
  (is (zerop 0)))

(test chapter-5-tests
  (is (equal (skip-first-n 3 '(a b c d e f g h))
	     '(d e f g h))))

;;; End lisp3d-main-test.lisp
