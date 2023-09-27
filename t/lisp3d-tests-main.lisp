;;; lisp3d-tests-main.lisp - Main test file
;;; Time-stamp: <2023-09-27 03:44:39 wlh>

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
             7))
  (is (equal (tower-of-hanoi '(1))
             1))
  (is (equal (tower-of-hanoi '(2 1))
             3))
  (is (equal (tower-of-hanoi '(3 2 1))
             7))
  (is (equal (tower-of-hanoi '(4 3 2 1))
             15))
  (is (equal (tower-of-hanoi '(5 4 3 2 1))
             31))
  (is (equal (tower-of-hanoi '(10 9 8 7 6 5 4 3 2 1))
             1023)))

(test chapter-5-tests-problem-5-8
  (let ((formula '(sqrt (- (sqr x) (sqr y)))))
    (is (equal (presentp 'x formula)
	       t))
    (is (equal (presentp 'z formula)
	       nil))))

;;; End lisp3d-main-test.lisp
