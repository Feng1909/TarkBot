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

# Utility rule file for face_data.

# Include the progress variables for this target.
include tarkbot_demo/opencv_apps/test/CMakeFiles/face_data.dir/progress.make

tarkbot_demo/opencv_apps/test/CMakeFiles/face_data: /home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/test/face_data


/home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/test/face_data: /home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/test/face_data.tar.gz
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/nuc_1/TarkBot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Extracting face_data.tar.gz"
	cd /home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/test && /usr/bin/cmake -E tar zxf face_data.tar.gz

face_data: tarkbot_demo/opencv_apps/test/CMakeFiles/face_data
face_data: /home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/test/face_data
face_data: tarkbot_demo/opencv_apps/test/CMakeFiles/face_data.dir/build.make

.PHONY : face_data

# Rule to build all files generated by this target.
tarkbot_demo/opencv_apps/test/CMakeFiles/face_data.dir/build: face_data

.PHONY : tarkbot_demo/opencv_apps/test/CMakeFiles/face_data.dir/build

tarkbot_demo/opencv_apps/test/CMakeFiles/face_data.dir/clean:
	cd /home/nuc_1/TarkBot/build/tarkbot_demo/opencv_apps/test && $(CMAKE_COMMAND) -P CMakeFiles/face_data.dir/cmake_clean.cmake
.PHONY : tarkbot_demo/opencv_apps/test/CMakeFiles/face_data.dir/clean

tarkbot_demo/opencv_apps/test/CMakeFiles/face_data.dir/depend:
	cd /home/nuc_1/TarkBot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc_1/TarkBot/src /home/nuc_1/TarkBot/src/tarkbot_demo/opencv_apps/test /home/nuc_1/TarkBot/build /home/nuc_1/TarkBot/build/tarkbot_demo/opencv_apps/test /home/nuc_1/TarkBot/build/tarkbot_demo/opencv_apps/test/CMakeFiles/face_data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tarkbot_demo/opencv_apps/test/CMakeFiles/face_data.dir/depend
