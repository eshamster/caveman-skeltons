(in-package :cl-user)
(defpackage <% @var name %>.templates.layouts.defaults
  (:use :cl
        :cl-markup)
  (:import-from :<% @var name %>.templates.layouts.utils
                :with-markup-to-string)
  (:export :with-default-layout))
(in-package :<% @var name %>.templates.layouts.defaults)

(defmacro with-default-layout ((&key title) &body body)
  `(with-markup-to-string
     (html5 (:head (:title ,title)
                   (:meta :charset "UTF-8")
                   (:link :rel "stylesheet"
                          :type "text/css"
                          :href "/css/main.css"))
            (:body ,@body))))
