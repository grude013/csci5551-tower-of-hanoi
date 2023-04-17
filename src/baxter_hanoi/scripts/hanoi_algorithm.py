#!/usr/bin/env python

# def TowerOfHanoi(disks, from_slot, aux_slot, to_slot):
#     if disks == 0:
#         return

#     TowerOfHanoi(disks-1, from_slot, aux_slot, to_slot)

#     # Pickup Cube
#     slot_heights[from_slot] -= 1
#     robotcoords[2] = base_height

#     # Changes y position based on to_slot
#     robotcoords[1] = slot_y[to_slot]
#     robotcoords[2] = height_of_table + (cube_height * slot_heights[to_slot])

#     # Release Cube
#     slot_heights[to_slot] += 1

#     print("Move disk", disks, "from slot", from_slot, "to slot", to_slot)
#     TowerOfHanoi(disks-1, aux_slot, to_slot, from_slot)

# robotcoords = [0.5, -0.15, -0.18, -1, 1, 0, 0]

# disks = 3
# cube_height = 0.5

# # Positions of Slots are as follows (subject to change)
# slot_y = [-0.4, -0.15, 0.1]
# slot_heights = [disks, 0, 0]
# height_of_table = 0
# base_height = height_of_table + 2
  
# TowerOfHanoi(disks, 1, 2, 3)

from inverse_kinematics import inverse_kinematics

def TowerOfHanoi(n, from_rod, to_rod, aux_rod):
    if n == 0:
        return
    TowerOfHanoi(n-1, from_rod, aux_rod, to_rod)

    inverse_kinematics.ik_test('right', arrs[from_rod - 1])

    arrs[from_rod - 1][2] = -0.18
    inverse_kinematics.ik_test('right', arrs[from_rod - 1])
    arrs[from_rod - 1][2] = 0.18
    inverse_kinematics.ik_test('right', arrs[from_rod - 1])

    inverse_kinematics.ik_test('right', arrs[to_rod - 1])

    arrs[to_rod - 1][2] = -0.18
    inverse_kinematics.ik_test('right', arrs[to_rod - 1])
    arrs[to_rod - 1][2] = 0.18
    inverse_kinematics.ik_test('right', arrs[to_rod - 1])

    print("Move disk", n, "from rod", from_rod, "to rod", to_rod)


    TowerOfHanoi(n-1, aux_rod, to_rod, from_rod)
  
  
disks = 3
  

arr1 = [0.65, -0.4, 0.18, -1, 1, 0, 0]
arr2 = [0.65, -0.15, 0.18, -1, 1, 0, 0]
arr3 = [0.65, 0.1, 0.18, -1, 1, 0, 0]

arrs = [arr1, arr2, arr3]
TowerOfHanoi(disks, 1, 3, 2)

# inverse_kinematics.ik_test('right', arr1)
# inverse_kinematics.ik_test('right', arr2)
# inverse_kinematics.ik_test('right', arr3)