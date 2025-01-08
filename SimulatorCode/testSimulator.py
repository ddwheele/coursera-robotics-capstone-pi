#!/usr/bin/python

import sys

import numpy as np

import mathUtils as mu

#   world coordinates: x = right, y = forward, theta around vertical z (right-handed)
#   camera coordinates: x = left, z = forward (left-handed)
def test_tag_in_world_to_tag_in_camera():
    root2 = np.sqrt(2)
    root3 = np.sqrt(3)
    
    # no translation, no rotation
    cam0 = [0,0,0]
    tag10 = [1,0,0] # tag faces origin
    ans = mu.tag_in_world_to_tag_in_camera(cam0, tag10)
    assert np.allclose(ans, [0, 1, 0])
    
    tag01 = [0,1, mu.to_rad(90)] # tag faces origin
    ans = mu.tag_in_world_to_tag_in_camera(cam0, tag01)
    assert np.allclose(ans, [1, 0, mu.to_rad(90)])
    
    tag55 = [5,5, mu.to_rad(45)]
    ans = mu.tag_in_world_to_tag_in_camera(cam0, tag55)
    assert np.allclose(ans, [5, 5, mu.to_rad(45)])

    # -90 deg rotation, no translation 
    camNeg90 = [0, 0, mu.to_rad(-90)]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg90, tag10)
    assert np.allclose(ans, [1, 0, mu.to_rad(90)])

    ans = mu.tag_in_world_to_tag_in_camera(camNeg90, tag01)
    assert np.allclose(ans, [0, -1, mu.to_rad(180)])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg90, tag55)
    assert np.allclose(ans, [5, -5, mu.to_rad(135)])
    
    # translation, no rotation 
    cam007 = [7,0,0]
    ans = mu.tag_in_world_to_tag_in_camera(cam007, tag10)
    assert np.allclose(ans, [0, -6, 0])
        
    ans = mu.tag_in_world_to_tag_in_camera(cam007, tag01)
    assert np.allclose(ans, [1, -7,  mu.to_rad(90)])
    
    ans = mu.tag_in_world_to_tag_in_camera(cam007, tag55)
    assert np.allclose(ans, [5, -2,  mu.to_rad(45)])

    # -90 deg rotation, 7 translation 
    camNeg90plus7 = [7, 0, mu.to_rad(-90)]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg90plus7, tag10)
    assert np.allclose(ans, [-6, 0, 0]) # ["y","x"] = [x,z]

    ans = mu.tag_in_world_to_tag_in_camera(camNeg90plus7, tag01)
    assert np.allclose(ans, [-7, -1, 0])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg90plus7, tag55)
    assert np.allclose(ans, [-2, -5, 0])
    
    # 45 deg rotation, no translation
    camNeg45 = [0, 0, mu.to_rad(-45)]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45, tag10)
    assert np.allclose(ans, [root2/2, root2/2, mu.to_rad(45)])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45, tag01)
    assert np.allclose(ans, [root2/2, -root2/2, mu.to_rad(135)])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45, tag55)
    assert np.allclose(ans, [5*root2, 0, mu.to_rad(90)])
        
    # -30 deg rotation, no translation
    camNeg30 = [0, 0, mu.to_rad(-30)]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg30, tag10)
    assert np.allclose(ans, [0.5, root3/2.0, mu.to_rad(30)])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg30, tag01)
    assert np.allclose(ans, [root3/2.0, -0.5, mu.to_rad(120)])
    
    # 90 deg rotation, no translation
    cam90 = [0, 0, mu.to_rad(90)]
    ans = mu.tag_in_world_to_tag_in_camera(cam90, tag10)
    assert np.allclose(ans, [-1, 0, mu.to_rad(-90)])

    ans = mu.tag_in_world_to_tag_in_camera(cam90, tag01)
    assert np.allclose(ans, [0, 1, 0])
    
    ans = mu.tag_in_world_to_tag_in_camera(cam90, tag55)
    assert np.allclose(ans, [-5, 5, mu.to_rad(-45)])

    # -45 deg rotation, -3 Y translation
    camNeg45_minus3 = [0, -3, mu.to_rad(-45)]
    tag3 = [3,0]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45_minus3, tag3)
    assert np.allclose(ans, [3*root2, 0, 0])
    
    tagMinus3 = [0,-3]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45_minus3, tagMinus3)
    assert np.allclose(ans, [0, 0, 0])

    # 180 deg rotation, no translation
    camNeg180 = [0, 0, mu.to_rad(-180)] 

    ans = mu.tag_in_world_to_tag_in_camera(camNeg180, tag10)
    assert np.allclose(ans, [0, -1, mu.to_rad(-180)])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg180, tag01)
    assert np.allclose(ans, [-1, 0, mu.to_rad(-90)])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg180, tag55)
    assert np.allclose(ans, [-5, -5, mu.to_rad(135)])

    # 180 deg rotation, -3 Y translation 
    camNeg180_minus3 = [0, -3, mu.to_rad(-180)]

    ans = mu.tag_in_world_to_tag_in_camera(camNeg180_minus3, tag10)
    assert np.allclose(ans, [-3, -1, 0])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg180_minus3, tag01)
    assert np.allclose(ans, [-4, 0, 0])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg180_minus3, tag55)
    assert np.allclose(ans, [-8, -5, 0])

    # simulation point
    camSimStart = [0.25, 0, mu.to_rad(90)]
    tagInSim = [0.5,1]
    ans = mu.tag_in_world_to_tag_in_camera(camSimStart, tagInSim)
    assert np.allclose(ans, [-0.25, 1, 0])
    print("Passed test_tag_in_world_to_tag_in_camera!")

def test_robot_in_world_to_camera_in_world():
  root2 = np.sqrt(2)

  # no translation, no rotation
  t_cam_to_body = [4,0,0]
  robot00_0 = [0,0,0]
  ans = mu.robot_in_world_to_camera_in_world(robot00_0, t_cam_to_body)
  assert np.allclose(ans, [4, 0, 0])
  
  robot00_90 = [0,0,mu.to_rad(90)]
  ans = mu.robot_in_world_to_camera_in_world(robot00_90, t_cam_to_body)
  assert np.allclose(ans, [0, 4, mu.to_rad(90)])
 
  robot00_45 = [0,0,mu.to_rad(45)]
  ans = mu.robot_in_world_to_camera_in_world(robot00_45, t_cam_to_body)
  assert np.allclose(ans, [4/root2, 4/root2, mu.to_rad(45)])

  robot50_0 = [5,0,0]
  ans = mu.robot_in_world_to_camera_in_world(robot50_0, t_cam_to_body)
  assert np.allclose(ans, [9, 0, 0])
 
  robot50_90 = [5,0,mu.to_rad(90)]
  ans = mu.robot_in_world_to_camera_in_world(robot50_90, t_cam_to_body)
  assert np.allclose(ans, [5, 4, mu.to_rad(90)])
 
  robot05_0 = [0,5,0]
  ans = mu.robot_in_world_to_camera_in_world(robot05_0, t_cam_to_body)
  assert np.allclose(ans, [4, 5, 0])

  robot05_90 = [0,5,mu.to_rad(90)]
  ans = mu.robot_in_world_to_camera_in_world(robot05_90, t_cam_to_body)
  assert np.allclose(ans, [0, 9, mu.to_rad(90)])

  robot55_45 = [5,5,mu.to_rad(45)]
  ans = mu.robot_in_world_to_camera_in_world(robot55_45, t_cam_to_body)
  assert np.allclose(ans, [5+4/root2, 5+4/root2, mu.to_rad(45)])

  t_cam_to_body = [6,2,0]
  ans = mu.robot_in_world_to_camera_in_world(robot00_0, t_cam_to_body)
  assert np.allclose(ans, [6, 2, 0])

  ans = mu.robot_in_world_to_camera_in_world(robot00_90, t_cam_to_body)
  assert np.allclose(ans, [-2, 6, mu.to_rad(90)])

  robot00_180 = [0,0,mu.to_rad(180)]
  ans = mu.robot_in_world_to_camera_in_world(robot00_180, t_cam_to_body)
  assert np.allclose(ans, [-6, -2, mu.to_rad(180)])

  print("Passed test_robot_in_world_to_camera_in_world!")

def main(args):
  test_tag_in_world_to_tag_in_camera()
  test_robot_in_world_to_camera_in_world()

  print("PASSED ALL TESTS!")

if __name__ == "__main__":
  main(sys.argv)
