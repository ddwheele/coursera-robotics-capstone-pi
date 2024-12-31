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

    H_w = np.array([[ np.cos(theta_w), -np.sin(theta_w), x_w], [np.sin(theta_w), np.cos(theta_w), y_w], [0, 0, 1]])
    H_r = np.array([[ np.cos(theta_r), -np.sin(theta_r), x_r], [np.sin(theta_r), np.cos(theta_r), y_r], [0, 0, 1]])

    world_H_robot = H_w * np.linalg.inv(H_r)

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
    # YOUR CODE HERE
    pass

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
    # YOUR CODE HERE
    pass
        
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
    # YOUR CODE HERE
    pass
