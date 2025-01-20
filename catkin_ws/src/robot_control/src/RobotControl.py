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
from KalmanFilter import KalmanFilter
from DiffDriveController import DiffDriveController

class RobotControl(object):
  """
  Class used to interface with the rover. Gets sensor measurements through ROS subscribers,
  and transforms them into the 2D plane, and publishes velocity commands.
  """
  use_simulator = False

  # only one of the following should be set to true
  demo_drive = False
  follow_tag = True 
  drive_path = False

  # timesteps since we last saw a tag
  no_tag_count =100
  # if no_tag_count reaches this number, stop moving
  WAIT_NUMBER = 30

  def __init__(self, world_map,occupancy_map, pos_init, pos_goal, max_speed, max_omega, x_spacing, y_spacing, t_cam_to_body, goal_path):
    """
    Initialize the class
    """

    # Handles all the ROS related items
    self.ros_interface = ROSInterface(t_cam_to_body)
    
    self.kalman_filter = KalmanFilter(world_map, t_cam_to_body)
    self.diff_drive_controller = DiffDriveController(max_speed, max_omega)

    self.goal_path = goal_path
    self.curr_goal_num = 0
    self.control = [0,0,False]
    self.previous_velocity = [0,0]

  def stop(self):
    if self.use_simulator:
      self.robot_sim.command_velocity(0,0)
    else:
      self.ros_interface.command_velocity(0,0)

  def command_velocity(self, lin_vel, ang_vel):
    if self.use_simulator:
      self.robot_sim.command_velocity(lin_vel, ang_vel)
    else:
      self.ros_interface.command_velocity(lin_vel, ang_vel)

  def process_measurements(self):
    """ 
    This function is called at 60Hz
    """
    print("proc_meas 0")
    meas = self.ros_interface.get_measurements()
    print("got meas")
    imu_meas = self.ros_interface.get_imu()
    print("got imu meas")
    # Module 3 - demo drive
    if self.demo_drive:
      self.ros_interface.command_velocity(0.3, 0.5)
      return

    # Module 5 - follow tag
    if self.follow_tag:
      if meas is None:
        if not self.control[2] and self.no_tag_count < self.WAIT_NUMBER:
          # just keep doing what we were doing
          self.command_velocity(self.control[0], self.control[1])
          self.no_tag_count += 1
          print("no_tag_count = %d" % (self.no_tag_count))
        elif not self.control[2] and self.no_tag_count >= self.WAIT_NUMBER:
          # pause and let your operator reposition the tag before you run into something
          self.command_velocity(0,0)
          self.no_tag_count += 1
          print("HIT THE STOP, WAITING TO SEE A TAG")
        return
      else:
        tag = np.array([ meas[0][0], meas[0][1] ])

        # print("shape = %d, %d" % (len(meas), len(meas[0])))
        theta = meas[0][2] * 180.0 / np.pi
        print("tag %d at x=%.2fm, y=%.2fm, theta=%.2f deg" % (meas[0][3],meas[0][0], meas[0][1], theta))

        self.control = self.diff_drive_controller.track_tag(tag)
        print("\t\t\t\t\t\tCONTROL = %f, %f, %d" %(self.control[0], self.control[1], self.control[2]))
 
        if not self.control[2]: # if not at goal
         self.command_velocity(self.control[0], self.control[1])
        self.no_tag_count = 0
      return

    # Module 7 - drive specified path
    if self.drive_path:
      print("driving path")
      est_state = self.kalman_filter.step_filter(self.previous_velocity, imu_meas, meas)

      print("est state = %f, %f, %f" % (est_state[0], est_state[1], est_state[2]))  
      
      if self.curr_goal_num >= len(self.goal_path):
        print("SUCCESS")
        self.command_velocity(0,0)
        self.previous_velocity=0
        return

      goal = self.goal_path[self.curr_goal_num]
      print("about to call controller. Goal is %f, %f" %(goal[0], goal[1]))
      control = self.diff_drive_controller.compute_vel(est_state, goal)

      if not control[2]: # if not at goal
        self.command_velocity(control[0], control[1])
        self.previous_velocity=control[0]
      else:
        print("REACHED GOAL %d" % (self.curr_goal_num))
        self.curr_goal_num += 1
 
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
  goal_path = params['goal_path']

  # Intialize the RobotControl object
  robotControl = RobotControl(world_map,occupancy_map, pos_init, pos_goal, max_vel, max_omega, x_spacing, y_spacing, t_cam_to_body, goal_path)

  # Call process_measurements at 10Hz
  r = rospy.Rate(10)
  while not rospy.is_shutdown():
    robotControl.process_measurements()
    r.sleep()
  # Done, stop robot
  robotControl.ros_interface.command_velocity(0,0)

if __name__ == "__main__":
  try:
    main(sys.argv)
  except rospy.ROSInterruptException: pass


