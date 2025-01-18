#!/usr/bin/python
import numpy as np

import mathUtils as mutil

class KalmanFilter:
  """
  Class to keep track of the estimate of the robots current state using the
  Kalman Filter
  """
  def __init__(self, markers, t_cam_to_body):
    """
    Initialize all necessary components for Kalman Filter, using the
    markers (AprilTags) as the map
    Input: 
    markers - an N by 4 array loaded from the parameters, with each element
            consisting of (x,y,theta,id) where x,y gives the 2D position of a
            marker/AprilTag, theta gives its orientation, and id gives its
            unique id to identify which one you are seeing at any given
            moment
    t_cam_to_body - position of camera in body frame (x,y,z)
    """
    self.markers = markers
    self.t_cam_to_body = t_cam_to_body
    self.last_time = None # Used to keep track of time between measurements 
    self.Q_t = np.array([[0.05,0], [0,0.03]]) # 2x2 uncertainty to add to covariance when predicting
    self.R_t = np.array([[.1,0,0], [0,.1,0], [0,0,0.1]]) # 3x3 uncertainty of sensor noise
    # Initialize position to origin, with a huge covariance
    self.x_t = np.zeros(3) # estimated position
    self.P_t = np.eye(3) * 10e6 # initial covariance matrix

  def prediction(self, v, imu_meas):
    """
    Performs the prediction step on the state x_t and covariance P_t
    Inputs:
    v - a number representing in m/s the commanded speed of the robot
    imu_meas - a 5 by 1 numpy array consisting of the values
        (acc_x,acc_y,acc_z,omega,time), with the fourth of the values giving
        the gyroscope measurement for angular velocity (which you should
        use as ground truth) and time giving the current timestamp. Ignore
        the first three values (they are for the linear acceleration which
        we don't use)
    Outputs: a tuple with two elements
    predicted_state - a 3 by 1 numpy array of the predction of the state
    predicted_covariance - a 3 by 3 numpy array of the prediction of the
        covariance
    """
    if self.last_time is None:
      self.last_time = imu_meas[4][0] # time from imu
      return (self.x_t, self.P_t)
    # print("IMU")
    # print(imu_meas)

    dt = imu_meas[4][0] - self.last_time # time interval


    omega = imu_meas[3,0] # angular velocity
    theta = self.x_t[2] # predicted robot orientation, for legibility
   # n_v = self.Q_t[0][0] # velocity noise
   # n_w = self.Q_t[1][1] # omega noise
    cos_t = np.cos(theta)
    sin_t = np.sin(theta)
 
    # Calculate new pose prediction (according to class notes)
    #
    #                           [ v*cos(theta) ]        [ n_v*cos(theta) ]
    #   mu_hat = u_(t-1) + dt * [ v*sin(theta) ] + dt * [ n_v*sin(theta) ] = f(x,omega,noise)
    #                           [ omega        ]        [ n_w            ]
    #
    # But including noise directly in the state estimate makes no sense. Eliminating it.
    a = self.x_t

    print("dt = %f" %(dt))
    print("v = %f" %(v))
    print("sin_t = %f" %(sin_t))

    b = dt * np.array([v*cos_t, v*sin_t, omega])
    #c = dt * np.array([n_v*cos_t, n_v*sin_t, n_w])

    print("propagated movement:")
    print(b)
   # print("noise term:")
   # print(c)

    mu_hat = a + b 

    # Calculate new covariance matrix (Sigma = P):
    # 
    #               [  df              ( df )T ]   [  df          ( df )T ] 
    #   Sigma_hat = [ ____ * Sigma_t * (____)  ] + [ ____ * Q_t * (____)  ]
    #               [  dx              ( dx )  ]   [  dn          ( dn )  ]
    #
    #
    #     df  |                            [ 0 0 -v*sin(theta) ]
    #    ____ |                 = I + dt * [ 0 0  v*cos(theta) ]
    #     dx  |                            [ 0 0            0  ]
    #         |x_t-1, mu_t-1, 0
    #
    #     df         [ cos(theta) 0 ]
    #    ____ = dt * [ sin(theta) 0 ]
    #     dn         [         0  1 ]
    #
    dfdx = np.eye(3) + dt * np.array([[0, 0, -v*sin_t], [0, 0, v*cos_t], [0, 0, 0]])
    dfdn = dt * np.array([[cos_t, 0], [sin_t, 0], [0, 1]])

    PtdfdxT = np.matmul(self.P_t, dfdx.T)
    QtdfdnT = np.matmul(self.Q_t, dfdn.T)

    Sigma_hat = np.matmul(dfdx, PtdfdxT) + np.matmul(dfdn, QtdfdnT)

    self.x_t = mu_hat
    self.P_t = Sigma_hat

    self.last_time = imu_meas[4]

    print("Propagated Position:")
    print(self.x_t)
    return (self.x_t, self.P_t)

  def update(self,z_t):
    """
    Performs the update step on the state x_t and covariance P_t
    Inputs:
    z_t - an array of length N with elements that are 4 by 1 numpy arrays.
        Each element has the same form as the markers, (x,y,theta,id), with
        x,y gives the 2D position of the measurement with respect to the
        robot, theta the orientation of the marker with respect to the
        robot, and the unique id of the marker, which you can find the
        corresponding marker from your map
    Outputs:
    predicted_state - a 3 by 1 numpy array of the updated state (x, y, theta)
    predicted_covariance - a 3 by 3 numpy array of the updated covariance
    """
    # First, find where we have measured the robot to be.
    # For now, just use the first April Tag to calculate this.
    tag_cam = z_t[0]
    tag_number = int(tag_cam[3])

    # find the real coordinates of that tag
    tag_world = self.markers[tag_number]

    cam_in_world = mutil.tag_in_camera_to_camera_in_world(tag_world, tag_cam)

    robot_in_world = mutil.camera_in_world_to_robot_in_world(cam_in_world, self.t_cam_to_body)
    
    print("Robot from tag:")
    print(robot_in_world)

    # Compute Kalman gain:   
    #
    #               ( dh )T   [( dh )         ( dh )T       ]-1
    #   K_t = P_t * (____)  * [(____)*Sigma_t*(____)  + R_t ]
    #               ( dx )    [( dx )         ( dx )        ]
    #
    # K_t = Kalman gain
    # P_t = covariance matrix
    # h() = measurement function
    # Sigma_t = covariance matrix
    # R_t = sensor noise uncertainty
    # 
    # Our measurement model is just z_t = x_t + noise, so dh/dx is the identity matrix
    #            
    #   K_t = P_t * [P_t + R_t]^(-1)
    #          
    invOfPtPlusRt = np.linalg.inv(self.P_t + self.R_t)
    K = np.matmul(self.P_t, invOfPtPlusRt)

    # Compute best estimate location:
    # 
    #   mu = mu_hat + K * (z_t - mu_hat)
    #   
    # mu = best estimate location
    # mu_hat = estimated location
    # K = Kalman gain
    # z_t = measured location (so robot_in_world, not z_t )
    #
    mu = self.x_t +np.matmul(K,(robot_in_world - self.x_t))

    # Update the covariance:
    #
    #                     ( dh )
    #   Sigma = P_t - K * (____) * P_t
    #                     ( dx )
    #
    # Sigma = updated covariance
    # P_t = current covariance
    # K = Kalman gain
    # h() = measurement function

    # dh/dx is still identity
    #
    #   Sigma = P_t - K * P_t
    #
    Sigma = self.P_t - np.matmul(K, self.P_t)

    self.x_t = mu
    self.P_t = Sigma

    return (self.x_t, self.P_t)

  def step_filter(self, v, imu_meas, z_t):
    """
    Perform step in filter, called every iteration (on robot, at 60Hz)
    Inputs:
    v - a number representing in m/s the commanded speed of the robot
    imu_meas - a 5 by 1 numpy array consisting of the values
        (acc_x,acc_y,acc_z,omega,time), with the fourth of the values giving
        the gyroscope measurement for angular velocity (which you should
        use as ground truth) and time giving the current timestamp. Ignore
        the first three values (they are for the linear acceleration which
        we don't use) Will be None value if values are not available
    z_t - marker array, of length N with elements that are 4 by 1 numpy arrays.
        Each element has marker form (x,y,theta,id). x,y gives the 2D position 
        of the measurement with respect to the robot, theta the orientation of 
        the marker with respect to the robot, and the unique id of the marker,
        which you can find the corresponding marker from your map
        Will be None value if measurement is not available
    Outputs:
    x_t - current estimate of the state
    """
    # Check if an IMU measurement came in
    if imu_meas is not None:
      print("============ PREDICTION: ")
      self.prediction(v, imu_meas)

    # Check if April Tag measurement came in
    if z_t is not None and len(z_t) > 0:
      print("=========== UPDATING WITH MEASUREMENT: ")
      self.update(z_t)
 
    print("FINAL ANSWER: ")
    print(self.x_t)
    print("============================================")
    print("============================================")
    return self.x_t
 