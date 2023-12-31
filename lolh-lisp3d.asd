;;; lisp3d.asd - ASD file for Lisp3d Edition by Winston-Horn
;;; Time-stamp: <2023-10-17 22:53:27 minilolh>

;;; Author: LOLH
;;; Created: 2023-09-24
;;; Version: 0.3.6

;;; Commentary: ASD file for Lisp3d by Winston and Horn

;;; Code:

(defsystem "lolh-lisp3d"
  :description "Problems from Lisp3d by Winston and Horn"
  :version "0.3.6"
  :author "LOLH"
  :license "CCO 1.0 Universal"
  :components ((:module "src"
                :components ((:file "lisp3d-packages")
                             (:file "lisp3d-chapter-5"
			      :depends-on ("lisp3d-packages"))
                             (:file "lisp3d-chapter-6-books"
                              :depends-on ("lisp3d-packages"))
                             (:file "lisp3d-chapter-6"
                              :depends-on ("lisp3d-packages"
                                           "lisp3d-chapter-6-books"))
                             (:file "lisp3d-chapter-7"
                              :depends-on ("lisp3d-packages"))
                             (:file "lisp3d-chapter-9"
                              :depends-on ("lisp3d-packages")))))
  :in-order-to ((test-op (test-op "lolh-lisp3d/tests"))))

(defsystem "lolh-lisp3d/tests"
  :description "Tests for Lisp3d by Winston-Horn"
  :version "0.3.6"
  :author "LOLH"
  :license "CCO 1.0 Universal"
  :depends-on ("2am" "lolh-lisp3d")
  :components ((:module "t"
                :components ((:file "lisp3d-tests-package")
                             (:file "lisp3d-tests-main"
                              :depends-on ("lisp3d-tests-package")))))
  :perform (test-op (o c) (symbol-call :lisp3d-tests :run)))

;;; End lisp3d.asd
