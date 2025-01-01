#!/usr/bin/python

import numpy as np

class DiffDriveController():
  EPSILON = 0.02 # 2 cm
  EPSILON_RADIANS = 0.0349066 # 2 degrees

  """
  Class used for controlling the robot linear and angular velocity
  """
  def __init__(self, max_speed, max_omega):
    self.k_rho=.001
    self.k_alpha=1
    self.k_beta=0
    self.MAX_SPEED = max_speed
    self.MAX_OMEGA = max_omega
        
  def compute_vel(self, state, goal):
    """
    Function that computes the desired outputs given the state and goal
    Inputs:
    state - a numpy vector of size 3 by 1 with components (x,y,theta)
    goal - a numpy vector of size 2 by 1 specifying the location of the goal
    Outputs: a tuple with 3 elements
    v - a number specifying the forward speed (in m/s) of the robot (should 
        be no more than max_speed)
    omega - a number specifying the angular velocity (in rad/s) of the robot
        (should be no more than max_omega)
    done - a boolean value specifying if the robot has reached its goal (or
        is close enough
    """
    delta_x = goal[0] - state[0]
    delta_y = goal[1] - state[1]
    theta = state[2]
 
    if delta_x < DiffDriveController.EPSILON and delta_y < DiffDriveController.EPSILON:
      return (0, 0, True)

    rho = np.sqrt(delta_x**2 + delta_y**2)
    alpha = -theta + np.arctan2(delta_y, delta_x)
    beta = -theta - alpha

    v = self.k_rho * rho
    omega = self.k_alpha * alpha + self.k_beta * beta
    return (v, omega, False)
