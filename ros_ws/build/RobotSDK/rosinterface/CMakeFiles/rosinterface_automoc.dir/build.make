# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /root/ros_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/ros_ws/build

# Utility rule file for rosinterface_automoc.

# Include the progress variables for this target.
include RobotSDK/rosinterface/CMakeFiles/rosinterface_automoc.dir/progress.make

RobotSDK/rosinterface/CMakeFiles/rosinterface_automoc:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic moc for target rosinterface"
	cd /root/ros_ws/build/RobotSDK/rosinterface && /usr/bin/cmake -E cmake_autogen /root/ros_ws/build/RobotSDK/rosinterface/CMakeFiles/rosinterface_automoc.dir/ ""

rosinterface_automoc: RobotSDK/rosinterface/CMakeFiles/rosinterface_automoc
rosinterface_automoc: RobotSDK/rosinterface/CMakeFiles/rosinterface_automoc.dir/build.make

.PHONY : rosinterface_automoc

# Rule to build all files generated by this target.
RobotSDK/rosinterface/CMakeFiles/rosinterface_automoc.dir/build: rosinterface_automoc

.PHONY : RobotSDK/rosinterface/CMakeFiles/rosinterface_automoc.dir/build

RobotSDK/rosinterface/CMakeFiles/rosinterface_automoc.dir/clean:
	cd /root/ros_ws/build/RobotSDK/rosinterface && $(CMAKE_COMMAND) -P CMakeFiles/rosinterface_automoc.dir/cmake_clean.cmake
.PHONY : RobotSDK/rosinterface/CMakeFiles/rosinterface_automoc.dir/clean

RobotSDK/rosinterface/CMakeFiles/rosinterface_automoc.dir/depend:
	cd /root/ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/ros_ws/src /root/ros_ws/src/RobotSDK/rosinterface /root/ros_ws/build /root/ros_ws/build/RobotSDK/rosinterface /root/ros_ws/build/RobotSDK/rosinterface/CMakeFiles/rosinterface_automoc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : RobotSDK/rosinterface/CMakeFiles/rosinterface_automoc.dir/depend

