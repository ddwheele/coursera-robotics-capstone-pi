
(cl:in-package :asdf)

(defsystem "geometry_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AccelWithCovarianceStamped" :depends-on ("_package_AccelWithCovarianceStamped"))
    (:file "_package_AccelWithCovarianceStamped" :depends-on ("_package"))
    (:file "Point32" :depends-on ("_package_Point32"))
    (:file "_package_Point32" :depends-on ("_package"))
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "TwistWithCovarianceStamped" :depends-on ("_package_TwistWithCovarianceStamped"))
    (:file "_package_TwistWithCovarianceStamped" :depends-on ("_package"))
    (:file "PoseStamped" :depends-on ("_package_PoseStamped"))
    (:file "_package_PoseStamped" :depends-on ("_package"))
    (:file "PoseWithCovariance" :depends-on ("_package_PoseWithCovariance"))
    (:file "_package_PoseWithCovariance" :depends-on ("_package"))
    (:file "Pose2D" :depends-on ("_package_Pose2D"))
    (:file "_package_Pose2D" :depends-on ("_package"))
    (:file "Quaternion" :depends-on ("_package_Quaternion"))
    (:file "_package_Quaternion" :depends-on ("_package"))
    (:file "AccelWithCovariance" :depends-on ("_package_AccelWithCovariance"))
    (:file "_package_AccelWithCovariance" :depends-on ("_package"))
    (:file "Twist" :depends-on ("_package_Twist"))
    (:file "_package_Twist" :depends-on ("_package"))
    (:file "Vector3Stamped" :depends-on ("_package_Vector3Stamped"))
    (:file "_package_Vector3Stamped" :depends-on ("_package"))
    (:file "PoseArray" :depends-on ("_package_PoseArray"))
    (:file "_package_PoseArray" :depends-on ("_package"))
    (:file "QuaternionStamped" :depends-on ("_package_QuaternionStamped"))
    (:file "_package_QuaternionStamped" :depends-on ("_package"))
    (:file "Transform" :depends-on ("_package_Transform"))
    (:file "_package_Transform" :depends-on ("_package"))
    (:file "Wrench" :depends-on ("_package_Wrench"))
    (:file "_package_Wrench" :depends-on ("_package"))
    (:file "Vector3" :depends-on ("_package_Vector3"))
    (:file "_package_Vector3" :depends-on ("_package"))
    (:file "Accel" :depends-on ("_package_Accel"))
    (:file "_package_Accel" :depends-on ("_package"))
    (:file "PoseWithCovarianceStamped" :depends-on ("_package_PoseWithCovarianceStamped"))
    (:file "_package_PoseWithCovarianceStamped" :depends-on ("_package"))
    (:file "TransformStamped" :depends-on ("_package_TransformStamped"))
    (:file "_package_TransformStamped" :depends-on ("_package"))
    (:file "InertiaStamped" :depends-on ("_package_InertiaStamped"))
    (:file "_package_InertiaStamped" :depends-on ("_package"))
    (:file "TwistStamped" :depends-on ("_package_TwistStamped"))
    (:file "_package_TwistStamped" :depends-on ("_package"))
    (:file "Polygon" :depends-on ("_package_Polygon"))
    (:file "_package_Polygon" :depends-on ("_package"))
    (:file "AccelStamped" :depends-on ("_package_AccelStamped"))
    (:file "_package_AccelStamped" :depends-on ("_package"))
    (:file "PolygonStamped" :depends-on ("_package_PolygonStamped"))
    (:file "_package_PolygonStamped" :depends-on ("_package"))
    (:file "Inertia" :depends-on ("_package_Inertia"))
    (:file "_package_Inertia" :depends-on ("_package"))
    (:file "TwistWithCovariance" :depends-on ("_package_TwistWithCovariance"))
    (:file "_package_TwistWithCovariance" :depends-on ("_package"))
    (:file "WrenchStamped" :depends-on ("_package_WrenchStamped"))
    (:file "_package_WrenchStamped" :depends-on ("_package"))
    (:file "PointStamped" :depends-on ("_package_PointStamped"))
    (:file "_package_PointStamped" :depends-on ("_package"))
    (:file "Point" :depends-on ("_package_Point"))
    (:file "_package_Point" :depends-on ("_package"))
  ))