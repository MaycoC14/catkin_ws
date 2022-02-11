# CMake generated Testfile for 
# Source directory: /home/mayco/catkin_ws/src/twist_mux
# Build directory: /home/mayco/catkin_ws/build_isolated/twist_mux
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_twist_mux_rostest_test_system.test "/home/mayco/catkin_ws/build_isolated/twist_mux/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/mayco/catkin_ws/build_isolated/twist_mux/test_results/twist_mux/rostest-test_system.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/mayco/catkin_ws/src/twist_mux --package=twist_mux --results-filename test_system.xml --results-base-dir \"/home/mayco/catkin_ws/build_isolated/twist_mux/test_results\" /home/mayco/catkin_ws/src/twist_mux/test/system.test ")
subdirs("gtest")
