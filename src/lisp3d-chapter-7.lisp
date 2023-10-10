;;; lisp3d-chapter-7.lisp -- Winston & Horn Lisp 3d Ed Chapter 7 Problems
;;; Time-stamp: <2023-10-10 09:33:08 minilolh>

;;; Author: LOLH <lincolnlaw@mac.com>
;;; Created: 2023-10-09

;;; Commentary: Problems from Chapter 7

;;; Code:

(in-package :lolh/lisp3d-chapter-7)

;;; PROBLEM 7-1 DOTIMES-FACTORIAL
(defun dotimes-factorial (n)
  "Perform factorial procedure iteratively."
  (let ((result 1))
    (dotimes (count n result)
      (if (< count 1) nil
          (setf result (* (1+ count) result))))))

;;; PROBLEM 7-2 COUNT-OUTLYERS-WITH-COUNT-IF
(defun COUNT-OUTLYERS-WITH-COUNT-IF (list-of-elements)
  "Write COUNT-OUTLYERS-WITH-COUNT-IF using COUNT-IF instead of DOLIST."
  (let ((freezing 32)
        (boiling 212))
    (count-if (lambda (temp) (or (< temp freezing)
                                 (> temp boiling)))
              list-of-elements)))

;;; PROBLEM 7-3 LIST-OUTLYERS
(defun list-outlyers (list-of-temps)
  "A procedure that lists the elements in a list that are below freezing 
or above boiling using DOLIST."
  (let ((result nil)
        (freezing 32)
        (boiling 212))
    (dolist (temp list-of-temps (reverse result))
      (if (or (< temp freezing)
              (> temp boiling))
          (push temp result)))))

;;; PROBLEM 7-4 LIST-OUTLYER-COUNTS
(defun list-outlyer-counts (list-of-temps)
  "A procedure that counts temperatures separately, returning a list of 
the two counts."
  (let ((below 0)
        (above 0)
        (freezing 32)
        (boiling 212))
    (dolist (temp list-of-temps (list below above))
      (cond ((< temp freezing) (setf below (1+ below)))
            ((> temp boiling) (setf above (1+ above)))))))

;;; RECURSIVE-MEMBER
(defun recursive-member (item l)
  (cond ((endp l) nil)
        ((eql item (first l)) t)
        (t (recursive-member item (rest l)))))

;;; PROBLEM 7-5 DOLIST-MEMBER
;;  This solution actually recurses inside lists inside lists.
(defun dolist-member (item l)
  "Ignoring the existence of MEMBER, write an iterative version of 
RECURSIVE-MEMBER.  Return T if the item is a member."
  (dolist (i l)
    (cond ((listp i)
           (if (dolist-member item i)
               (return t)))
          (t (if (equal item i)
                 (return t))))))

;;; PROBLEM 7-6 DOLIST-REVERSE
(defun dolist-reverse (l)
  "Ignoring the existence of REVERSE, write it using DOLIST."
  (let ((reversed-l nil))
    (dolist (i l reversed-l)
      (push i reversed-l))))

;;; End lisp3d-chapter-7.lisp
