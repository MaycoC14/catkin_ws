# Install script for directory: /home/mayco/catkin_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mayco/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/mayco/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/mayco/catkin_ws/install" TYPE PROGRAM FILES "/home/mayco/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/mayco/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/mayco/catkin_ws/install" TYPE PROGRAM FILES "/home/mayco/catkin_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/mayco/catkin_ws/install/setup.bash;/home/mayco/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/mayco/catkin_ws/install" TYPE FILE FILES
    "/home/mayco/catkin_ws/build/catkin_generated/installspace/setup.bash"
    "/home/mayco/catkin_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/mayco/catkin_ws/install/setup.sh;/home/mayco/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/mayco/catkin_ws/install" TYPE FILE FILES
    "/home/mayco/catkin_ws/build/catkin_generated/installspace/setup.sh"
    "/home/mayco/catkin_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/mayco/catkin_ws/install/setup.zsh;/home/mayco/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/mayco/catkin_ws/install" TYPE FILE FILES
    "/home/mayco/catkin_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/mayco/catkin_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/mayco/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/mayco/catkin_ws/install" TYPE FILE FILES "/home/mayco/catkin_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/mayco/catkin_ws/build/gtest/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geographic_info/geographic_info/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geometry2/geometry2/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/imu_tools/imu_tools/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_bringup/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_control/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_gazebo/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/mico_common/mico_common/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/move_base_flex/move_base_flex/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/navigation/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_base_common/rb1_base_common/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_base_sim/rb1_base_sim/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_common/rb1_common/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_sim/rb1_sim/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_sim/rb1_sim_bringup/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/mavros/libmavconn/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/move_base_flex/mbf_abstract_core/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/move_base_flex/mbf_msgs/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/robotnik_msgs/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rospy_message_converter/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/test_rb1/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geometry2/tf2_msgs/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geometry2/tf2/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geometry2/tf2_bullet/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geometry2/tf2_eigen/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/unique_identifier/unique_identifier/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/unique_identifier/uuid_msgs/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geographic_info/geographic_msgs/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/basic-modules-util/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/module_torso_head-master/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/map_server/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_base_common/rb1_base_description/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_base_sim/rb1_base_sim_bringup/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geometry2/tf2_py/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_msgs/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/mavros/mavros_msgs/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/mico_common/mico_pad/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_sim/rb1_arm_joystick/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_base_common/rb1_base_pad/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_common/rb1_pad/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_common/rb1_torso_pad/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geometry2/tf2_ros/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/mavros/mavros/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/imu_tools/imu_complementary_filter/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_driver/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_demo/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/mico_common/mico_description/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/mico_common/mico_moveit_config/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1/rb1_common/rb1_arm_description/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1/rb1_sim/rb1_arm_control/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1/rb1_sim/rb1_arm_gazebo/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geometry2/tf2_geometry_msgs/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/amcl/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/fake_localization/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/imu_tools/imu_filter_madgwick/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/move_base_flex/mbf_utility/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/move_base_flex/mbf_abstract_nav/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/move_base_flex/mbf_simple_nav/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/robot_localization/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_base_common/rb1_base_localization/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geometry2/tf2_kdl/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geometry2/test_tf2/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geometry2/tf2_sensor_msgs/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geometry2/tf2_tools/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/twist_mux/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_base_common/rb1_base_control/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/unique_identifier/unique_id/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/geographic_info/geodesy/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/mavros/mavros_extras/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_common/rb1_control/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_common/rb1_torso_control/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/imu_tools/rviz_imu_plugin/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2n6s300_ikfast/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2s6s300_ikfast/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2s7s300_ikfast/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/m1n6s300_ikfast/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/mavros/test_mavros/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/voxel_grid/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/costmap_2d/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/costmap_converter/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/nav_core/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/base_local_planner/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/carrot_planner/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/clear_costmap_recovery/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/dwa_local_planner/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/move_base_flex/mbf_costmap_core/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/move_base_flex/mbf_costmap_nav/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/move_slow_and_clear/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/navfn/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/global_planner/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/rotate_recovery/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/navigation/move_base/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/teb_local_planner/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_base_common/rb1_base_navigation/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_moveit/kinova_arm_moveit_demo/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_description/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_moveit/robot_configs/j2n6s300_moveit_config/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_moveit/robot_configs/j2s6s300_moveit_config/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_moveit/robot_configs/j2s7s300_moveit_config/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/kinova-ros/kinova_moveit/robot_configs/m1n6s300_moveit_config/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/robotnik_sensors/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_base_sim/rb1_base_gazebo/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_common/rb1_torso_description/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_common/rb1_description/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_sim/rb1_gazebo/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1_common/rb1_j2s7s200_moveit_config/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1/rb1_common/rb1_jaco_3fg_moveit_config/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1/rb1_common/rb1_mico_3fg_moveit_config/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1/rb1_common/rb1_moveit_config/cmake_install.cmake")
  include("/home/mayco/catkin_ws/build/rb1/rb1m_moveit_config/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/mayco/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
