#!/usr/bin/env python

import rospy

import baxter_interface
import baxter_external_devices

from inverse_kinematics import inverse_kinematics

from baxter_interface import CHECK_VERSION

# init node
rospy.init_node('hanoi_algorithm')

# enable robot
rs = baxter_interface.RobotEnable(CHECK_VERSION)
init_state = rs.state().enabled
rs.enable()

# calibrate gripper
right_gripper = baxter_interface.Gripper('right', CHECK_VERSION)
right_gripper.calibrate()

# constant variables
disks = 3
y_offset = 0.04
cube_height = 0.025
move_height = -0.1
table_height = -0.27 + 0.025/4
drop_offset = 0.03

# height of each slot
slot_height = [0] * disks
slot_height[0] = disks

# arm positions
slot_positions = [
    [0.65, -0.3, move_height, -1, 1, 0, 0],
    [0.65+0.024/4, -0.235, move_height, -1, 1, 0, 0],
    [0.65+0.024/2, -0.17, move_height, -1, 1, 0, 0]
]

# move to calibration position
calibration_position = [0.65, -0.3-0.0495, -0.255, -1, 1, 0, 0]
inverse_kinematics.ik_test('right', calibration_position)

# wait till SPACE is clicked
print("Position the base against the gripper and then click SPACE to continue")
while not rospy.is_shutdown():
    c = baxter_external_devices.getch()
    if c in ['\x1b', '\x03']:
        done = True
        rospy.signal_shutdown("Example finished.")
    if c == ' ':
        break

# move away from base so that the cardboard isn't hit
calibration_position[1] -= y_offset
calibration_position[2] = move_height
inverse_kinematics.ik_test('right', calibration_position)

# arm moves block from from_rod to to_rod
def arm_move_block(from_rod, to_rod):
    # move to pick up stack
    inverse_kinematics.ik_test('right', slot_positions[from_rod - 1])

    # move down and grab
    slot_positions[from_rod - 1][2] = table_height + ((slot_height[from_rod - 1]) * cube_height)
    inverse_kinematics.ik_test('right', slot_positions[from_rod - 1])
    right_gripper.close()
    rospy.sleep(0.5)

    # move up
    slot_positions[from_rod - 1][2] = move_height
    inverse_kinematics.ik_test('right', slot_positions[from_rod - 1])
    # slot_height[from_rod - 1] -= 1

    # move to drop off stack
    inverse_kinematics.ik_test('right', slot_positions[to_rod - 1])

    # move down and drop
    slot_positions[to_rod - 1][2] = table_height + drop_offset + ((slot_height[to_rod - 1]) * cube_height)
    inverse_kinematics.ik_test('right', slot_positions[to_rod - 1])
    right_gripper.open()
    rospy.sleep(0.5)

    # move sideways to get clear of stack
    slot_positions[to_rod - 1][1] += y_offset
    inverse_kinematics.ik_test('right', slot_positions[to_rod - 1])

    # move up
    slot_positions[to_rod - 1][2] = move_height
    slot_positions[to_rod - 1][1] -= y_offset
    inverse_kinematics.ik_test('right', slot_positions[to_rod - 1])


# tower of hanoi recursive algorithm
def TowerOfHanoi(n, from_rod, to_rod, aux_rod):
    if n == 0:
        return
    TowerOfHanoi(n-1, from_rod, aux_rod, to_rod)

    arm_move_block(from_rod, to_rod)

    slot_height[from_rod - 1] -= 1
    slot_height[to_rod - 1] += 1

    print("Move disk", n, "from rod", from_rod, "to rod", to_rod)

    TowerOfHanoi(n-1, aux_rod, to_rod, from_rod)


# start algorithm
if __name__ == '__main__':
    TowerOfHanoi(disks, 1, 3, 2)
