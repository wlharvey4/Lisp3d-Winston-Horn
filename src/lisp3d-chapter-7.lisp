;;; lisp3d-chapter-7.lisp -- Winston & Horn Lisp 3d Ed Chapter 7 Problems
;;; Time-stamp: <2023-10-09 22:34:30 minilolh>

;;; Author: LOLH <lincolnlaw@mac.com>
;;; Created: 2023-10-09

;;; Commentary: Problems from Chapter 7

;;; Code:

(in-package :lolh/lisp3d-chapter-7)

(defun dotimes-factorial (n)
  (let ((result 1))
    (dotimes (count n result)
      (if (< count 1) nil
          (setf result (* (1+ count) result))))))

;;; End lisp3d-chapter-7.lisp
