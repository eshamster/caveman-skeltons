(in-package :cl-user)
(defpackage :caveman-skeltons
  (:use :cl)
  (:export :make-project))
(in-package :caveman-skeltons)

;; Note: this source is based on https://github.com/fukamachi/caveman/blob/master/v2/src/skeleton.lisp

(defvar *skeleton-directory*
  (asdf:system-relative-pathname :caveman-skeltons #p "skeleton/"))

(defun make-project (path &rest params &key name description author email license &allow-other-keys)
  (declare (ignore name description author email license))
  (let ((cl-project:*skeleton-directory* *skeleton-directory*))
    (apply #'cl-project:make-project path params)))
