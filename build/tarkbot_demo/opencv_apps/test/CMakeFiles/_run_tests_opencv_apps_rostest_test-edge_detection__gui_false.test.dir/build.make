# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nuc_1/TarkBot/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuc_1/TarkBot/build

# Utility rule file for _run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test.

# Include the progress variables for this target.
include tarkbot_demo/opencv_apps/test/CMakeFiles/_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test.dir/progress.make

tarkbot_demo/opencv_apps/test/CMakeFiles/_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test:
	cd /home/nuc_1/TarkBot/build/tarkbot_demo/opencv_apps/test && ../../../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/run_tests.py /home/nuc_1/TarkBot/build/test_results/opencv_apps/rostest-test-edge_detection__gui_false.xml "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps --package=opencv_apps --results-filename test-edge_detection__gui_false.xml --results-base-dir \"/home/nuc_1/TarkBot/build/test_results\" /home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/test/test-edge_detection.test gui:=false"

_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test: tarkbot_demo/opencv_apps/test/CMakeFiles/_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test
_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test: tarkbot_demo/opencv_apps/test/CMakeFiles/_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test.dir/build.make

.PHONY : _run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test

# Rule to build all files generated by this target.
tarkbot_demo/opencv_apps/test/CMakeFiles/_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test.dir/build: _run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test

.PHONY : tarkbot_demo/opencv_apps/test/CMakeFiles/_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test.dir/build

tarkbot_demo/opencv_apps/test/CMakeFiles/_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test.dir/clean:
	cd /home/nuc_1/TarkBot/build/tarkbot_demo/opencv_apps/test && $(CMAKE_COMMAND) -P CMakeFiles/_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test.dir/cmake_clean.cmake
.PHONY : tarkbot_demo/opencv_apps/test/CMakeFiles/_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test.dir/clean

tarkbot_demo/opencv_apps/test/CMakeFiles/_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test.dir/depend:
	cd /home/nuc_1/TarkBot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc_1/TarkBot/src /home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/test /home/nuc_1/TarkBot/build /home/nuc_1/TarkBot/build/tarkbot_demo/opencv_apps/test /home/nuc_1/TarkBot/build/tarkbot_demo/opencv_apps/test/CMakeFiles/_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tarkbot_demo/opencv_apps/test/CMakeFiles/_run_tests_opencv_apps_rostest_test-edge_detection__gui_false.test.dir/depend

