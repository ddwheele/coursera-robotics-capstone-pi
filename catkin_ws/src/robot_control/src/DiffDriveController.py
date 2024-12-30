#!/usr/bin/python

import numpy as np

class DiffDriveController():
  """
  Class used for controlling the robot linear and angular velocity
  """
  def __init__(self, max_speed, max_omega):
    # TODO for Student: Specify these parameters
    self.k_rho=0
    self.k_alpha=0
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
    delta_x = goal.x - state.x
    delta_y = goal.y - state.y
    rho = np.sqrt(delta_x**2 + delta_y**2)
    alpha = -state.theta + np.arctan2(delta_y, delta_x)
    beta = -theta - alpha

    v = self.k_rho * rho;
        
     


