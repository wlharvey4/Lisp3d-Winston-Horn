;;; lisp3d-tests-main.lisp - Main test file
;;; Time-stamp: <2023-09-26 14:49:40 minilolh>

;;; Author: LOLH
;;; Created: 2023-09-24

;;; Commentary: Tests for the lisp3d Winston-Horn textbook

;;; Code:

(in-package :lisp3d-tests)

;; (test dummytest
;;   (is (eq t t))
;;   (is (zerop 0)))

(test chapter-5-tests
      (is (equal (skip-first-n 3 '(a b c d e f g h i))
	         '(d e f g h i)))
      (is (equal (keep-first-n 3 '(a b c d e f g h i))
	         '(a b c)))
      (is (equal (keep-first-n-cleverly 3 '(a b c d e f g h i))
                 '(a b c)))
      (is (equal (add 3 4)
                 7)))


;;; End lisp3d-main-test.lisp
