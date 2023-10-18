;;; lisp3d-chapter-9.lisp -- Winston-Horn Lisp 3d Ed Chapter 9 Problems
;;; Time-stamp: <2023-10-17 23:02:33 minilolh>

;;; Author: LOLH
;;; Created: 2023-10-17

;;; Commentary: Problems from Winston & Horn Lisp 3d Edition Chapter 9

;;; Code

(in-package :lolh/lisp3d-chapter-9)

;;; PROBLEM 9-1: The official solution to the TOWER-OF-HANOI problem is:
(defun tower-of-hanoi (disks from to spare)
  (if (endp disks)
      0
      (+ (tower-of-hanoi (rest disks) from spare to)
         1
         (tower-of-hanoi (rest disks) spare to from))))

;;  Modify TOWER-OF-HANOI so  that it prints a  series of instructions
;;  for moving disks, rather than counting the number of moves.
;;  (tower-of-hanoi '(3 2 1) 'a 'b 'c)
;;  Move 1 from A to B.
;;  Move 2 from A to C.
;;  Move 1 from B to C.
;;  ...

(defun tower-of-hanoi-with-instructions (disks from to spare)
  (if (endp disks)
      NIL
      (progn
        (tower-of-hanoi-with-instructions (rest disks) from spare to)
        (format t "Move ~A from ~A to ~A~%" (first disks) from to)
        (tower-of-hanoi-with-instructions (rest disks) spare to from))))

;;; End lisp3d-chapter-9.lisp
