#!/usr/bin/env python
import numpy as np
import math

def to_rad(degrees):
    return degrees * np.pi / 180.0

# Inputs:
#   tag_world: tag in world coordinates (x,y, theta = out back of tag)
#   tag_camera: tag in camera coordinates (x,z,theta = 0 if straight on, +ive if rotated around vertical)
# Outputs:
#   returns camera position in world coordinates 
def tag_in_camera_to_camera_in_world(tag_world, tag_camera):
  # trying again.
  #robot_theta = tag_world[2] - (tag_camera[2]-np.pi/2)

  # First let's make the camera coordinates into a right-handed coordinate system
  x_cam = tag_camera[1] # z becomes x
  y_cam = tag_camera[0] # x becomes y
  theta_cam = tag_camera[2] # don't need to flip theta
  cr = np.cos(theta_cam) # cos of relative angle
  sr = np.sin(theta_cam) # sin of relative angle
  H_r = np.array([[cr, -sr, x_cam], [sr, cr, y_cam], [0,0,1]])

  x_w = tag_world[0]
  y_w = tag_world[1]
  theta_w = tag_world[2]
  cw = np.cos(theta_w) # cos of tag angle in world frame
  sw = np.sin(theta_w) # sin of tag angle in world
  H_w = np.array([[cw, -sw, x_w],[sw, cw, y_w],[0, 0, 1]])

  # according to course materials:
  # w_H_r = H_w * H_r^(-1)
  H_r_inv = np.linalg.inv(H_r)
  w_H_r = np.matmul(H_w, H_r_inv)

  robot_x = w_H_r[0,2]
  robot_y = w_H_r[1,2]
  # # adding pi/2 because ... we seem to need it
  robot_theta = np.arctan2(w_H_r[1,0],w_H_r[0,0]) 
  return [robot_x, robot_y, robot_theta]

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

# Input:
#   cam: camera position in world coordinates (x, y, theta = view axis)
#   tag: tag position in world coordinates (x,y, theta = out back of tag)
#   world coordinates are x = right, y = forward, theta around vertical z (right-handed)
# Output:
#   tag position in camera coordinates (x,z,theta = 0 if straight on, +ive if rotated around vertical) 
#   camera coordinates are x = left, z = forward = view axis (left-handed)
def tag_in_world_to_tag_in_camera(cam, tag) :
  cant_see_it = 5
  # cP = cRw * wP + cTw
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
  cRw = np.array([[np.cos(cam_theta), np.sin(cam_theta)], [-np.sin(cam_theta), np.cos(cam_theta)]])

  # cP = tag in camera frame
  cP = np.matmul(cRw, wP) + cTw

  tag_angle_in_cam_frame = ensure_between(tag[2]-cam[2]+np.pi/2, -np.pi, np.pi)
 
  tag_theta = ensure_between( tag[2], -np.pi, np.pi)

  # make sure the tag is visible in the camera
  relative_theta = tag_angle_in_cam_frame

  # take care of positions where lines are vertical/horizontal
  if math.isclose(tag_angle_in_cam_frame,0): # cam points right
    if tag[0] >= cam[0]: # tag is to right of cam
      if tag_theta < -np.pi/2 or tag_theta > np.pi/2 : # tag points generally left
        # tag too oblique
        relative_theta = cant_see_it
    else: # tag is to left of cam
      relative_theta = cant_see_it
  elif math.isclose(tag_angle_in_cam_frame, np.pi): # cam points left
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
  ans = [cP[1], cP[0], relative_theta]

  return [cP[1], cP[0], relative_theta]


# Input:
#   cam: camera position in world coordinates (x, y, theta = view axis)
#   tag: tag position in world coordinates (x,y, theta = out back of tag)
#   world coordinates are x = right, y = forward, theta around vertical z (right-handed)
# Output:
#   tag position in camera coordinates (x,z,theta = 0 if straight on, +ive if rotated around vertical) 
#   camera coordinates are x = left, z = forward = view axis (left-handed)
def tag_in_world_to_tag_in_camera_old(cam, tag):
  cant_see_it = 5 # angle > pi/2, indicates tag is not visible in camera
  camx = cam[0]
  camy = cam[1]
  cam_theta = ensure_between( cam[2], -np.pi, np.pi)

  tagx = tag[0]
  tagy = tag[1]
  tag_theta = ensure_between(tag[2], 0, 2*np.pi) 
  
  ct = np.cos(cam_theta)
  st = np.sin(cam_theta)
  
  rotmat = np.array([[ct, st, 0], [-st, ct, 0], [0,0,1]],dtype=object)

  # transformed origin offset
  cam_origin = np.array([camx, camy, 1],dtype=object)
  transformed_origin = np.matmul(rotmat, cam_origin)
  
  tag_world = np.array([tag[0], tag[1], 1])    
  tag_camera = np.matmul(rotmat, tag_world)

  relative_theta = 0

  # take care of positions where lines are vertical/horizontal
  if math.isclose(cam_theta,0): # cam points right
    if tagx >= camx: # tag is to right of cam
      if tag_theta >= -np.pi/2 and tag_theta <= np.pi/2: # tag points generally right
        relative_theta = tag_theta 
      else: # tag too oblique
        relative_theta = cant_see_it
    else: # tag is to left of cam
      relative_theta = cant_see_it
  elif math.isclose(cam_theta, np.pi/2): # cam points forward
    if tagy >= camy: # tag is forward of camera
      if tag_theta >= 0 and tag_theta < np.pi: # tag points generally forward
        relative_theta =  ensure_between( tag_theta-np.pi/2, -np.pi, np.pi)# rotate by 90 degrees
      else: # tag too oblique
        relative_theta = cant_see_it
    else: # tag behind cam
      relative_theta = cant_see_it
  elif math.isclose(cam_theta, np.pi): # cam points left
    if tagx <= camx: # tag is left of cam
      if tag_theta >= np.pi/2 and tag_theta <= 3*np.pi/2: # tag points left-ish
        relative_theta = ensure_between(tag_theta+np.pi, -np.pi, np.pi)# rotate by 180 degrees
      else: # tag too oblique
        relative_theta = cant_see_it
    else: # tag behind cam
      relative_theta = cant_see_it
  elif math.isclose(cam_theta, -np.pi/2): # cam points -y
    if tagy <= camy: # tag is -y of cam
      if tag_theta >= np.pi: # tag points -y-ish
        relative_theta = ensure_between(tag_theta-np.pi/2, -np.pi, np.pi)# rotate by 90 degrees
      elif tag_theta == 0: # because 0 = 2*pi
        relative_theta = ensure_between(tag_theta+np.pi/2, -np.pi, np.pi)# rotate by 90 degrees
      else: # tag too oblique
        relative_theta = cant_see_it
    else: # tag behind cam
      relative_theta = cant_see_it

  else: # no gimbal lock
    # zx, zy is directly in front of camera
    zx = camx + np.cos(cam_theta)
    zy = camy + np.sin(cam_theta) 

    # sx, sy is directly to the right of the camera
    sx = camx + np.cos(cam_theta - np.pi/2)
    sy = camy + np.sin(cam_theta - np.pi/2) 

    # slope of line perpendicular to camera Z axis
    m = (sy - camy) / (sx - camx)

    # the sign of this value indicates which side of the line the camera can see
    visible = m*(zx - camx) - (zy - camy)

    # the sign of this value indicates which side of the line the tag is on
    tag_side = m*(tagx - camx) - (tagy - camy)

    if math.isclose(tag_side,0) or (visible>0 and tag_side>0) or (visible<0 and tag_side<0):
      relative_theta = ensure_between(ensure_between(tag_theta,-np.pi,np.pi) - cam_theta,-np.pi,np.pi)
    else:
      relative_theta = cant_see_it

  return [tag_camera[1]-transformed_origin[1], tag_camera[0]-transformed_origin[0], relative_theta]

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