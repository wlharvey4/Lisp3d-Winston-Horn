;;; lisp3d-tests-main.lisp - Main test file
;;; Time-stamp: <2023-09-28 21:56:36 wlh>

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
  (let ((formula '(sqrt (/ (+ (expt x 2) (expt y 2)) 2)))
        (nested '(a (a (a (a b))) (((a b) b) b) b)))
    (is (equal (presentp 'x formula)
	       t))
    (is (equal (presentp 'z formula)
	       nil))
    (is (equal (squash nested)
               '(a a a a b a b b b b)))))

;;; End lisp3d-main-test.lisp
