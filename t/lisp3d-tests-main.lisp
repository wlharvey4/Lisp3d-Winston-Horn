;;; lisp3d-tests-main.lisp - Main test file
;;; Time-stamp: <2023-09-25 01:51:30 minilolh>

;;; Author: LOLH
;;; Created: 2023-09-24
;;; Version: 0.1.0

;;; Commentary: Tests for the lisp3d Winston-Horn textbook

;;; Code:

(in-package :lisp3d-tests)

(def-suite :lisp3d-all-tests
  :description "Suite containing all tests for lisp3d")

(in-suite :lisp3d-all-tests)

(test :dummytest
  "Placeholder to check that the test system is operational."
  (is (eq t t))
  (is (not (eq nil t)))
  (is (eq t nil)))

(defun lisp3d-run-all-tests ()
  "Main procdure to run all tests for the lisp3d system."
  (run! :lisp3d-all-tests))

;;; End lisp3d-main-test.lisp
