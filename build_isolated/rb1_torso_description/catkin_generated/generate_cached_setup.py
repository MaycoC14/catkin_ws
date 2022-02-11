# -*- coding: utf-8 -*-
from __future__ import print_function

import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/melodic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/melodic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in '/home/mayco/catkin_ws/devel_isolated/robotnik_sensors;/home/mayco/catkin_ws/devel_isolated/rb1_torso_pad;/home/mayco/catkin_ws/devel_isolated/rb1_pad;/home/mayco/catkin_ws/devel_isolated/rb1_base_pad;/home/mayco/catkin_ws/devel_isolated/robotnik_msgs;/home/mayco/catkin_ws/devel_isolated/rb1_torso_control;/home/mayco/catkin_ws/devel_isolated/rb1_sim_bringup;/home/mayco/catkin_ws/devel_isolated/rb1_sim;/home/mayco/catkin_ws/devel_isolated/rb1_control;/home/mayco/catkin_ws/devel_isolated/rb1_common;/home/mayco/catkin_ws/devel_isolated/rb1_base_sim_bringup;/home/mayco/catkin_ws/devel_isolated/rb1_base_sim;/home/mayco/catkin_ws/devel_isolated/rb1_base_description;/home/mayco/catkin_ws/devel_isolated/rb1_base_common;/home/mayco/catkin_ws/devel_isolated/rb1_arm_gazebo;/home/mayco/catkin_ws/devel_isolated/rb1_arm_control;/home/mayco/catkin_ws/devel_isolated/rb1_arm_joystick;/home/mayco/catkin_ws/devel_isolated/rb1_arm_description;/home/mayco/catkin_ws/devel_isolated/navigation;/home/mayco/catkin_ws/devel_isolated/move_base_flex;/home/mayco/catkin_ws/devel_isolated/mico_pad;/home/mayco/catkin_ws/devel_isolated/mico_moveit_config;/home/mayco/catkin_ws/devel_isolated/mico_description;/home/mayco/catkin_ws/devel_isolated/mico_common;/home/mayco/catkin_ws/devel_isolated/mbf_msgs;/home/mayco/catkin_ws/devel_isolated/mbf_abstract_core;/home/mayco/catkin_ws/devel_isolated/m1n6s300_moveit_config;/home/mayco/catkin_ws/devel_isolated/m1n6s300_ikfast;/home/mayco/catkin_ws/devel_isolated/libmavconn;/home/mayco/catkin_ws/devel_isolated/kinova_demo;/home/mayco/catkin_ws/devel_isolated/kinova_arm_moveit_demo;/home/mayco/catkin_ws/devel_isolated/kinova_driver;/home/mayco/catkin_ws/devel_isolated/kinova_msgs;/home/mayco/catkin_ws/devel_isolated/kinova_gazebo;/home/mayco/catkin_ws/devel_isolated/j2s7s300_moveit_config;/home/mayco/catkin_ws/devel_isolated/j2s6s300_moveit_config;/home/mayco/catkin_ws/devel_isolated/j2n6s300_moveit_config;/home/mayco/catkin_ws/devel_isolated/kinova_description;/home/mayco/catkin_ws/devel_isolated/kinova_control;/home/mayco/catkin_ws/devel_isolated/kinova_bringup;/home/mayco/catkin_ws/devel_isolated/j2s7s300_ikfast;/home/mayco/catkin_ws/devel_isolated/j2s6s300_ikfast;/home/mayco/catkin_ws/devel_isolated/j2n6s300_ikfast;/home/mayco/catkin_ws/devel_isolated/imu_tools;/home/mayco/catkin_ws/devel_isolated/imu_complementary_filter;/home/mayco/catkin_ws/devel_isolated/geometry2;/home/mayco/catkin_ws/devel_isolated/geographic_info;/home/mayco/catkin_ws/devel;/opt/ros/melodic'.split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/mayco/catkin_ws/devel_isolated/rb1_torso_description/env.sh')

output_filename = '/home/mayco/catkin_ws/build_isolated/rb1_torso_description/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
