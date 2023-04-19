#!/usr/bin/env python

import rospy
import baxter_interface
from inverse_kinematics import inverse_kinematics

from baxter_interface import CHECK_VERSION

rospy.init_node('hanoi_algorithm')
rs = baxter_interface.RobotEnable(CHECK_VERSION)
init_state = rs.state().enabled
rs.enable()
right_gripper = baxter_interface.Gripper('right', CHECK_VERSION)
right_gripper.calibrate()

def TowerOfHanoi(n, from_rod, to_rod, aux_rod):
    if n == 0:
        return
    TowerOfHanoi(n-1, from_rod, aux_rod, to_rod)

    inverse_kinematics.ik_test('right', arrs[from_rod - 1])

    arrs[from_rod - 1][2] = table_height + ((slot_height[from_rod - 1]) * cube_height)
    inverse_kinematics.ik_test('right', arrs[from_rod - 1])
    right_gripper.close()
    rospy.sleep(0.5)

    arrs[from_rod - 1][2] = move_height
    inverse_kinematics.ik_test('right', arrs[from_rod - 1])
    slot_height[from_rod - 1] -= 1

    inverse_kinematics.ik_test('right', arrs[to_rod - 1])
    arrs[to_rod - 1][2] = table_height + 0.05 + ((slot_height[to_rod - 1]) * cube_height)
    inverse_kinematics.ik_test('right', arrs[to_rod - 1])
    right_gripper.open()
    rospy.sleep(0.5)

    arrs[to_rod - 1][1] -= y_offset
    inverse_kinematics.ik_test('right', arrs[to_rod - 1])

    arrs[to_rod - 1][2] = move_height
    arrs[to_rod - 1][1] += y_offset
    inverse_kinematics.ik_test('right', arrs[to_rod - 1])

    slot_height[to_rod - 1] += 1

    print("Move disk", n, "from rod", from_rod, "to rod", to_rod)

    TowerOfHanoi(n-1, aux_rod, to_rod, from_rod)


  
disks = 3
y_offset = 0.05
cube_height = 0.019
move_height = 0.18
table_height = -0.25

arr1 = [0.65, -0.4, 0.18, -1, 1, 0, 0]
arr2 = [0.65, -0.15, 0.18, -1, 1, 0, 0]
arr3 = [0.65, 0.1, 0.18, -1, 1, 0, 0]

slot_height = [0] * disks
slot_height[0] = disks

arrs = [arr1, arr2, arr3]
TowerOfHanoi(disks, 1, 3, 2)
