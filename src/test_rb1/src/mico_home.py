#! /usr/bin/env python

'''
This code sends the mico arm of 6-dof and 3 fingers to an initial position
in the case that separate-joint controllers are spawned.
'''

import rospy
from std_msgs.msg import Float64
import time

def main():
    try:
        # Init the node
        rospy.init_node('move_mico_home')

        # Allow gazebo to launch
        time.sleep(10)

        # Home position
        arm = [-1.2,1.0,0.7,3.8,3.8,-1.9]
        fingers = [0.8,1.0]

        # Create publishers
        j1 = rospy.Publisher('/robot/joint_1_position_controller/command',Float64,queue_size=10)
        j2 = rospy.Publisher('/robot/joint_2_position_controller/command',Float64,queue_size=10)
        j3 = rospy.Publisher('/robot/joint_3_position_controller/command',Float64,queue_size=10)
        j4 = rospy.Publisher('/robot/joint_4_position_controller/command',Float64,queue_size=10)
        j5 = rospy.Publisher('/robot/joint_5_position_controller/command',Float64,queue_size=10)
        j6 = rospy.Publisher('/robot/joint_6_position_controller/command',Float64,queue_size=10)
        f1 = rospy.Publisher('/robot/finger_1_position_controller/command',Float64,queue_size=10)
        f2 = rospy.Publisher('/robot/finger_2_position_controller/command',Float64,queue_size=10)
        f3 = rospy.Publisher('/robot/finger_3_position_controller/command',Float64,queue_size=10)
        t1 = rospy.Publisher('/robot/finger_tip_1_position_controller/command',Float64,queue_size=10)
        t2 = rospy.Publisher('/robot/finger_tip_2_position_controller/command',Float64,queue_size=10)
        t3 = rospy.Publisher('/robot/finger_tip_3_position_controller/command',Float64,queue_size=10)
        j = [j1,j2,j3,j4,j5,j6]
        ft = [f1,f2,f3,t1,t2,t3]

        # Publish home position
        rate = rospy.Rate(2)
        count = 0
        while count < 10:
            for i in range(6):
                j[i].publish(Float64(data=arm[i]))
            for i in range(3):
                ft[i*2].publish(Float64(data=fingers[0]))
                ft[(i*2)+1].publish(Float64(data=fingers[1]))
            rate.sleep()
            count = count + 1

        rospy.loginfo("move_mico_home done.")
    except rospy.ROSInterruptException:
        rospy.logwarn("move_mico_home interrupted before completion.")

if __name__ == '__main__':
    main()
