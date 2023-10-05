;;; lisp3d-books.lisp -- Lisp 3d Edition by Winston and Horn -- Chapter 6 Books Database
;;; Time-stamp: <2023-10-05 08:09:20 minilolh>

;;; Author: LOLH
;;; Created: 2023-10-04

;;; Commentary:
;;  Chapter 6 Books
;;  Constructor, Readers, and Writers

;;; Code:

(in-package :lolh/lisp3d-chapter-6)

(defun make-book (title author classification)
  "The Book constructor."
  (list (list 'title title)
        (list 'author author)
        (list 'classification classification)))

(defun book-title (book)
  "Readfor for title of a book."
  (second (assoc 'title book)))

(defun book-author (book)
  "Reader for author of a book."
  (second (assoc 'author book)))

(defun book-classification (book)
  "Reader for classication of a book."
  (second (assoc 'classification book)))

(defun book-author-writer (book author)
  "Writer for author of a book."
  (if (eql 'author (first (first book)))
      (cons (list 'author author) (rest book))
      (cons (first book)
            (book-author-writer (rest book) author))))

(defun list-authors (books)
  "Transformation,listing only the authors."
  (if (endp books)
      nil
      (cons (book-author (first books))
            (list-authors (rest books)))))

(defun fictionp (book)
  "A predicate for classification 'fiction'."
  (member 'fiction (book-classification book)))

(defun list-fiction-books (books)
  (cond ((endp books) nil)
        ((fictionp (first books))
         (cons (first books)
               (list-fiction-books (rest books))))
        (t (list-fiction-books (rest books)))))

(defun count-fiction-books (books)
  "Counting procedure using predicate."
  (cond ((endp books) 0)
        ((fictionp (first books))
         (+ 1 (count-fiction-books (rest books))))
        (t (count-fiction-books (rest books)))))

(defun find-first-fiction-book (books)
  "Filtering procedure using predicate."
  (cond ((endp books) nil)
        ((fictionp (first books))
         (first books))
        (t (find-first-fiction-book (rest books)))))

;;; End lisp3d-books.lisp
