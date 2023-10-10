;;; lisp3d-tests-main.lisp - Main test file
;;; Time-stamp: <2023-10-10 09:29:04 minilolh>

;;; Author: LOLH
;;; Created: 2023-09-24

;;; Commentary: Tests for the lisp3d Winston-Horn textbook

;;; Code:

(in-package :lisp3d-tests)

;; (test dummytest
;;   (is (eq t t))
;;   (is (zerop 0)))

;;; CHAPTER 5

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

;;; CHAPTER 6

(test chapter-6-constructor-readers-writers
  (let ((books (list
                (make-book '(artificial intelligence)
                           '(Patrick Henry Winston)
                           '(technical ai))
                (make-book '(Common Lisp)
                           '(Guy L. Steele)
                           '(technical lisp))
                (make-book '(Moby Dick)
                           '(Herman Melville)
                           '(fiction))
                (make-book '(Tom Sawyer)
                           '(Mark Twain)
                           '(fiction))
                (make-book '(The Black Orchid)
                           '(Rex Stout)
                           '(fiction mystery)))))
    (is (equal (find-book-by-title-words '(orchid) books)
               '((title (The Black Orchid))
                 (author (Rex Stout))
                 (classification (fiction mystery)))))
    (is (equal (find-book-by-title-words '(black orchid) books)
               '((title (The Black Orchid))
                 (author (Rex Stout))
                 (classification (fiction mystery)))))
    (is (equal (find-book-by-title-words '(orchid black) books)
               '((title (The Black Orchid))
                 (author (Rex Stout))
                 (classification (fiction mystery)))))
    (is (equal (find-book-by-title-words '(blue orchid) books)
               nil))
    (is t "find-books-by-title ~a should be~%~a~%" '(orchid)
        '((title (The Black Orchid))
                 (author (Rex Stout))
                 (classification (fiction mystery))))))

;;; CHAPTER 7

(test chapter-7-iteration
  (is (= 1 (dotimes-factorial 1)))
  (is (= 2 (dotimes-factorial 2)))
  (is (= 6 (dotimes-factorial 3)))
  (is (= 24 (dotimes-factorial 4)))
  (is (= 120 (dotimes-factorial 5))))

(test chapter-7-count-if
  (is (= 2 (count-outlyers-with-count-if '(31 32 212 213))))
  (is (= 0 (count-outlyers-with-count-if '(32 212))))
  (is (= 2 (count-outlyers-with-count-if '(0 32 212 273)))))

(test chapter-7-list-outlyers-and-counts
  (is (equal '(31 213) (list-outlyers '(31 32 212 213))))
  (is (equal '() (list-outlyers '(32 212))))
  (is (equal '(1 1) (list-outlyer-counts '(31 32 212 213))))
  (is (equal '(0 0) (list-outlyer-counts '(32 212)))))

(test chapter-7-dolist-member
  (is (eq t (dolist-member 1 '(((1))))))
  (is (eq nil (dolist-member 1 '(((2)))))))

(test chapter-7-dolist-reverse
  (is (equal '(3 2 1) (dolist-reverse '(1 2 3)))))

;;; End lisp3d-main-test.lisp
