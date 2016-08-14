(in-package :cl-user)
(defpackage <% @var name %>.static.js.index
  (:use :cl
        :parenscript))
(in-package :<% @var name %>.static.js.index)

(defun js-main ()
  (ps (alert "Hello Parenscript!!")))
