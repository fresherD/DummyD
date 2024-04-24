;; Auto-generated. Do not edit!


(when (boundp 'autoware_msgs::ConfigPointsConcatFilter)
  (if (not (find-package "AUTOWARE_MSGS"))
    (make-package "AUTOWARE_MSGS"))
  (shadow 'ConfigPointsConcatFilter (find-package "AUTOWARE_MSGS")))
(unless (find-package "AUTOWARE_MSGS::CONFIGPOINTSCONCATFILTER")
  (make-package "AUTOWARE_MSGS::CONFIGPOINTSCONCATFILTER"))

(in-package "ROS")
;;//! \htmlinclude ConfigPointsConcatFilter.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_msgs::ConfigPointsConcatFilter
  :super ros::object
  :slots (_header _output_frame ))

(defmethod autoware_msgs::ConfigPointsConcatFilter
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:output_frame __output_frame) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _output_frame (string __output_frame))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:output_frame
   (&optional __output_frame)
   (if __output_frame (setq _output_frame __output_frame)) _output_frame)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _output_frame
    4 (length _output_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _output_frame
       (write-long (length _output_frame) s) (princ _output_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _output_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get autoware_msgs::ConfigPointsConcatFilter :md5sum-) "9b3fd698c43487a89465196f3e79b2cc")
(setf (get autoware_msgs::ConfigPointsConcatFilter :datatype-) "autoware_msgs/ConfigPointsConcatFilter")
(setf (get autoware_msgs::ConfigPointsConcatFilter :definition-)
      "std_msgs/Header header
string output_frame

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :autoware_msgs/ConfigPointsConcatFilter "9b3fd698c43487a89465196f3e79b2cc")


