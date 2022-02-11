# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rb1_arm_joystick: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irb1_arm_joystick:/home/mayco/catkin_ws/src/rb1_sim/rb1_arm_joystick/msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rb1_arm_joystick_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mayco/catkin_ws/src/rb1_sim/rb1_arm_joystick/msg/ArmRefRb1.msg" NAME_WE)
add_custom_target(_rb1_arm_joystick_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rb1_arm_joystick" "/home/mayco/catkin_ws/src/rb1_sim/rb1_arm_joystick/msg/ArmRefRb1.msg" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rb1_arm_joystick
  "/home/mayco/catkin_ws/src/rb1_sim/rb1_arm_joystick/msg/ArmRefRb1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rb1_arm_joystick
)

### Generating Services

### Generating Module File
_generate_module_cpp(rb1_arm_joystick
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rb1_arm_joystick
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rb1_arm_joystick_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rb1_arm_joystick_generate_messages rb1_arm_joystick_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mayco/catkin_ws/src/rb1_sim/rb1_arm_joystick/msg/ArmRefRb1.msg" NAME_WE)
add_dependencies(rb1_arm_joystick_generate_messages_cpp _rb1_arm_joystick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rb1_arm_joystick_gencpp)
add_dependencies(rb1_arm_joystick_gencpp rb1_arm_joystick_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rb1_arm_joystick_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rb1_arm_joystick
  "/home/mayco/catkin_ws/src/rb1_sim/rb1_arm_joystick/msg/ArmRefRb1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rb1_arm_joystick
)

### Generating Services

### Generating Module File
_generate_module_eus(rb1_arm_joystick
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rb1_arm_joystick
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rb1_arm_joystick_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rb1_arm_joystick_generate_messages rb1_arm_joystick_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mayco/catkin_ws/src/rb1_sim/rb1_arm_joystick/msg/ArmRefRb1.msg" NAME_WE)
add_dependencies(rb1_arm_joystick_generate_messages_eus _rb1_arm_joystick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rb1_arm_joystick_geneus)
add_dependencies(rb1_arm_joystick_geneus rb1_arm_joystick_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rb1_arm_joystick_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rb1_arm_joystick
  "/home/mayco/catkin_ws/src/rb1_sim/rb1_arm_joystick/msg/ArmRefRb1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rb1_arm_joystick
)

### Generating Services

### Generating Module File
_generate_module_lisp(rb1_arm_joystick
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rb1_arm_joystick
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rb1_arm_joystick_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rb1_arm_joystick_generate_messages rb1_arm_joystick_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mayco/catkin_ws/src/rb1_sim/rb1_arm_joystick/msg/ArmRefRb1.msg" NAME_WE)
add_dependencies(rb1_arm_joystick_generate_messages_lisp _rb1_arm_joystick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rb1_arm_joystick_genlisp)
add_dependencies(rb1_arm_joystick_genlisp rb1_arm_joystick_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rb1_arm_joystick_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rb1_arm_joystick
  "/home/mayco/catkin_ws/src/rb1_sim/rb1_arm_joystick/msg/ArmRefRb1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rb1_arm_joystick
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rb1_arm_joystick
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rb1_arm_joystick
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rb1_arm_joystick_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rb1_arm_joystick_generate_messages rb1_arm_joystick_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mayco/catkin_ws/src/rb1_sim/rb1_arm_joystick/msg/ArmRefRb1.msg" NAME_WE)
add_dependencies(rb1_arm_joystick_generate_messages_nodejs _rb1_arm_joystick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rb1_arm_joystick_gennodejs)
add_dependencies(rb1_arm_joystick_gennodejs rb1_arm_joystick_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rb1_arm_joystick_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rb1_arm_joystick
  "/home/mayco/catkin_ws/src/rb1_sim/rb1_arm_joystick/msg/ArmRefRb1.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rb1_arm_joystick
)

### Generating Services

### Generating Module File
_generate_module_py(rb1_arm_joystick
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rb1_arm_joystick
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rb1_arm_joystick_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rb1_arm_joystick_generate_messages rb1_arm_joystick_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mayco/catkin_ws/src/rb1_sim/rb1_arm_joystick/msg/ArmRefRb1.msg" NAME_WE)
add_dependencies(rb1_arm_joystick_generate_messages_py _rb1_arm_joystick_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rb1_arm_joystick_genpy)
add_dependencies(rb1_arm_joystick_genpy rb1_arm_joystick_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rb1_arm_joystick_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rb1_arm_joystick)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rb1_arm_joystick
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(rb1_arm_joystick_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rb1_arm_joystick_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rb1_arm_joystick)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rb1_arm_joystick
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(rb1_arm_joystick_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rb1_arm_joystick_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rb1_arm_joystick)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rb1_arm_joystick
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(rb1_arm_joystick_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rb1_arm_joystick_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rb1_arm_joystick)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rb1_arm_joystick
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(rb1_arm_joystick_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rb1_arm_joystick_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rb1_arm_joystick)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rb1_arm_joystick\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rb1_arm_joystick
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(rb1_arm_joystick_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rb1_arm_joystick_generate_messages_py geometry_msgs_generate_messages_py)
endif()
