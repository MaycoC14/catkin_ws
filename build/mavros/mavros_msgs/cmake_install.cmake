# Install script for directory: /home/mayco/catkin_ws/src/mavros/mavros_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros_msgs/msg" TYPE FILE FILES
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/ADSBVehicle.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/ActuatorControl.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/Altitude.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/AttitudeTarget.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/BatteryStatus.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/CamIMUStamp.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/CameraImageCaptured.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/CommandCode.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/CompanionProcessStatus.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/OnboardComputerStatus.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/DebugValue.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/ESCInfo.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/ESCInfoItem.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/ESCStatus.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/ESCStatusItem.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/ESCTelemetry.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/ESCTelemetryItem.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/EstimatorStatus.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/ExtendedState.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/FileEntry.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/GlobalPositionTarget.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/GPSINPUT.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/GPSRAW.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/GPSRTK.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/HilActuatorControls.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/HilControls.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/HilGPS.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/HilSensor.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/HilStateQuaternion.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/HomePosition.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/LandingTarget.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/LogData.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/LogEntry.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/MagnetometerReporter.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/ManualControl.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/Mavlink.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/MountControl.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/NavControllerOutput.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/OpticalFlowRad.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/OverrideRCIn.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/Param.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/ParamValue.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/PlayTuneV2.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/PositionTarget.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/RCIn.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/RCOut.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/RTCM.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/RadioStatus.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/RTKBaseline.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/State.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/StatusText.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/TerrainReport.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/Thrust.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/TimesyncStatus.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/Trajectory.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/Tunnel.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/VFR_HUD.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/VehicleInfo.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/Vibration.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/Waypoint.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/WaypointList.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/WaypointReached.msg"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/msg/WheelOdomStamped.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros_msgs/srv" TYPE FILE FILES
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/CommandAck.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/CommandBool.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/CommandHome.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/CommandInt.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/CommandLong.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/CommandTOL.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/CommandTriggerControl.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/CommandTriggerInterval.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/CommandVtolTransition.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/FileChecksum.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/FileClose.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/FileList.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/FileMakeDir.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/FileOpen.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/FileRead.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/FileRemove.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/FileRemoveDir.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/FileRename.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/FileTruncate.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/FileWrite.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/LogRequestData.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/LogRequestEnd.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/LogRequestList.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/MountConfigure.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/MessageInterval.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/ParamGet.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/ParamPull.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/ParamPush.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/ParamSet.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/SetMavFrame.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/SetMode.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/StreamRate.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/VehicleInfoGet.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/WaypointClear.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/WaypointPull.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/WaypointPush.srv"
    "/home/mayco/catkin_ws/src/mavros/mavros_msgs/srv/WaypointSetCurrent.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros_msgs/cmake" TYPE FILE FILES "/home/mayco/catkin_ws/build/mavros/mavros_msgs/catkin_generated/installspace/mavros_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mayco/catkin_ws/devel/include/mavros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mayco/catkin_ws/devel/share/roseus/ros/mavros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mayco/catkin_ws/devel/share/common-lisp/ros/mavros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mayco/catkin_ws/devel/share/gennodejs/ros/mavros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/mayco/catkin_ws/devel/lib/python2.7/dist-packages/mavros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/mayco/catkin_ws/devel/lib/python2.7/dist-packages/mavros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mayco/catkin_ws/build/mavros/mavros_msgs/catkin_generated/installspace/mavros_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros_msgs/cmake" TYPE FILE FILES "/home/mayco/catkin_ws/build/mavros/mavros_msgs/catkin_generated/installspace/mavros_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros_msgs/cmake" TYPE FILE FILES
    "/home/mayco/catkin_ws/build/mavros/mavros_msgs/catkin_generated/installspace/mavros_msgsConfig.cmake"
    "/home/mayco/catkin_ws/build/mavros/mavros_msgs/catkin_generated/installspace/mavros_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros_msgs" TYPE FILE FILES "/home/mayco/catkin_ws/src/mavros/mavros_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mavros_msgs" TYPE DIRECTORY FILES "/home/mayco/catkin_ws/src/mavros/mavros_msgs/include/mavros_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

