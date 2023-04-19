#!/usr/bin/env python

# Copyright (c) 2013-2015, Rethink Robotics
# All rights reserved.

# This python file is programmed to move the Baxter's arm individually. Not together

import argparse
import struct
import sys
import baxter_interface

import rospy

from geometry_msgs.msg import (
    PoseStamped,
    Pose,
    Point,
    Quaternion,
)
from std_msgs.msg import Header

from baxter_core_msgs.srv import (
    SolvePositionIK,
    SolvePositionIKRequest,
)
	

# Using inverse Kinematics, this function will test the if it is Plausible to move the specified point in the cartesian space.

# For code walk through & details regarding the workings of 

def ik_test(limb, vals):
		
	# vals = []
	# vals = getNewPoint()
	
	ns = "ExternalTools/" + limb + "/PositionKinematicsNode/IKService"
	iksvc = rospy.ServiceProxy(ns, SolvePositionIK)
	ikreq = SolvePositionIKRequest()
	hdr = Header(stamp=rospy.Time.now(), frame_id='base')
	poses = {

		'left': PoseStamped(
			header=hdr,
			pose=Pose(
				position=Point(
					x=vals[0],
					y=vals[1],
					z=vals[2],
				),
				orientation=Quaternion(
					x=vals[3],
					y=vals[4],
					z=vals[5],
					w=vals[6],
				),
			),
		),
		
		'right': PoseStamped(
			header=hdr,
			pose=Pose(
				position=Point(
					x=vals[0],
					y=vals[1],
					z=vals[2],
				),
				orientation=Quaternion(
					x=vals[3],
					y=vals[4],
					z=vals[5],
					w=vals[6],
				),
			),
		),
	}


	ikreq.pose_stamp.append(poses[limb])
	try:	# -0.15
		rospy.wait_for_service(ns, 5.0)
		resp = iksvc(ikreq)
	
	except (rospy.ServiceException, rospy.ROSException) as e:
		rospy.logerr("Service call failed: %s" % (e,))
		return 1
	

	# Check if result valid, and type of seed ultimately used to get solution
	# convert rospy's string representation of uint8[]'s to int's
	print(resp)
	resp_seeds = struct.unpack('<%dB' % len(resp.result_type), resp.result_type)

	if (resp_seeds[0] != resp.RESULT_INVALID):
		seed_str = {
				ikreq.SEED_USER: 'User Provided Seed',
				ikreq.SEED_CURRENT: 'Current Joint Angles',
				ikreq.SEED_NS_MAP: 'Nullspace Setpoints',
				}.get(resp_seeds[0], 'None')
		print("\n SUCCESS !! -- Valid Joint Solution Found from Seed Type: %s" %(seed_str,))
		
		# Format solution into Limb API-compatible dictionary
		joint_solution = dict(zip(resp.joints[0].name, resp.joints[0].position))


		arm = baxter_interface.Limb(limb) 
		ini_pos = arm.joint_angles() # The position of the arm before executing the script
		

		#set the return postion of right arm
		if(limb == 'right'):
			rest_pos_names = ['right_w0', 'right_w1', 'right_w2', 'right_e0', 'right_e1', 'right_s0', 'right_s1']
			rest_pos_angles = [0.39294996329718324, 0.5322943389298875, -0.4844243494011218, 0.3484304492470737, 0.9371757712794153, -0.008782329497268426, 0.014854846108827986]		
			rest_pos = dict(zip(rest_pos_names, rest_pos_angles))


		#set the return postion of left arm		
		if(limb == 'left'):
			rest_pos_names = ['left_w0', 'left_w1', 'left_w2', 'left_e0', 'left_e1', 'left_s0', 'left_s1']
			rest_pos_angles = [-0.04256796686382023, 0.029529130166794215, 0.09817477042466648, 0.07401457301547121, 1.505985638506505,  -0.07401457301547121, 0.05483981316690354]
			rest_pos = dict(zip(rest_pos_names, rest_pos_angles))


		# set arm joint positions to solution
		print ("\nmoving the Arm to the specified Location:")
		arm.move_to_joint_positions(joint_solution)
		rospy.sleep(0.005)
		

		# print the new effector position on the screen for cross checking
		position = arm.endpoint_pose()
		print("\n the current position is:")
		
		# Move the arm to the initial position
		# print ("\nmoving the Arm back to the initial position")
		# arm.move_to_joint_positions(ini_pos)
		
		# Move the arm to resting position
		# print("\nmoving the Arm back to the resting position")
		# arm.move_to_joint_positions(rest_pos)

	else:
		print("INVALID POSE - No Valid Joint Solution Found.")

	return 0


def main():
	arg_fmt = argparse.RawDescriptionHelpFormatter
	parser = argparse.ArgumentParser(formatter_class=arg_fmt, description=main.__doc__)
    
	parser.add_argument(
		'-l', '--limb', choices=['left', 'right'], required=True,
		help="the limb to test"
	)
	args = parser.parse_args(rospy.myargv()[1:])
	arr1 = [0.65, -0.4, 0.18, -1, 1, 0, 0]
	arr2 = [0.65, -0.15, 0.18, -1, 1, 0, 0]
	arr3 = [0.65, 0.1, 0.18, -1, 1, 0, 0]
	
	ik_test(args.limb, arr1)
	ik_test(args.limb, arr2)

	return ik_test(args.limb, arr3)

if __name__ == '__main__':
	sys.exit(main())

