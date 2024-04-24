; Auto-generated. Do not edit!


(cl:in-package autoware_msgs-msg)


;//! \htmlinclude ConfigPointsConcatFilter.msg.html

(cl:defclass <ConfigPointsConcatFilter> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (output_frame
    :reader output_frame
    :initarg :output_frame
    :type cl:string
    :initform ""))
)

(cl:defclass ConfigPointsConcatFilter (<ConfigPointsConcatFilter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigPointsConcatFilter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigPointsConcatFilter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_msgs-msg:<ConfigPointsConcatFilter> is deprecated: use autoware_msgs-msg:ConfigPointsConcatFilter instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ConfigPointsConcatFilter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:header-val is deprecated.  Use autoware_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'output_frame-val :lambda-list '(m))
(cl:defmethod output_frame-val ((m <ConfigPointsConcatFilter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:output_frame-val is deprecated.  Use autoware_msgs-msg:output_frame instead.")
  (output_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigPointsConcatFilter>) ostream)
  "Serializes a message object of type '<ConfigPointsConcatFilter>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'output_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'output_frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigPointsConcatFilter>) istream)
  "Deserializes a message object of type '<ConfigPointsConcatFilter>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'output_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigPointsConcatFilter>)))
  "Returns string type for a message object of type '<ConfigPointsConcatFilter>"
  "autoware_msgs/ConfigPointsConcatFilter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigPointsConcatFilter)))
  "Returns string type for a message object of type 'ConfigPointsConcatFilter"
  "autoware_msgs/ConfigPointsConcatFilter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigPointsConcatFilter>)))
  "Returns md5sum for a message object of type '<ConfigPointsConcatFilter>"
  "9b3fd698c43487a89465196f3e79b2cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigPointsConcatFilter)))
  "Returns md5sum for a message object of type 'ConfigPointsConcatFilter"
  "9b3fd698c43487a89465196f3e79b2cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigPointsConcatFilter>)))
  "Returns full string definition for message of type '<ConfigPointsConcatFilter>"
  (cl:format cl:nil "std_msgs/Header header~%string output_frame~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigPointsConcatFilter)))
  "Returns full string definition for message of type 'ConfigPointsConcatFilter"
  (cl:format cl:nil "std_msgs/Header header~%string output_frame~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigPointsConcatFilter>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'output_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigPointsConcatFilter>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigPointsConcatFilter
    (cl:cons ':header (header msg))
    (cl:cons ':output_frame (output_frame msg))
))
