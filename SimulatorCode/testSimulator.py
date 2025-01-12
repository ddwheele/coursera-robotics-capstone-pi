#!/usr/bin/python

import sys

import numpy as np

import mathUtils as mu

# All units are meters and radians unless otherwise specified

# Input:
#   ans - x, y, theta of tag in camera frame (calculated)
#   truth - what x, y, and theta should be
# Output:
#   returns true if x and y are equal, and thetas are equal or both above pi radians
def tag_angle_is_correct(ans, truth):
  correct = np.allclose(ans[0:1], truth[0:1])
  if correct:
    if np.isclose(ans[2], truth[2]):
      return True
    if abs(ans[2]) >= (np.pi) and abs(truth[2]) >= (np.pi):
      return True
  return False

# Input:
#   ans - x, y, theta (to test)
#   truth - what x, y, and theta should be
# Output:
#   returns true if xs, ys, and thetas are equal
def triplet_is_correct(ans, truth):
  correct = np.allclose(ans[0:1], truth[0:1])
  if correct:
    if np.isclose(ans[2], truth[2]):
      return True
    if np.isclose(ans[2] + 2*np.pi, truth[2]):
      return True
    if np.isclose(ans[2] - 2*np.pi, truth[2]):
      return True
  return False

def test_tag_in_camera_to_robot_in_world():
  # East
  tag200 =  [2,0,0]
  tag_straight_at_camera_1 = [0,1,mu.to_rad(90)]
  ans = mu.tag_in_camera_to_camera_in_world(tag200, tag_straight_at_camera_1)
  print(ans)
  assert triplet_is_correct(ans, [1,0,0]) # got -90
  # North
  tag02_90 = [0, 2, mu.to_rad(90)]
  ans = mu.tag_in_camera_to_camera_in_world(tag02_90, tag_straight_at_camera_1)
  print(ans)
  assert triplet_is_correct(ans, [0,1,mu.to_rad(90)]) # got 0
  # West
  tagMin20_180 = [-2, 0, mu.to_rad(180)]
  ans = mu.tag_in_camera_to_camera_in_world(tagMin20_180, tag_straight_at_camera_1)
  assert triplet_is_correct(ans, [-1,0,mu.to_rad(-180)])
  # South
  tag0Min2_Neg90 = [0, -2, mu.to_rad(-90)]
  ans = mu.tag_in_camera_to_camera_in_world(tag0Min2_Neg90, tag_straight_at_camera_1)
  assert triplet_is_correct(ans, [0,-1,mu.to_rad(-90)])

  # North-east
  root2 = np.sqrt(2)
  tag22_45 = [2, 2, mu.to_rad(45)]
  tag_straight_at_camera_root2 = [0,root2,mu.to_rad(90)]
  ans = mu.tag_in_camera_to_camera_in_world(tag22_45, tag_straight_at_camera_root2)
  assert triplet_is_correct(ans, [1,1,mu.to_rad(45)])

  # North-west
  tagNeg22_135 = [-2, 2, mu.to_rad(135)]
  ans = mu.tag_in_camera_to_camera_in_world(tagNeg22_135, tag_straight_at_camera_root2)
  assert triplet_is_correct(ans, [-1,1,mu.to_rad(135)])

  # South-west
  tagNeg2Neg2_Neg135 = [-2, -2, mu.to_rad(-135)]
  ans = mu.tag_in_camera_to_camera_in_world(tagNeg2Neg2_Neg135, tag_straight_at_camera_root2)
  assert triplet_is_correct(ans, [-1,-1,mu.to_rad(-135)])

  # South-east
  tag2Neg2_Neg45 = [2, -2, mu.to_rad(-45)]
  ans = mu.tag_in_camera_to_camera_in_world(tag2Neg2_Neg45, tag_straight_at_camera_root2)
  assert triplet_is_correct(ans, [1,-1,mu.to_rad(-45)])

  # East to north
  tag_45_to_cam_11 = [1, 1, mu.to_rad(45)]
  ans = mu.tag_in_camera_to_camera_in_world(tag22_45,tag_45_to_cam_11)
  print(ans)
  assert triplet_is_correct(ans, [1,1,0])


  print("Passed test_tag_in_camera_to_robot_in_world!")

#   world coordinates: x = right, y = forward, theta around vertical z (right-handed)
#   camera coordinates: x = left, z = forward (left-handed)
def test_tag_in_world_to_tag_in_camera():
    root2 = np.sqrt(2)
    root3 = np.sqrt(3)
    cant_see_it = 5 # angle > pi/2, indicates tag is not visible in camera
    # angle reported if tag exactly faces the camera
    zero_angle = 90
    
    # no translation, no rotation
    cam0 = [0,0,0] # camera faces east
    tag10 = [1,0,0] # front of tag faces origin (west)
    ans = mu.tag_in_world_to_tag_in_camera(cam0, tag10)
    assert tag_angle_is_correct(ans, [0, 1, mu.to_rad(zero_angle)])
    
    tag01 = [0, 1, mu.to_rad(90)] # tag faces origin
    ans = mu.tag_in_world_to_tag_in_camera(cam0, tag01)
    assert tag_angle_is_correct(ans, [1, 0, mu.to_rad(90+zero_angle)])
    
    tag55 = [5, 5, mu.to_rad(45)]
    ans = mu.tag_in_world_to_tag_in_camera(cam0, tag55)
    assert tag_angle_is_correct(ans, [5, 5, mu.to_rad(45+zero_angle)])

    # -90 deg rotation, no translation 
    camNeg90 = [0, 0, mu.to_rad(-90)]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg90, tag10)
    assert tag_angle_is_correct(ans, [1, 0, mu.to_rad(90+zero_angle)])

    ans = mu.tag_in_world_to_tag_in_camera(camNeg90, tag01)
    assert tag_angle_is_correct(ans, [0, -1, cant_see_it])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg90, tag55)
    assert tag_angle_is_correct(ans, [5, -5, cant_see_it])
    
    # translation, no rotation 
    cam007 = [7, 0, 0]
    ans = mu.tag_in_world_to_tag_in_camera(cam007, tag10)
    print(ans)
    assert tag_angle_is_correct(ans, [0, -6, cant_see_it])
        
    ans = mu.tag_in_world_to_tag_in_camera(cam007, tag01)
    assert tag_angle_is_correct(ans, [1,-7, cant_see_it])
    
    ans = mu.tag_in_world_to_tag_in_camera(cam007, tag55)
    assert tag_angle_is_correct(ans, [5, -2, cant_see_it])

    # -90 deg rotation, 7 translation 
    camNeg90plus7 = [7, 0, mu.to_rad(-90)]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg90plus7, tag10)
    assert tag_angle_is_correct(ans, [-6, 0, cant_see_it]) # ["y","x"] = [x,z]

    ans = mu.tag_in_world_to_tag_in_camera(camNeg90plus7, tag01)
    assert tag_angle_is_correct(ans, [-7, -1, cant_see_it])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg90plus7, tag55)
    assert tag_angle_is_correct(ans, [-2, -5, cant_see_it])
    
    # -45 deg rotation, no translation
    camNeg45 = [0, 0, mu.to_rad(-45)]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45, tag10)
    assert tag_angle_is_correct(ans, [root2/2, root2/2, mu.to_rad(45+zero_angle)])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45, tag01)
    assert tag_angle_is_correct(ans, [root2/2, -root2/2, cant_see_it])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45, tag55)
    assert tag_angle_is_correct(ans, [5*root2, 0, mu.to_rad(90+zero_angle)])
        
    # -30 deg rotation, no translation
    camNeg30 = [0, 0, mu.to_rad(-30)]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg30, tag10)
    assert tag_angle_is_correct(ans, [0.5, root3/2.0, mu.to_rad(30+zero_angle)])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg30, tag01)
    assert tag_angle_is_correct(ans, [root3/2.0, -0.5, cant_see_it])
    
    # 90 deg rotation, no translation
    cam90 = [0, 0, mu.to_rad(90)]
    ans = mu.tag_in_world_to_tag_in_camera(cam90, tag10)
    assert tag_angle_is_correct(ans, [-1, 0, mu.to_rad(-90+zero_angle)])

    ans = mu.tag_in_world_to_tag_in_camera(cam90, tag01)
    assert tag_angle_is_correct(ans, [0, 1, mu.to_rad(zero_angle)])
    
    ans = mu.tag_in_world_to_tag_in_camera(cam90, tag55)
    assert tag_angle_is_correct(ans, [-5, 5, mu.to_rad(-45+zero_angle)])

    # -45 deg rotation, -3 Y translation
    camNeg45_minus3 = [0, -3, mu.to_rad(-45)]
    tag3 = [3, 0, 0]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45_minus3, tag3)
    assert tag_angle_is_correct(ans, [3*root2, 0, mu.to_rad(45+zero_angle)])
  
    tagMinus3 = [0, -3, mu.to_rad(-45)]
    ans = mu.tag_in_world_to_tag_in_camera(camNeg45_minus3, tagMinus3)
    assert tag_angle_is_correct(ans, [0, 0, mu.to_rad(zero_angle)]) # tag co-located with camera

    # 180 deg rotation, no translation
    camNeg180 = [0, 0, mu.to_rad(-180)] 

    ans = mu.tag_in_world_to_tag_in_camera(camNeg180, tag10)
    assert tag_angle_is_correct(ans, [0, -1, cant_see_it])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg180, tag01)
    assert tag_angle_is_correct(ans, [-1, 0, mu.to_rad(-90+zero_angle)])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg180, tag55)
    assert tag_angle_is_correct(ans, [-5, -5, cant_see_it])

    # 180 deg rotation, -3 Y translation 
    camNeg180_minus3 = [0, -3, mu.to_rad(-180)]

    ans = mu.tag_in_world_to_tag_in_camera(camNeg180_minus3, tag10)
    assert tag_angle_is_correct(ans, [-3, -1, cant_see_it])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg180_minus3, tag01)
    assert tag_angle_is_correct(ans, [-4, 0, mu.to_rad(-90+zero_angle)])
    
    ans = mu.tag_in_world_to_tag_in_camera(camNeg180_minus3, tag55)
    assert tag_angle_is_correct(ans, [-8, -5, cant_see_it])

    # simulation point
    camSimStart = [0.25, 0, mu.to_rad(90)]
    tagInSim = [0.5,1, np.pi/2]
    ans = mu.tag_in_world_to_tag_in_camera(camSimStart, tagInSim)
    assert tag_angle_is_correct(ans, [-0.25, 1, mu.to_rad(zero_angle)])
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
  #test_tag_in_camera_to_robot_in_world()
  test_tag_in_world_to_tag_in_camera()
  test_robot_in_world_to_camera_in_world()

  print("PASSED ALL TESTS!")

if __name__ == "__main__":
  main(sys.argv)
