#!/usr/bin/env python
import numpy as np
import math

ZERO_ANGLE = 0

def to_rad(degrees):
  return degrees * np.pi / 180.0

def ensure_number(var):
    if isinstance(var, float) or isinstance(var, int):
        return var
    if isinstance(var, np.ndarray):
        return var[0]
    if isinstance(var, list):
        return var[0]

# Inputs:
#   theta - an angle in radians
#   low - lower bound (like 0 or -pi)
#   high - high bound (like 2*pi or pi)
# Output:
#   returns theta wrapped around to fit between low and high
def ensure_between(theta, low, high):
  if theta > high:
    theta = theta - 2*np.pi
  elif theta < low:
    theta = theta + 2*np.pi
  return theta

def isclose(a, b):
    return abs(a-b) < 0.005

# Inputs:
#   tag_world: tag in world coordinates (x,y, theta; x goes out back of tag)
#   tag_camera: tag in camera coordinates (x,y,theta = 0 if straight on, 
#               +ive if rotated around vertical)
# Outputs:
#   returns camera position in world coordinates 
def tag_in_camera_to_camera_in_world(tag_world, tag_camera):
  # Position of camera in world coordinates:
  #   wP = wRt * tP + wTt

  # camera x = direction camera is looking and y = camera's left
  tag_cam_x = tag_camera[0]
  tag_cam_y = tag_camera[1]

  # straight line distance from camera to tag
  rho = np.sqrt(tag_cam_x**2 + tag_cam_y**2)
  # angle from camera x axis to the tag
  phi = np.arctan2(tag_cam_y, tag_cam_x)

  # third angle in the right triangle with tag in camera axes
  a = np.pi/2-phi

  # q = 90 - d
  # d = angle of tag as seen by camera
  d = tag_camera[2]
  q = np.pi/2 - d

  # psi = angle from tag x axis to camera
  # psi = 180 - q - a
  psi = np.pi - q - a
  
  # tP = camera in tag frame
  tP = np.array([[-rho * np.cos(psi)], [rho * np.sin(psi)]])

  # wTt = vector from world origin to tag origin
  wTt = np.array([[tag_world[0]], [tag_world[1]]])

  # wRt columns are tag axis in world coordinates
  wRt = np.array([[ np.cos(tag_world[2]), np.sin(tag_world[2])],\
                  [-np.sin(tag_world[2]), np.cos(tag_world[2])]])

  wP = np.dot(wRt, tP) + wTt
  cam_world_angle = tag_world[2] - tag_camera[2] 

  return [wP[0], wP[1], cam_world_angle]

# Input:
#   cam: camera position in world coordinates (x, y, theta = view axis)
#   tag: tag position in world coordinates (x,y, theta = out back of tag)
#   world coordinates are x = right, y = forward, theta around vertical z (right-handed)
# Output:
#   tag position in camera coordinates (x,z,theta = 0 if straight on, +ive if rotated around vertical) 
#   camera coordinates are x = left, z = forward = view axis (left-handed)
# EXPECT THIS IS BROKEN NOW
def tag_in_world_to_tag_in_camera(cam, tag) :
  cant_see_it = 5
  # To transform tag P in world coordinates to camera coordinates:
  #   cP = cRw * wP + cTw
  # wP = tag in world frame
  wP =  np.array([[ tag[0]], [ tag[1]]])

  # rho = distance from world origin to camera origin
  rho = np.sqrt( cam[0]**2 + cam[1]**2 )

  # phi = angle between world x axis and line from world origin to camera
  phi = np.arctan2(cam[1], cam[0])

  cam_theta = cam[2]
  # psi = cam_theta - phi
  psi = cam_theta - phi

  # cTw = world origin expressed in camera frame
  cTw = np.array([[-rho * np.cos(psi)],[rho * np.sin(psi)]])

  # define fake camera as X=real cam z and Y=real cam x
  # fake camera is right-handed coordinates
  # cRw = columns are world axes expressed in camera frame
  cRw = np.array([[ np.cos(cam_theta), np.sin(cam_theta)],\
                  [-np.sin(cam_theta), np.cos(cam_theta)]])

  # cP = tag in camera frame
  cP = np.dot(cRw, wP) + cTw

  tag_angle_in_cam_frame = ensure_between(tag[2]-cam[2], -np.pi, np.pi)
 
  tag_theta = ensure_between( tag[2], -np.pi, np.pi)

  # make sure the tag is visible in the camera
  relative_theta = tag_angle_in_cam_frame

  # take care of positions where lines are vertical/horizontal
  if isclose(cam_theta,0): # cam points right
    if tag[0] >= cam[0]: # tag is to right of cam
      if tag_theta < -np.pi/2 or tag_theta > np.pi/2 : # tag points generally left
        # tag too oblique
        relative_theta = cant_see_it
    else: # tag is to left of cam
      relative_theta = cant_see_it
  elif isclose(abs(cam_theta), np.pi): # cam points left
    if tag[0] <= cam[0]: # tag is left of cam
      if tag_theta > -np.pi/2 or tag_theta < np.pi/2: # tag points right-ish
        # tag too oblique
        relative_theta = cant_see_it
    else: # tag behind cam
      relative_theta = cant_see_it

  else: # not vertical
        # zx, zy is directly in front of camera
    zx = cam[0] + np.cos(cam_theta)
    zy = cam[1] + np.sin(cam_theta) 

    # sx, sy is directly to the right of the camera
    sx = cam[0] + np.cos(cam_theta - np.pi/2)
    sy = cam[1] + np.sin(cam_theta - np.pi/2) 

    # slope of line perpendicular to camera Z axis
    m = (sy - cam[1]) / (sx - cam[0])

    # the sign of this value indicates which side of the line the camera can see
    visible = m*(zx - cam[0]) - (zy - cam[1])

    # the sign of this value indicates which side of the line the tag is on
    tag_side = m*(tag[0] - cam[0]) - (tag[1] - cam[1])

    if isclose(tag_side,0) or (visible>0 and tag_side>0) or (visible<0 and tag_side<0):
      relative_theta = tag_angle_in_cam_frame
    else:
      relative_theta = cant_see_it

  # cP is in fake camera coords, so need to swap order to get x, z as expected
  return [cP[0], cP[1], relative_theta]

# Input:
#   rob: robot position in world coordinates (x,y,theta)
#   t_cam_to_body: position of camera in body frame (x,y,z)
# Output:
#   camera position in world coordinates (x,y,theta)
def robot_in_world_to_camera_in_world(rob, t_cam_to_body):
  # rotation matrix (robot in world)
  ct = np.cos(rob[2])
  st = np.sin(rob[2])
  rotmat = np.array([[ct, -st, 0], [st, ct, 0], [0, 0, 1]],dtype=object)

  # camera location in homogeneous coordinates
  camera_hom = np.array([t_cam_to_body[0], t_cam_to_body[1], 1],dtype=object)
  rotated_cam = np.dot(rotmat, camera_hom)
  
  ans = [rob[0] + rotated_cam[0], rob[1]+rotated_cam[1], rob[2]]
  return ans

# Input:
#   cam: cam position in world coordinates (x,y,theta)
#   t_cam_to_body: position of camera in body frame (x,y,z)
# Output:
#   robot position in world coordinates (x,y,theta) 
def camera_in_world_to_robot_in_world(cam, t_cam_to_body):
  inverse = [-t_cam_to_body[0], -t_cam_to_body[1], -t_cam_to_body[2]]
  return robot_in_world_to_camera_in_world(cam, inverse)
  
