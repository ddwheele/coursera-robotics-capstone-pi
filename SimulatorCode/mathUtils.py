#!/usr/bin/env python
import numpy as np

def to_rad(degrees):
    return degrees * np.pi / 180.0

# Input:
#   cam: camera position in world coordinates (x, y, theta = view axis)
#   tag: tag position in world coordinates (x,y, theta)
#   world coordinates are x = right, y = forward, theta around vertical z (right-handed)
# Output:
#   tag position in camera coordinates (x,z,0) (pretend everything is head-on, may implement theta later)
#   camera coordinates are x = left, z = forward = view axis (left-handed)
def tag_in_world_to_tag_in_camera(cam, tag):
    camx = cam[0]
    camy = cam[1]
    theta = cam[2] 
    
    # want theta between pi and -pi
    if theta > np.pi:
        theta = theta - np.pi
    elif theta < -np.pi:
        theta = theta + np.pi
    
    ct = np.cos(theta)
    st = np.sin(theta)
    
    rotmat = np.array([[ct, st, 0], [-st, ct, 0], [0,0,1]],dtype=object)

    # transformed origin offset
    cam_origin = np.array([camx, camy, 1],dtype=object)
    transformed_origin = np.matmul(rotmat, cam_origin)
    
    tag_world = np.array([tag[0], tag[1], 1])
    
    tag_camera = np.matmul(rotmat, tag_world)

    ans = [tag_camera[1]-transformed_origin[1], tag_camera[0]-transformed_origin[0], 0]  
        
    return [tag_camera[1]-transformed_origin[1], tag_camera[0]-transformed_origin[0], 0]

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