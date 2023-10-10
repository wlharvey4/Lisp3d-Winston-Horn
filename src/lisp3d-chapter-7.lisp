;;; lisp3d-chapter-7.lisp -- Winston & Horn Lisp 3d Ed Chapter 7 Problems
;;; Time-stamp: <2023-10-09 23:15:00 minilolh>

;;; Author: LOLH <lincolnlaw@mac.com>
;;; Created: 2023-10-09

;;; Commentary: Problems from Chapter 7

;;; Code:

(in-package :lolh/lisp3d-chapter-7)

(defun dotimes-factorial (n)
  "Perform factorial procedure iteratively."
  (let ((result 1))
    (dotimes (count n result)
      (if (< count 1) nil
          (setf result (* (1+ count) result))))))

(defun COUNT-OUTLYERS-WITH-COUNT-IF (list-of-elements)
  "Write COUNT-OUTLYERS-WITH-COUNT-IF using COUNT-IF instead of DOLIST."
  (let ((result 0)
        (freezing 32)
        (boiling 212))
    (count-if (lambda (temp) (when (or (< temp freezing)
                                       (> temp boiling))
                               (setf result (1+ result)))
                )
              list-of-elements)
    result))

;;; End lisp3d-chapter-7.lisp
