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
#   tag: tag position in world coordinates (x,y)
#   cam: camera position in world coordinates (x,y,theta)
# Output:
#   tag position in camera coordinates (x,y)
def tag_in_world_to_tag_in_camera(cam, tag):
    return [1,1]
    

def main(args):
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

    # translation, no rotation
    cam007 = [7,0,0]
    ans = tag_in_world_to_tag_in_camera(cam007, tag10)
    assert np.allclose(ans, [6,0])
        
    ans = tag_in_world_to_tag_in_camera(cam007, tag01)
    assert np.allclose(ans, [7,1])
    
    ans = tag_in_world_to_tag_in_camera(cam007, tag55)
    assert np.allclose(ans, [2,5])
        
    # rotation, no translation
    cam45 = [0, 0, to_rad(60)]
    ans = tag_in_world_to_tag_in_camera(cam007, tag55)
    assert np.allclose(ans, [2,5])
    
    
                       
        





























if __name__ == "__main__":
  main(sys.argv)
