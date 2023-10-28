; Auto-generated. Do not edit!


(cl:in-package exercise2-srv)


;//! \htmlinclude Service-request.msg.html

(cl:defclass <Service-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (station_ID
    :reader station_ID
    :initarg :station_ID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Service-request (<Service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exercise2-srv:<Service-request> is deprecated: use exercise2-srv:Service-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise2-srv:header-val is deprecated.  Use exercise2-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'station_ID-val :lambda-list '(m))
(cl:defmethod station_ID-val ((m <Service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise2-srv:station_ID-val is deprecated.  Use exercise2-srv:station_ID instead.")
  (station_ID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Service-request>) ostream)
  "Serializes a message object of type '<Service-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'station_ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Service-request>) istream)
  "Deserializes a message object of type '<Service-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'station_ID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Service-request>)))
  "Returns string type for a service object of type '<Service-request>"
  "exercise2/ServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Service-request)))
  "Returns string type for a service object of type 'Service-request"
  "exercise2/ServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Service-request>)))
  "Returns md5sum for a message object of type '<Service-request>"
  "c2fa96eb2bd06c7aa128b61b7f5a3487")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Service-request)))
  "Returns md5sum for a message object of type 'Service-request"
  "c2fa96eb2bd06c7aa128b61b7f5a3487")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Service-request>)))
  "Returns full string definition for message of type '<Service-request>"
  (cl:format cl:nil "# request~%std_msgs/Header header~%int16 station_ID~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Service-request)))
  "Returns full string definition for message of type 'Service-request"
  (cl:format cl:nil "# request~%std_msgs/Header header~%int16 station_ID~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Service-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Service-request
    (cl:cons ':header (header msg))
    (cl:cons ':station_ID (station_ID msg))
))
;//! \htmlinclude Service-response.msg.html

(cl:defclass <Service-response> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (message
    :reader message
    :initarg :message
    :type exercise2-msg:Message
    :initform (cl:make-instance 'exercise2-msg:Message)))
)

(cl:defclass Service-response (<Service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exercise2-srv:<Service-response> is deprecated: use exercise2-srv:Service-response instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise2-srv:header-val is deprecated.  Use exercise2-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise2-srv:message-val is deprecated.  Use exercise2-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Service-response>) ostream)
  "Serializes a message object of type '<Service-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'message) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Service-response>) istream)
  "Deserializes a message object of type '<Service-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'message) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Service-response>)))
  "Returns string type for a service object of type '<Service-response>"
  "exercise2/ServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Service-response)))
  "Returns string type for a service object of type 'Service-response"
  "exercise2/ServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Service-response>)))
  "Returns md5sum for a message object of type '<Service-response>"
  "c2fa96eb2bd06c7aa128b61b7f5a3487")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Service-response)))
  "Returns md5sum for a message object of type 'Service-response"
  "c2fa96eb2bd06c7aa128b61b7f5a3487")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Service-response>)))
  "Returns full string definition for message of type '<Service-response>"
  (cl:format cl:nil "# response~%std_msgs/Header header~%Message message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: exercise2/Message~%# name of the room~%string room_name~%~%# ID of the room~%int8 room_ID~%~%# level of charge of the robot battery~%int8 charge_level~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Service-response)))
  "Returns full string definition for message of type 'Service-response"
  (cl:format cl:nil "# response~%std_msgs/Header header~%Message message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: exercise2/Message~%# name of the room~%string room_name~%~%# ID of the room~%int8 room_ID~%~%# level of charge of the robot battery~%int8 charge_level~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Service-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Service-response
    (cl:cons ':header (header msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Service)))
  'Service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Service)))
  'Service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Service)))
  "Returns string type for a service object of type '<Service>"
  "exercise2/Service")