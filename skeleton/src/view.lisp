(in-package :cl-user)
(defpackage <% @var name %>.view
  (:use :cl)
  (:import-from :<% @var name %>.config
                :*template-directory*)
  (:import-from :caveman2
                :*response*
                :response-headers)
  (:import-from :datafly
                :encode-json)
  (:export :render
           :render-json))
(in-package :<% @var name %>.view)

(defun render (template-name &rest rest)
  (check-type template-name keyword)
  (apply (intern "RENDER"
                 (string-upcase
                  (concatenate 'string
                               "<% @var name %>.templates."
                               (symbol-name template-name))))
         rest))

(defun render-json (object)
  (setf (getf (response-headers *response*) :content-type) "application/json")
  (encode-json object))
