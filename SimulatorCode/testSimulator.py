#!/usr/bin/python

import sys

import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation
from matplotlib import patches

#import thread
import time
import math

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
    print("--------")
    print("theta = %f" %(theta))
    
    # want theta between pi and -pi
    if theta > np.pi:
        theta = theta - np.pi
    elif theta < -np.pi:
        theta = theta + np.pi
    
    ct = np.cos(theta)
    st = np.sin(theta)
    
    print("ct = %f, st = %f" %(ct, st))
    
    rotmat = np.array([[ct, st, camy], [-st, ct, camx], [0,0,1]])
    
    print(rotmat)
    
    tag_world = np.array([tag[0], tag[1], 1])
    print(tag_world)
    
    tag_camera = np.matmul(rotmat, tag_world)
    print(tag_camera)
    
    return [tag_camera[1], tag_camera[0]]  

def main(args):
    root2 = np.sqrt(2)
    root3 = np.sqrt(3)
    
    # no translation, no rotation
    cam0 = [0,0,0]
    tag10 = [1,0]
    ans = tag_in_world_to_tag_in_camera(cam0, tag10)
    assert np.allclose(ans, [-1,0])
    
    tag01 = [0,1]
    ans = tag_in_world_to_tag_in_camera(cam0, tag01)
    assert np.allclose(ans, [0,1])
    
    tag55 = [5,5]
    ans = tag_in_world_to_tag_in_camera(cam0, tag55)
    assert np.allclose(ans, [-5,5])

    # -90 deg rotation, no translation
    camNeg90 = [0, 0, to_rad(-90)]
    ans = tag_in_world_to_tag_in_camera(camNeg90, tag10)
    assert np.allclose(ans, [0,1])

    ans = tag_in_world_to_tag_in_camera(camNeg90, tag01)
    assert np.allclose(ans, [1,0])
    
    ans = tag_in_world_to_tag_in_camera(camNeg90, tag55)
    assert np.allclose(ans, [5,5])
    
    # translation, no rotation
    cam007 = [7,0,0]
    ans = tag_in_world_to_tag_in_camera(cam007, tag10)
    assert np.allclose(ans, [6,0])
        
    ans = tag_in_world_to_tag_in_camera(cam007, tag01)
    assert np.allclose(ans, [7,1])
    
    ans = tag_in_world_to_tag_in_camera(cam007, tag55)
    assert np.allclose(ans, [2,5])

    # ^^^^^^^^^^ above passes
    # -90 deg rotation, 7 translation
    camNeg90plus7 = [7, 0, to_rad(-90)]
    ans = tag_in_world_to_tag_in_camera(camNeg90plus7, tag10)
    assert np.allclose(ans, [0,-6]) # ["y","x"] = [x,z]

    ans = tag_in_world_to_tag_in_camera(camNeg90plus7, tag01)
    assert np.allclose(ans, [1,-7])
    
    ans = tag_in_world_to_tag_in_camera(camNeg90plus7, tag55)
    assert np.allclose(ans, [5,-2])
        
   
    # 45 deg rotation, no translation
    camNeg45 = [0, 0, to_rad(-45)]
    ans = tag_in_world_to_tag_in_camera(camNeg45, tag10)
    assert np.allclose(ans, [-root2, root2])
    
    ans = tag_in_world_to_tag_in_camera(camNeg45, tag01)
    assert np.allclose(ans, [root2, root2])
    
    ans = tag_in_world_to_tag_in_camera(camNeg45, tag55)
    assert np.allclose(ans, [0, 5*root2])
    

    
    # 60 deg rotation, no translation
    camNeg60 = [0, 0, to_rad(-60)]
    ans = tag_in_world_to_tag_in_camera(camNeg60, tag10)
    assert np.allclose(ans, [-root3/2.0, 0.5])
    
    ans = tag_in_world_to_tag_in_camera(camNeg60, tag01)
    assert np.allclose(ans, [0.5, root3/2.0])
    
    # 90 deg rotation, no translation
    cam90 = [0, 0, to_rad(90)]
    ans = tag_in_world_to_tag_in_camera(cam90, tag10)
    assert np.allclose(ans, [0,-1])

    ans = tag_in_world_to_tag_in_camera(cam90, tag01)
    assert np.allclose(ans, [-1,0])
    
    ans = tag_in_world_to_tag_in_camera(cam90, tag55)
    assert np.allclose(ans, [-5,-5])
    
    # -45 deg rotation, -3 Y translation
    camNeg45_minus3 = [0, 3, to_rad(-45)]
    ans = tag_in_world_to_tag_in_camera(camNeg45_minus3, tag01)
    assert np.allclose(ans, [4*root2, 4*root2])
    
    tag3 = [3,0]
    ans = tag_in_world_to_tag_in_camera(camNeg45_minus3, tagRoot3)
    assert np.allclose(ans, [0, 3*root2])
    
    tagMinus3 = [-3,0]
    ans = tag_in_world_to_tag_in_camera(camNeg45_minus3, tagMinusRoot3)
    assert np.allclose(ans, [3*root2, 0])

    # 180 deg rotation, -3 Y translation
    camNeg180_minus3 = [0, 3, to_rad(180)]

    ans = tag_in_world_to_tag_in_camera(camNeg180_minus3, tag10)
    assert np.allclose(ans, [1, -3])
    
    ans = tag_in_world_to_tag_in_camera(camNeg180_minus3, tag01)
    assert np.allclose(ans, [0, -4])
    
    ans = tag_in_world_to_tag_in_camera(camNeg180_minus3, tag55)
    assert np.allclose(ans, [5, -8])






















if __name__ == "__main__":
  main(sys.argv)
