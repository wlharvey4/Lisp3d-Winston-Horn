;;; lisp3d-tests-main.lisp - Main test file
;;; Time-stamp: <2023-10-02 21:13:34 minilolh>

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
               '(a a a a b a b b b b)))
    (is (equal (squash-h nested)
               '(a a a a b a b b b b)))))

;;; Problem 5-11 PUNCTUATE
;;  The tests always fail when an &optional parameter is used.
;;  Seems to be a bug.

(test chapter-5-tests-problems-5-12+
  (is (equal (fibonnaci 1)
	     1))
  (is (equal (fibonnaci 2)
	     2))
  (is (equal (fibonnaci 3)
	     3))
  (is (equal (fibonnaci 4)
	     5))
  (is (equal (fibonnaci 5)
	     8))
  (is (equal (fibonnaci 6)
	     13))
  (is (equal (tail-recursive-expt 3 4)
	     81))
  (is (equal (tail-recursive-reverse '(a b c))
	     '(c b a)))
  (is (equal (clever-count-atoms '(sqrt (/ (+ (expt x 2) (expt y 2)) 2)))
	     10)))

(test chapter-5-tests-problem-5-16+
  (is (equal (user-defined-list '(a b c) '(d e f))
             '((a b c) (d e f))))
  (is (equal (user-defined-nthcdr 3 '(a b c d e f))
             '(d e f)))
  (is (equal (user-defined-last '(a b c))
             '(c))))

;;; End lisp3d-main-test.lisp
