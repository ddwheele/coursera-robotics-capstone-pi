#!/usr/bin/env python
"""
ROS based interface for the Course Robotics Specialization Capstone Autonomous Rover.
Updated June 15 2016.
"""
import rospy

import yaml
import numpy as np

import sys

from RosInterface import ROSInterface

# User files, uncomment as completed
#from MyShortestPath import my_dijkstras
#from KalmanFilter import KalmanFilter
from DiffDriveController import DiffDriveController

class RobotControl(object):
  """
  Class used to interface with the rover. Gets sensor measurements through ROS subscribers,
  and transforms them into the 2D plane, and publishes velocity commands.
  """
  use_simulator = False

  # only one of the following should be true
  demo_drive = False
  follow_tag = True

  def __init__(self, world_map,occupancy_map, pos_init, pos_goal, max_speed, max_omega, x_spacing, y_spacing, t_cam_to_body):
    """
    Initialize the class
    """

    # Handles all the ROS related items
    self.ros_interface = ROSInterface(t_cam_to_body)

    # YOUR CODE AFTER THIS
       
    # Uncomment as completed
    #self.kalman_filter = KalmanFilter(world_map)
    self.diff_drive_controller = DiffDriveController(max_speed, max_omega)

  def stop(self):
    if self.use_simulator:
      self.robot_sim.command_velocity(0,0)
    else:
      self.ros_interface.command_velocity(0,0)

  def make_it_go(self, lin_vel, ang_vel):
    if self.use_simulator:
      self.robot_sim.command_velocity(lin_vel, ang_vel)
    else:
      self.ros_interface.command_velocity(lin_vel, ang_vel)

  def process_measurements(self):
    """ 
    YOUR CODE HERE
    This function is called at 60Hz
    """
    meas = self.ros_interface.get_measurements()
    imu_meas = self.ros_interface.get_imu()

    # Module 3 - demo drive
    if self.demo_drive:
      self.ros_interface.command_velocity(0.3, 0.5)
      return

    # Module 5 - follow tag
    if self.follow_tag:
      if meas is None:
        self.stop()
        #print("No tag")
        return
      else:
        origin = np.array([0, 0, 0])
        tag = np.array([ meas[0][0], meas[0][1] ])

        print("shape = %d, %d" % (len(meas), len(meas[0])))
        theta = meas[0][2] * 180.0 / np.pi
        print("x=%.2f, y=%.2f, theta=%.2f, ?=%.2f" % (meas[0][0], meas[0][1], theta, meas[0][3]))

        control = self.diff_drive_controller.compute_vel(origin, tag)

        if not control[2]: # if not at goal
          self.make_it_go(control[0], control[1])
        else:
          self.stop()
    return
 
def main(args):
  rospy.init_node('robot_control')

  # Load parameters from yaml
  param_path = rospy.get_param("~param_path")
  f = open(param_path,'r')
  params_raw = f.read()
  f.close()
  params = yaml.load(params_raw)
  occupancy_map = np.array(params['occupancy_map'])
  world_map = np.array(params['world_map'])
  pos_init = np.array(params['pos_init'])
  pos_goal = np.array(params['pos_goal'])
  max_vel = params['max_vel']
  max_omega = params['max_omega']
  t_cam_to_body = np.array(params['t_cam_to_body'])
  x_spacing = params['x_spacing']
  y_spacing = params['y_spacing']

  # Intialize the RobotControl object
  robotControl = RobotControl(world_map,occupancy_map, pos_init, pos_goal, max_vel, max_omega, x_spacing, y_spacing, t_cam_to_body)

  # Call process_measurements at 60Hz
  r = rospy.Rate(60)
  while not rospy.is_shutdown():
    robotControl.process_measurements()
    r.sleep()
  # Done, stop robot
  robotControl.ros_interface.command_velocity(0,0)

if __name__ == "__main__":
  try:
    main(sys.argv)
  except rospy.ROSInterruptException: pass


