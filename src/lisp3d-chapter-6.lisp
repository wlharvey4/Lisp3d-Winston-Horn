;;; lisp3d-chapter-6.lisp -- Problems from Lisp 3d Ed Winston & Horn Chapter 6
;;; Time-stamp: <2023-10-05 22:49:59 minilolh>

;;; Author: LOLH <lincolnlaw@mac.com>
;;; Created: 2023-10-05

;;; Commentary: Problems from Chapter 6 Lisp 3d Ed Winston & Horn

;;; Code

(in-package :lolh/lisp3d-chapter-6)

;;; Problem 6-1 FIND-BOOK-BY-TITLE-WORDS
;;  Supposed that the arguments to FIND-BOOK-BY-TITLE-WORDS are words that may
;;  appear in book titles.  FIND-BOOK-BY-TITLE-WORDS is to return the first
;;  book it finds that has all of those words in its title.
;;  To define FIND-BOOK-BY-TITLE-WORDS, we need a procedure that matches words
;;  to titles.  The primitive Lisp procedure SUBSETP is just right.  SUBSETP is
;;  indifferent to element order.
;;  Using SUBSETP, define FIND-BOOK-BY-TITLE-WORDS.

(defun find-book-by-title-words (title-words books)
  (cond ((endp books) nil)
        ((subsetp title-words (book-title (first books)))
         (first books))
        (t (find-book-by-title-words title-words (rest books)))))

;;; End lisp3d-chapter-6.lisp
