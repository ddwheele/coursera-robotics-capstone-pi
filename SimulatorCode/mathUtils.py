#!/usr/bin/env python

import numpy as np

def to_rad(degrees):
    return degrees * np.pi / 180.0

# Input:
#   cam: camera position in world coordinates (x,y,theta)
#   tag: tag position in world coordinates (x,y)
# Output:
#   tag position in camera coordinates (x,y)
def tag_in_world_to_tag_in_camera(cam, tag):
    camx = cam[0]
    camy = cam[1]
    theta = cam[2] + np.pi/2.0
    
    # want theta between pi and -pi
    if theta > np.pi:
        theta = theta - np.pi
    elif theta < -np.pi:
        theta = theta + np.pi
    
    ct = np.cos(theta)
    st = np.sin(theta)
    
    rotmat = np.array([[ct, st, 0], [-st, ct, 0], [0,0,1]])
        
    # transformed origin offset
    cam_origin = np.array([camx, camy, 1])
    transformed_origin = np.matmul(rotmat, cam_origin)
    
    tag_world = np.array([tag[0], tag[1], 1])
    
    tag_camera = np.matmul(rotmat, tag_world)
        
    return [tag_camera[1]-transformed_origin[1], tag_camera[0]-transformed_origin[0]]  
