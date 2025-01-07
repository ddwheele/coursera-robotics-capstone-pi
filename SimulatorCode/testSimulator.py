#!/usr/bin/python

import sys

import numpy as np

import mathUtils as mu

def main(args):
    root2 = np.sqrt(2)
    root3 = np.sqrt(3)
    
    # no translation, no rotation 0 -> 180
    cam0 = [0,0,mu.to_rad(180)]
    tag10 = [1,0]
    ans = mu.tag_in_world_to_tag_in_camera(cam0, tag10)
    assert np.allclose(ans, [-1,0,0])
    
    tag01 = [0,1]
    ans = mu.tag_in_world_to_tag_in_camera(cam0, tag01)
    assert np.allclose(ans, [0,1,0])
    
    tag55 = [5,5]
    ans = mu.tag_in_world_to_tag_in_camera(cam0, tag55)
    assert np.allclose(ans, [-5,5,0])

    # -90 deg rotation, no translation -90 -> 90
    camNeg90 = [0, 0, mu.to_rad(90)]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg90, tag10)
    assert np.allclose(ans, [0,1,0])

    ans = mu.tag_in_world_to_tag_in_camera(camNeg90, tag01)
    assert np.allclose(ans, [1,0,0])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg90, tag55)
    assert np.allclose(ans, [5,5,0])
    
    # translation, no rotation 0 -> 180
    cam007 = [7,0,mu.to_rad(180)]
    ans = mu.tag_in_world_to_tag_in_camera(cam007, tag10)
    assert np.allclose(ans, [6,0,0])
        
    ans = mu.tag_in_world_to_tag_in_camera(cam007, tag01)
    assert np.allclose(ans, [7,1,0])
    
    ans = mu.tag_in_world_to_tag_in_camera(cam007, tag55)
    assert np.allclose(ans, [2,5,0])

    # -90 deg rotation, 7 translation -90 -> 90
    camNeg90plus7 = [7, 0, mu.to_rad(90)]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg90plus7, tag10)
    assert np.allclose(ans, [0,-6,0]) # ["y","x"] = [x,z]

    ans = mu.tag_in_world_to_tag_in_camera(camNeg90plus7, tag01)
    assert np.allclose(ans, [1,-7,0])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg90plus7, tag55)
    assert np.allclose(ans, [5,-2,0])
    
    # 45 deg rotation, no translation -45 -> 135
    camNeg45 = [0, 0, mu.to_rad(135)]
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45, tag01)
    assert np.allclose(ans, [root2/2, root2/2, 0])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45, tag10)
    assert np.allclose(ans, [-root2/2, root2/2, 0])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45, tag55)
    assert np.allclose(ans, [0, 5*root2, 0])
        
    # 60 deg rotation, no translation -30 -> 150
    camNeg60 = [0, 0, mu.to_rad(150)]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg60, tag10)
    assert np.allclose(ans, [-root3/2.0, 0.5, 0])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg60, tag01)
    assert np.allclose(ans, [0.5, root3/2.0, 0])
    
    # 90 deg rotation, no translation 90 -> 270
    cam90 = [0, 0, mu.to_rad(270)]
    ans = mu.tag_in_world_to_tag_in_camera(cam90, tag10)
    assert np.allclose(ans, [0,-1,0])

    ans = mu.tag_in_world_to_tag_in_camera(cam90, tag01)
    assert np.allclose(ans, [-1,0,0])
    
    ans = mu.tag_in_world_to_tag_in_camera(cam90, tag55)
    assert np.allclose(ans, [-5,-5,0])

    # -45 deg rotation, -3 Y translation -45 -> 135
    camNeg45_minus3 = [0, -3, mu.to_rad(135)]
    tag3 = [3,0]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45_minus3, tag3)
    assert np.allclose(ans, [0, 3*root2,0])
    
    tagMinus3 = [-3,0]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45_minus3, tagMinus3)
    assert np.allclose(ans, [3*root2, 0 ,0])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45_minus3, tag01)
    assert np.allclose(ans, [4/root2, 4/root2,0])

    # 180 deg rotation, no translation -180 -> 0
    camNeg180 = [0, 0, mu.to_rad(0)] 

    ans = mu.tag_in_world_to_tag_in_camera(camNeg180, tag10)
    assert np.allclose(ans, [1,0,0])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg180, tag01)
    assert np.allclose(ans, [0, -1,0])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg180, tag55)
    assert np.allclose(ans, [5, -5,0])

    # 180 deg rotation, -3 Y translation  -180 -> 0
    camNeg180_minus3 = [0, -3, mu.to_rad(0)]

    ans = mu.tag_in_world_to_tag_in_camera(camNeg180_minus3, tag10)
    assert np.allclose(ans, [1, -3,0])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg180_minus3, tag01)
    assert np.allclose(ans, [0, -4,0])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg180_minus3, tag55)
    assert np.allclose(ans, [5, -8,0])
    
    print("PASSED ALL TESTS!")

if __name__ == "__main__":
  main(sys.argv)
