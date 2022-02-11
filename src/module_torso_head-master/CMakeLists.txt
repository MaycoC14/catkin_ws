cmake_minimum_required(VERSION 2.8.3)
project(module_torso_head)

find_package(catkin REQUIRED COMPONENTS
  basicmodutil_pkg
  geometry_msgs
  roscpp
  roslib
  rospy
  std_msgs
)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS basicmodutil_pkg geometry_msgs roscpp roslib rospy std_msgs
)

set(CMAKE_BUILD_TYPE Release)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(module_torso_head_node src/module_torso_head_node.cpp src/module_torso_head.cpp)
add_dependencies(module_torso_head_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(module_torso_head_node
   ${catkin_LIBRARIES}
   ${Eigen_LIBRARIES}
)
install(TARGETS module_torso_head_node DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
install(DIRECTORY include/module_torso_head/ DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION})

