(in-package :cl-user)
(defpackage <% @var name %>.templates.index
  (:use :cl
        :cl-markup)
  (:import-from :<% @var name %>.templates.layouts.defaults
                :with-default-layout))
(in-package :<% @var name %>.templates.index)

(defun render ()
  (with-default-layout (:title "Welcome to Caveman2")
    (:div :id "main"
          "Welcome to " (:a :href "http://8arrow.org/caveman/" "Caveman2") "!")))
