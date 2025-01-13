#!/usr/bin/env python
import numpy as np
import math

def to_rad(degrees):
  return degrees * np.pi / 180.0

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

# Inputs:
#   tag_world: tag in world coordinates (x,y, theta; x goes out back of tag)
#   tag_camera: tag in camera coordinates (x,z,theta = 0 if straight on, 
#               +ive if rotated around vertical)
# Outputs:
#   returns camera position in world coordinates 
def tag_in_camera_to_camera_in_world(tag_world, tag_camera):
  # Position of camera in world coordinates:
  #   wP = wRt * tP + wTt

  # need to translate to fake camera frame, X=real cam z and Y=real cam x
  tag_cam_x = tag_camera[1]
  tag_cam_y = tag_camera[0]

  rho = np.sqrt(tag_cam_x**2 + tag_cam_y**2)
  phi = np.arctan2(tag_cam_y, tag_cam_x)
  psi = tag_camera[2] - phi - np.pi/2

  # tP = camera in tag frame
  tP = np.array([[-rho * np.cos(psi)], [rho * np.sin(psi)]])

  # wTt = vector from world origin to tag origin
  wTt = np.array([[tag_world[0]], [tag_world[1]]])

  # wRt columns are tag axis in world coordinates
  wRt = np.array([[ np.cos(tag_world[2]), np.sin(tag_world[2])],\
                  [-np.sin(tag_world[2]), np.cos(tag_world[2])]])

  wP = np.matmul(wRt, tP) + wTt
  cam_world_angle = tag_world[2] - tag_camera[2] + np.pi/2

  return [wP[0], wP[1], cam_world_angle]

# Input:
#   cam: camera position in world coordinates (x, y, theta = view axis)
#   tag: tag position in world coordinates (x,y, theta = out back of tag)
#   world coordinates are x = right, y = forward, theta around vertical z (right-handed)
# Output:
#   tag position in camera coordinates (x,z,theta = 0 if straight on, +ive if rotated around vertical) 
#   camera coordinates are x = left, z = forward = view axis (left-handed)
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
  cP = np.matmul(cRw, wP) + cTw

  # we are adding pi/2 here because April tag library reports 90 deg if tag x aligns 
  # with our "fake camera" x
  tag_angle_in_cam_frame = ensure_between(tag[2]-cam[2]+np.pi/2, -np.pi, np.pi)
 
  tag_theta = ensure_between( tag[2], -np.pi, np.pi)

  # make sure the tag is visible in the camera
  relative_theta = tag_angle_in_cam_frame

  # take care of positions where lines are vertical/horizontal
  if math.isclose(cam_theta,0): # cam points right
    if tag[0] >= cam[0]: # tag is to right of cam
      if tag_theta < -np.pi/2 or tag_theta > np.pi/2 : # tag points generally left
        # tag too oblique
        relative_theta = cant_see_it
    else: # tag is to left of cam
      relative_theta = cant_see_it
  elif math.isclose(abs(cam_theta), np.pi): # cam points left
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

    if math.isclose(tag_side,0) or (visible>0 and tag_side>0) or (visible<0 and tag_side<0):
      relative_theta = tag_angle_in_cam_frame
    else:
      relative_theta = cant_see_it

  # cP is in fake camera coords, so need to swap order to get x, z as expected
  return [cP[1], cP[0], relative_theta]

# Input:
#   rob: robot position in world coordinates (x,y,theta)
#   t_cam_to_body: position of camera in body frame (x,y,z)
# Output:
#   camera position in world coordinates (x,y,0) (pretend everything is head-on, may implement theta later)
def robot_in_world_to_camera_in_world(rob, t_cam_to_body):
  # rotation matrix (robot in world)
  ct = np.cos(rob[2])
  st = np.sin(rob[2])
  rotmat = np.array([[ct, -st, 0], [st, ct, 0], [0, 0, 1]],dtype=object)

  # camera location in homogeneous coordinates
  camera_hom = np.array([t_cam_to_body[0], t_cam_to_body[1], 1],dtype=object)
  rotated_cam = np.matmul(rotmat, camera_hom)
  
  ans = [rob[0] + rotated_cam[0], rob[1]+rotated_cam[1], rob[2]]
  return ans