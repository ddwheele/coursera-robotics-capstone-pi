#!/usr/bin/python
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation
from matplotlib import patches
#import pylab
import time
import math

class KalmanFilter:
  """
  Class to keep track of the estimate of the robots current state using the
  Kalman Filter
  """
  def __init__(self, markers):
    """
    Initialize all necessary components for Kalman Filter, using the
    markers (AprilTags) as the map
    Input: 
    markers - an N by 4 array loaded from the parameters, with each element
            consisting of (x,y,theta,id) where x,y gives the 2D position of a
            marker/AprilTag, theta gives its orientation, and id gives its
            unique id to identify which one you are seeing at any given
            moment
    """
    self.markers = markers
    self.last_time = None # Used to keep track of time between measurements 
    self.Q_t = np.eye(2)
    self.R_t = np.eye(3)
    # Initialize position to origin, with a huge covariance
    self.x_t = np.zeros(3)
    self.P_t = np.full((3,3), 10e6)

  def compute_world_H_robot():
    x_w # tag in world frame
    y_w # tag in world frame
    theta_w # tag in world frame

    x_r # tag in robot frame
    y_r # tag in robot frame
    theta_r # tag in robot frame

    H_w = np.array([[np.cos(theta_w), -np.sin(theta_w), x_w],
                    [np.sin(theta_w),  np.cos(theta_w), y_w],
                    [              0,                0,   1]])

    H_r = np.array([[np.cos(theta_r), -np.sin(theta_r), x_r],
                    [np.sin(theta_r),  np.cos(theta_r), y_r],
                    [              0,                0,   1]])

    world_H_robot = np.matmul(H_w, np.linalg.inv(H_r))

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
    predicted_covariance - a 3 by 3 numpy array of the predction of the
        covariance
    """
    if self.last_time is None:
      self.last_time = imu_meas[4]
      return (self.x_t, self.P_t)

    dt = imu_meas[4] - self.last_time
    omega = imu_meas[3]

    theta = self.x_t[2] # for readability
    n_v = self.Q_t[0]
    n_w = self.Q_t[1]
    cos_t = np.cos(theta)
    sin_t = np.sin(theta)

    # calculate new pose prediction
    #
    #                           [ v*cos(theta) ]        [ n_v*cos(theta) ]
    #   Mu_hat = u_(t-1) + dt * [ v*sin(theta) ] + dt * [ n_v*sin(theta) ]
    #                           [ omega        ]        [ n_w            ]
    #
    Mu_hat = self.x_t + dt * np.array([[v*cos_t], [v*sin_t], [omega]]) + dt * np.array([[n_v*cos_t], [n_v*sin_t], [n_w]])

    # calculate new covariance matrix
    # 
    #               [  df          ( df )T ]   [  df          ( df )T ] 
    #   Sigma_hat = [ ____ * P_t * (____)  ] + [ ____ * Q_t * (____)  ]
    #               [  dx          ( dx )  ]   [  dn          ( dx )  ]
    #
    dfdx = np.eye(3) + dt * np.array([[0, 0, -v*sin_t], [0, 0, v*sin_t], [0, 0, 0])
    dfdn = dt * np.array([[cos_t, 0], [sin_t, 0], [0, 1]])

    PtdfdxT = np.matmul(self.P_t, dfdx.T)
    QtdfdnT = np.matmul(self.Q_t, dfdn.T)

    Sigma_hat = np.matmul(dfdx, PtdfdxT) + np.matmul(dfdn, QtdfdnT)

    self.x_t = Mu_hat
    self.P_t = Sigma_hat
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
    predicted_state - a 3 by 1 numpy array of the updated state
    predicted_covariance - a 3 by 3 numpy array of the updated covariance
    """
    # First, find where we have measured the robot to be.
    # For now, just use the first April Tag to calculate this.

    

    # Compute Kalman gain        
    #
    #               ( dh )T   [( dh )     ( dh )T       ]-1
    #   K_t = P_t * (____)  * [(____)*P_t*(____)  + R_t ]
    #               ( dx )    [( dx )     ( dx )        ]
    #
    # Our measurement model is just z_t = x_t + noise, so dh/dx is the identity matrix
    #            
    #   K_t = P_t * [P_t + R_t]^(-1)
    #          
    invOfPtPlusRt = np.linalg.inv(self.P_t + self.R_t)
    K = np.matmul(self.P_t, invOfPtPlusRt)

    # Compute best estimate location
    # 
    #   mu = mu_hat + K * (z_t - mu_hat)
    #    
    mu = self.x_t + K * (z_t - self.x_t)

    # Update the covariance
    #
    #                     ( dh )
    #   Sigma = P_t - K * (____) * P_t
    #                     ( dx )
    #
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
    v, imu_meas - descriptions in prediction. Will be None value if
        values are not available
    z_t - description in update. Will be None value if measurement is not
        available
    Outputs:
    x_t - current estimate of the state
    """
    # Check if an IMU measurement came in
    if imu_meas not None:
      self.prediction(v, imu_meas)

    # Check if April Tag measurment came in
    if z_t not None:
      self.update(z_t)
 
    return self.x_t
 
