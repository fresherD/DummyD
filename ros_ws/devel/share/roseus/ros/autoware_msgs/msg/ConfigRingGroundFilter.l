;; Auto-generated. Do not edit!


(when (boundp 'autoware_msgs::ConfigRingGroundFilter)
  (if (not (find-package "AUTOWARE_MSGS"))
    (make-package "AUTOWARE_MSGS"))
  (shadow 'ConfigRingGroundFilter (find-package "AUTOWARE_MSGS")))
(unless (find-package "AUTOWARE_MSGS::CONFIGRINGGROUNDFILTER")
  (make-package "AUTOWARE_MSGS::CONFIGRINGGROUNDFILTER"))

(in-package "ROS")
;;//! \htmlinclude ConfigRingGroundFilter.msg.html


(defclass autoware_msgs::ConfigRingGroundFilter
  :super ros::object
  :slots (_sensor_model _sensor_height _max_slope _point_distance _min_point _clipping_thres _gap_thres ))

(defmethod autoware_msgs::ConfigRingGroundFilter
  (:init
   (&key
    ((:sensor_model __sensor_model) "")
    ((:sensor_height __sensor_height) 0.0)
    ((:max_slope __max_slope) 0.0)
    ((:point_distance __point_distance) 0.0)
    ((:min_point __min_point) 0.0)
    ((:clipping_thres __clipping_thres) 0.0)
    ((:gap_thres __gap_thres) 0.0)
    )
   (send-super :init)
   (setq _sensor_model (string __sensor_model))
   (setq _sensor_height (float __sensor_height))
   (setq _max_slope (float __max_slope))
   (setq _point_distance (float __point_distance))
   (setq _min_point (float __min_point))
   (setq _clipping_thres (float __clipping_thres))
   (setq _gap_thres (float __gap_thres))
   self)
  (:sensor_model
   (&optional __sensor_model)
   (if __sensor_model (setq _sensor_model __sensor_model)) _sensor_model)
  (:sensor_height
   (&optional __sensor_height)
   (if __sensor_height (setq _sensor_height __sensor_height)) _sensor_height)
  (:max_slope
   (&optional __max_slope)
   (if __max_slope (setq _max_slope __max_slope)) _max_slope)
  (:point_distance
   (&optional __point_distance)
   (if __point_distance (setq _point_distance __point_distance)) _point_distance)
  (:min_point
   (&optional __min_point)
   (if __min_point (setq _min_point __min_point)) _min_point)
  (:clipping_thres
   (&optional __clipping_thres)
   (if __clipping_thres (setq _clipping_thres __clipping_thres)) _clipping_thres)
  (:gap_thres
   (&optional __gap_thres)
   (if __gap_thres (setq _gap_thres __gap_thres)) _gap_thres)
  (:serialization-length
   ()
   (+
    ;; string _sensor_model
    4 (length _sensor_model)
    ;; float32 _sensor_height
    4
    ;; float32 _max_slope
    4
    ;; float32 _point_distance
    4
    ;; float32 _min_point
    4
    ;; float32 _clipping_thres
    4
    ;; float32 _gap_thres
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sensor_model
       (write-long (length _sensor_model) s) (princ _sensor_model s)
     ;; float32 _sensor_height
       (sys::poke _sensor_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_slope
       (sys::poke _max_slope (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _point_distance
       (sys::poke _point_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_point
       (sys::poke _min_point (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _clipping_thres
       (sys::poke _clipping_thres (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gap_thres
       (sys::poke _gap_thres (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sensor_model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _sensor_height
     (setq _sensor_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_slope
     (setq _max_slope (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _point_distance
     (setq _point_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_point
     (setq _min_point (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _clipping_thres
     (setq _clipping_thres (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gap_thres
     (setq _gap_thres (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_msgs::ConfigRingGroundFilter :md5sum-) "29b10a55bebbea4ca5fa23de06d152d0")
(setf (get autoware_msgs::ConfigRingGroundFilter :datatype-) "autoware_msgs/ConfigRingGroundFilter")
(setf (get autoware_msgs::ConfigRingGroundFilter :definition-)
      "string sensor_model
float32 sensor_height
float32 max_slope
float32 point_distance
float32 min_point
float32 clipping_thres
float32 gap_thres

")



(provide :autoware_msgs/ConfigRingGroundFilter "29b10a55bebbea4ca5fa23de06d152d0")


