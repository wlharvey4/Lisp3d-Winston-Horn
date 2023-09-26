;;; lisp3d.asd - ASD file for Lisp3d Edition by Winston-Horn
;;; Time-stamp: <2023-09-25 22:30:11 wlh>

;;; Author: LOLH
;;; Created: 2023-09-24
;;; Version: 0.1.3

;;; Commentary: ASD file for Lisp3d by Winston and Horn

;;; Code:

(defsystem "lisp3d"
  :description "Problems from Lisp3d by Winston and Horn"
  :version "0.1.3"
  :author "LOLH"
  :license "CCO 1.0 Universal"
  :components ((:module "src"
                :components ((:file "lisp3d-packages")
                             (:file "lisp3d" :depends-on ("lisp3d-packages")))))
  :in-order-to ((test-op (test-op "lisp3d/tests"))))

(defsystem "lisp3d/tests"
  :description "Tests for Lisp3d by Winston-Horn"
  :version "0.1.2"
  :author "LOLH"
  :license "CCO 1.0 Universal"
  :depends-on ("fiveam" "lisp3d")
  :components ((:module "t"
                        :components ((:file "lisp3d-tests-package")
                                     (:file "lisp3d-tests-main"
                                            :depends-on ("lisp3d-tests-package")))))
  :perform (test-op (o c) (symbol-call :lisp3d-tests :lisp3d-run-all-tests)))

;;; End lisp3d.asd
