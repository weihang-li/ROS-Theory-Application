;; Auto-generated. Do not edit!


(when (boundp 'learning_communication::PersonSrv)
  (if (not (find-package "LEARNING_COMMUNICATION"))
    (make-package "LEARNING_COMMUNICATION"))
  (shadow 'PersonSrv (find-package "LEARNING_COMMUNICATION")))
(unless (find-package "LEARNING_COMMUNICATION::PERSONSRV")
  (make-package "LEARNING_COMMUNICATION::PERSONSRV"))
(unless (find-package "LEARNING_COMMUNICATION::PERSONSRVREQUEST")
  (make-package "LEARNING_COMMUNICATION::PERSONSRVREQUEST"))
(unless (find-package "LEARNING_COMMUNICATION::PERSONSRVRESPONSE")
  (make-package "LEARNING_COMMUNICATION::PERSONSRVRESPONSE"))

(in-package "ROS")





(intern "*UNKNOWN*" (find-package "LEARNING_COMMUNICATION::PERSONSRVREQUEST"))
(shadow '*UNKNOWN* (find-package "LEARNING_COMMUNICATION::PERSONSRVREQUEST"))
(defconstant learning_communication::PersonSrvRequest::*UNKNOWN* 0)
(intern "*MALE*" (find-package "LEARNING_COMMUNICATION::PERSONSRVREQUEST"))
(shadow '*MALE* (find-package "LEARNING_COMMUNICATION::PERSONSRVREQUEST"))
(defconstant learning_communication::PersonSrvRequest::*MALE* 1)
(intern "*FEMALE*" (find-package "LEARNING_COMMUNICATION::PERSONSRVREQUEST"))
(shadow '*FEMALE* (find-package "LEARNING_COMMUNICATION::PERSONSRVREQUEST"))
(defconstant learning_communication::PersonSrvRequest::*FEMALE* 2)
(defclass learning_communication::PersonSrvRequest
  :super ros::object
  :slots (_name _age _sex ))

(defmethod learning_communication::PersonSrvRequest
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:sex __sex) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _sex (round __sex))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:sex
   (&optional __sex)
   (if __sex (setq _sex __sex)) _sex)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint8 _age
    1
    ;; uint8 _sex
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _age
       (write-byte _age s)
     ;; uint8 _sex
       (write-byte _sex s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sex
     (setq _sex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass learning_communication::PersonSrvResponse
  :super ros::object
  :slots (_result ))

(defmethod learning_communication::PersonSrvResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass learning_communication::PersonSrv
  :super ros::object
  :slots ())

(setf (get learning_communication::PersonSrv :md5sum-) "c198113e7dd9cc5c9fd5f271c8479b39")
(setf (get learning_communication::PersonSrv :datatype-) "learning_communication/PersonSrv")
(setf (get learning_communication::PersonSrv :request) learning_communication::PersonSrvRequest)
(setf (get learning_communication::PersonSrv :response) learning_communication::PersonSrvResponse)

(defmethod learning_communication::PersonSrvRequest
  (:response () (instance learning_communication::PersonSrvResponse :init)))

(setf (get learning_communication::PersonSrvRequest :md5sum-) "c198113e7dd9cc5c9fd5f271c8479b39")
(setf (get learning_communication::PersonSrvRequest :datatype-) "learning_communication/PersonSrvRequest")
(setf (get learning_communication::PersonSrvRequest :definition-)
      "string name
uint8 age
uint8 sex

uint8 unknown = 0
uint8 male    = 1
uint8 female  = 2

---
string result

")

(setf (get learning_communication::PersonSrvResponse :md5sum-) "c198113e7dd9cc5c9fd5f271c8479b39")
(setf (get learning_communication::PersonSrvResponse :datatype-) "learning_communication/PersonSrvResponse")
(setf (get learning_communication::PersonSrvResponse :definition-)
      "string name
uint8 age
uint8 sex

uint8 unknown = 0
uint8 male    = 1
uint8 female  = 2

---
string result

")



(provide :learning_communication/PersonSrv "c198113e7dd9cc5c9fd5f271c8479b39")

