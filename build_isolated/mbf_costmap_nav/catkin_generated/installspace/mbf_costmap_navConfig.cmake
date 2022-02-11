# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(mbf_costmap_nav_CONFIG_INCLUDED)
  return()
endif()
set(mbf_costmap_nav_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(mbf_costmap_nav_SOURCE_PREFIX /home/mayco/catkin_ws/src/move_base_flex/mbf_costmap_nav)
  set(mbf_costmap_nav_DEVEL_PREFIX /home/mayco/catkin_ws/devel_isolated/mbf_costmap_nav)
  set(mbf_costmap_nav_INSTALL_PREFIX "")
  set(mbf_costmap_nav_PREFIX ${mbf_costmap_nav_DEVEL_PREFIX})
else()
  set(mbf_costmap_nav_SOURCE_PREFIX "")
  set(mbf_costmap_nav_DEVEL_PREFIX "")
  set(mbf_costmap_nav_INSTALL_PREFIX /home/mayco/catkin_ws/install_isolated)
  set(mbf_costmap_nav_PREFIX ${mbf_costmap_nav_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'mbf_costmap_nav' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(mbf_costmap_nav_FOUND_CATKIN_PROJECT TRUE)

if(NOT "include;/usr/include " STREQUAL " ")
  set(mbf_costmap_nav_INCLUDE_DIRS "")
  set(_include_dirs "include;/usr/include")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "http://wiki.ros.org/move_base_flex " STREQUAL " ")
    set(_report "Check the website 'http://wiki.ros.org/move_base_flex' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Sebastian Pütz <spuetz@uos.de>, Jorge Santos <santos@magazino.eu>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${mbf_costmap_nav_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'mbf_costmap_nav' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'mbf_costmap_nav' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '\${prefix}/${idir}'.  ${_report}")
    endif()
    _list_append_unique(mbf_costmap_nav_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "mbf_costmap_server;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libpthread.so")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND mbf_costmap_nav_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND mbf_costmap_nav_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT mbf_costmap_nav_NUM_DUMMY_TARGETS)
      set(mbf_costmap_nav_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::mbf_costmap_nav::wrapped-linker-option${mbf_costmap_nav_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR mbf_costmap_nav_NUM_DUMMY_TARGETS "${mbf_costmap_nav_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::mbf_costmap_nav::wrapped-linker-option${mbf_costmap_nav_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND mbf_costmap_nav_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND mbf_costmap_nav_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND mbf_costmap_nav_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/mayco/catkin_ws/install_isolated/lib;/home/mayco/catkin_ws/devel_isolated/mbf_costmap_core/lib;/home/mayco/catkin_ws/devel_isolated/dwa_local_planner/lib;/home/mayco/catkin_ws/devel_isolated/clear_costmap_recovery/lib;/home/mayco/catkin_ws/devel_isolated/carrot_planner/lib;/home/mayco/catkin_ws/devel_isolated/base_local_planner/lib;/home/mayco/catkin_ws/devel_isolated/nav_core/lib;/home/mayco/catkin_ws/devel_isolated/costmap_converter/lib;/home/mayco/catkin_ws/devel_isolated/costmap_2d/lib;/home/mayco/catkin_ws/devel_isolated/voxel_grid/lib;/home/mayco/catkin_ws/devel_isolated/geodesy/lib;/home/mayco/catkin_ws/devel_isolated/unique_id/lib;/home/mayco/catkin_ws/devel_isolated/test_mavros/lib;/home/mayco/catkin_ws/devel_isolated/rb1_base_localization/lib;/home/mayco/catkin_ws/devel_isolated/robot_localization/lib;/home/mayco/catkin_ws/devel_isolated/mavros_extras/lib;/home/mayco/catkin_ws/devel_isolated/mavros/lib;/home/mayco/catkin_ws/devel_isolated/mavros_msgs/lib;/home/mayco/catkin_ws/devel_isolated/geographic_msgs/lib;/home/mayco/catkin_ws/devel_isolated/uuid_msgs/lib;/home/mayco/catkin_ws/devel_isolated/unique_identifier/lib;/home/mayco/catkin_ws/devel_isolated/rb1_gazebo/lib;/home/mayco/catkin_ws/devel_isolated/rb1_base_gazebo/lib;/home/mayco/catkin_ws/devel_isolated/rb1_base_control/lib;/home/mayco/catkin_ws/devel_isolated/twist_mux/lib;/home/mayco/catkin_ws/devel_isolated/tf2_tools/lib;/home/mayco/catkin_ws/devel_isolated/tf2_sensor_msgs/lib;/home/mayco/catkin_ws/devel_isolated/test_tf2/lib;/home/mayco/catkin_ws/devel_isolated/tf2_kdl/lib;/home/mayco/catkin_ws/devel_isolated/mbf_simple_nav/lib;/home/mayco/catkin_ws/devel_isolated/mbf_abstract_nav/lib;/home/mayco/catkin_ws/devel_isolated/mbf_utility/lib;/home/mayco/catkin_ws/devel_isolated/imu_filter_madgwick/lib;/home/mayco/catkin_ws/devel_isolated/fake_localization/lib;/home/mayco/catkin_ws/devel_isolated/amcl/lib;/home/mayco/catkin_ws/devel_isolated/tf2_geometry_msgs/lib;/home/mayco/catkin_ws/devel_isolated/tf2_ros/lib;/home/mayco/catkin_ws/devel_isolated/tf2_py/lib;/home/mayco/catkin_ws/devel_isolated/tf2_eigen/lib;/home/mayco/catkin_ws/devel_isolated/tf2_bullet/lib;/home/mayco/catkin_ws/devel_isolated/map_server/lib;/home/mayco/catkin_ws/devel_isolated/tf2/lib;/home/mayco/catkin_ws/devel_isolated/tf2_msgs/lib;/home/mayco/catkin_ws/devel_isolated/rviz_imu_plugin/lib;/home/mayco/catkin_ws/devel_isolated/basicmodutil_pkg/lib;/home/mayco/catkin_ws/devel_isolated/rospy_message_converter/lib;/home/mayco/catkin_ws/devel_isolated/rb1m_moveit_config/lib;/home/mayco/catkin_ws/devel_isolated/rb1_moveit_config/lib;/home/mayco/catkin_ws/devel_isolated/rb1_mico_3fg_moveit_config/lib;/home/mayco/catkin_ws/devel_isolated/rb1_jaco_3fg_moveit_config/lib;/home/mayco/catkin_ws/devel_isolated/rb1_j2s7s200_moveit_config/lib;/home/mayco/catkin_ws/devel_isolated/rb1_description/lib;/home/mayco/catkin_ws/devel_isolated/rb1_torso_description/lib;/home/mayco/catkin_ws/devel_isolated/robotnik_sensors/lib;/home/mayco/catkin_ws/devel_isolated/rb1_torso_pad/lib;/home/mayco/catkin_ws/devel_isolated/rb1_pad/lib;/home/mayco/catkin_ws/devel_isolated/rb1_base_pad/lib;/home/mayco/catkin_ws/devel_isolated/robotnik_msgs/lib;/home/mayco/catkin_ws/devel_isolated/rb1_torso_control/lib;/home/mayco/catkin_ws/devel_isolated/rb1_sim_bringup/lib;/home/mayco/catkin_ws/devel_isolated/rb1_sim/lib;/home/mayco/catkin_ws/devel_isolated/rb1_control/lib;/home/mayco/catkin_ws/devel_isolated/rb1_common/lib;/home/mayco/catkin_ws/devel_isolated/rb1_base_sim_bringup/lib;/home/mayco/catkin_ws/devel_isolated/rb1_base_sim/lib;/home/mayco/catkin_ws/devel_isolated/rb1_base_description/lib;/home/mayco/catkin_ws/devel_isolated/rb1_base_common/lib;/home/mayco/catkin_ws/devel_isolated/rb1_arm_gazebo/lib;/home/mayco/catkin_ws/devel_isolated/rb1_arm_control/lib;/home/mayco/catkin_ws/devel_isolated/rb1_arm_joystick/lib;/home/mayco/catkin_ws/devel_isolated/rb1_arm_description/lib;/home/mayco/catkin_ws/devel_isolated/navigation/lib;/home/mayco/catkin_ws/devel_isolated/move_base_flex/lib;/home/mayco/catkin_ws/devel_isolated/mico_pad/lib;/home/mayco/catkin_ws/devel_isolated/mico_moveit_config/lib;/home/mayco/catkin_ws/devel_isolated/mico_description/lib;/home/mayco/catkin_ws/devel_isolated/mico_common/lib;/home/mayco/catkin_ws/devel_isolated/mbf_msgs/lib;/home/mayco/catkin_ws/devel_isolated/mbf_abstract_core/lib;/home/mayco/catkin_ws/devel_isolated/m1n6s300_moveit_config/lib;/home/mayco/catkin_ws/devel_isolated/m1n6s300_ikfast/lib;/home/mayco/catkin_ws/devel_isolated/libmavconn/lib;/home/mayco/catkin_ws/devel_isolated/kinova_demo/lib;/home/mayco/catkin_ws/devel_isolated/kinova_arm_moveit_demo/lib;/home/mayco/catkin_ws/devel_isolated/kinova_driver/lib;/home/mayco/catkin_ws/devel_isolated/kinova_msgs/lib;/home/mayco/catkin_ws/devel_isolated/kinova_gazebo/lib;/home/mayco/catkin_ws/devel_isolated/j2s7s300_moveit_config/lib;/home/mayco/catkin_ws/devel_isolated/j2s6s300_moveit_config/lib;/home/mayco/catkin_ws/devel_isolated/j2n6s300_moveit_config/lib;/home/mayco/catkin_ws/devel_isolated/kinova_description/lib;/home/mayco/catkin_ws/devel_isolated/kinova_control/lib;/home/mayco/catkin_ws/devel_isolated/kinova_bringup/lib;/home/mayco/catkin_ws/devel_isolated/j2s7s300_ikfast/lib;/home/mayco/catkin_ws/devel_isolated/j2s6s300_ikfast/lib;/home/mayco/catkin_ws/devel_isolated/j2n6s300_ikfast/lib;/home/mayco/catkin_ws/devel_isolated/imu_tools/lib;/home/mayco/catkin_ws/devel_isolated/imu_complementary_filter/lib;/home/mayco/catkin_ws/devel_isolated/geometry2/lib;/home/mayco/catkin_ws/devel_isolated/geographic_info/lib;/home/mayco/catkin_ws/devel/lib;/opt/ros/melodic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(mbf_costmap_nav_LIBRARY_DIRS ${lib_path})
      list(APPEND mbf_costmap_nav_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'mbf_costmap_nav'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND mbf_costmap_nav_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(mbf_costmap_nav_EXPORTED_TARGETS "mbf_costmap_nav_gencfg")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${mbf_costmap_nav_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "actionlib;actionlib_msgs;costmap_2d;dynamic_reconfigure;geometry_msgs;mbf_abstract_nav;mbf_costmap_core;mbf_msgs;mbf_utility;nav_core;nav_msgs;pluginlib;roscpp;std_msgs;std_srvs;tf")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 mbf_costmap_nav_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${mbf_costmap_nav_dep}_FOUND)
      find_package(${mbf_costmap_nav_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${mbf_costmap_nav_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(mbf_costmap_nav_INCLUDE_DIRS ${${mbf_costmap_nav_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(mbf_costmap_nav_LIBRARIES ${mbf_costmap_nav_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${mbf_costmap_nav_dep}_LIBRARIES})
  _list_append_deduplicate(mbf_costmap_nav_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(mbf_costmap_nav_LIBRARIES ${mbf_costmap_nav_LIBRARIES})

  _list_append_unique(mbf_costmap_nav_LIBRARY_DIRS ${${mbf_costmap_nav_dep}_LIBRARY_DIRS})
  list(APPEND mbf_costmap_nav_EXPORTED_TARGETS ${${mbf_costmap_nav_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${mbf_costmap_nav_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
