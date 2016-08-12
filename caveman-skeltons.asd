#|
  This file is a part of caveman-skeltons project.
  Copyright (c) 2016 eshamster (hamgoostar@gmail.com)
|#

#|
  Author: eshamster (hamgoostar@gmail.com)
|#

(in-package :cl-user)
(defpackage caveman-skeltons-asd
  (:use :cl :asdf))
(in-package :caveman-skeltons-asd)

(defsystem caveman-skeltons
  :version "0.1"
  :author "eshamster"
  :license "LLGPL"
  :depends-on (:caveman2)
  :components ((:module "src"
                :components
                ((:file "caveman-skeltons"))))
  :description "Skeltons for Caveman2"
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.md"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (test-op caveman-skeltons-test))))
