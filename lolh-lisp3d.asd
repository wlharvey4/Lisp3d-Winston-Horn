;;; lisp3d.asd - ASD file for Lisp3d Edition by Winston-Horn
;;; Time-stamp: <2023-09-26 14:51:09 minilolh>

;;; Author: LOLH
;;; Created: 2023-09-24
;;; Version: 0.2.3

;;; Commentary: ASD file for Lisp3d by Winston and Horn

;;; Code:

(defsystem "lolh-lisp3d"
  :description "Problems from Lisp3d by Winston and Horn"
  :version "0.2.3"
  :author "LOLH"
  :license "CCO 1.0 Universal"
  :components ((:module "src"
                :components ((:file "lisp3d-packages")
                             (:file "lisp3d"
			      :depends-on ("lisp3d-packages")))))
  :in-order-to ((test-op (test-op "lolh-lisp3d/tests"))))

(defsystem "lolh-lisp3d/tests"
  :description "Tests for Lisp3d by Winston-Horn"
  :version "0.2.3"
  :author "LOLH"
  :license "CCO 1.0 Universal"
  :depends-on ("1am" "lolh-lisp3d")
  :components ((:module "t"
                :components ((:file "lisp3d-tests-package")
                             (:file "lisp3d-tests-main"
                              :depends-on ("lisp3d-tests-package")))))
  :perform (test-op (o c) (symbol-call :lisp3d-tests :run)))

;;; End lisp3d.asd
