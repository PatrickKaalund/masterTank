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
CMAKE_SOURCE_DIR = /home/plinux/RosPacks/masterTank/src/navigation/voxel_grid

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/plinux/RosPacks/masterTank/build_isolated/voxel_grid

# Include any dependencies generated for this target.
include CMakeFiles/voxel_grid_tests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/voxel_grid_tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/voxel_grid_tests.dir/flags.make

CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o: CMakeFiles/voxel_grid_tests.dir/flags.make
CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o: /home/plinux/RosPacks/masterTank/src/navigation/voxel_grid/test/voxel_grid_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/plinux/RosPacks/masterTank/build_isolated/voxel_grid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o -c /home/plinux/RosPacks/masterTank/src/navigation/voxel_grid/test/voxel_grid_tests.cpp

CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/plinux/RosPacks/masterTank/src/navigation/voxel_grid/test/voxel_grid_tests.cpp > CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.i

CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/plinux/RosPacks/masterTank/src/navigation/voxel_grid/test/voxel_grid_tests.cpp -o CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.s

CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o.requires:

.PHONY : CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o.requires

CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o.provides: CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o.requires
	$(MAKE) -f CMakeFiles/voxel_grid_tests.dir/build.make CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o.provides.build
.PHONY : CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o.provides

CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o.provides.build: CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o


# Object files for target voxel_grid_tests
voxel_grid_tests_OBJECTS = \
"CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o"

# External object files for target voxel_grid_tests
voxel_grid_tests_EXTERNAL_OBJECTS =

/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: CMakeFiles/voxel_grid_tests.dir/build.make
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: gtest/libgtest.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/libvoxel_grid.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/libroscpp.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/librosconsole.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/librostime.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /opt/ros/kinetic/lib/libcpp_common.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests: CMakeFiles/voxel_grid_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/plinux/RosPacks/masterTank/build_isolated/voxel_grid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/voxel_grid_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/voxel_grid_tests.dir/build: /home/plinux/RosPacks/masterTank/devel_isolated/voxel_grid/lib/voxel_grid/voxel_grid_tests

.PHONY : CMakeFiles/voxel_grid_tests.dir/build

CMakeFiles/voxel_grid_tests.dir/requires: CMakeFiles/voxel_grid_tests.dir/test/voxel_grid_tests.cpp.o.requires

.PHONY : CMakeFiles/voxel_grid_tests.dir/requires

CMakeFiles/voxel_grid_tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/voxel_grid_tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/voxel_grid_tests.dir/clean

CMakeFiles/voxel_grid_tests.dir/depend:
	cd /home/plinux/RosPacks/masterTank/build_isolated/voxel_grid && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/plinux/RosPacks/masterTank/src/navigation/voxel_grid /home/plinux/RosPacks/masterTank/src/navigation/voxel_grid /home/plinux/RosPacks/masterTank/build_isolated/voxel_grid /home/plinux/RosPacks/masterTank/build_isolated/voxel_grid /home/plinux/RosPacks/masterTank/build_isolated/voxel_grid/CMakeFiles/voxel_grid_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/voxel_grid_tests.dir/depend

