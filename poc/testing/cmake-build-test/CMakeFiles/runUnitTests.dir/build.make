# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /opt/clion/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ziv/Code/poc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ziv/Code/poc/cmake-build-test

# Include any dependencies generated for this target.
include CMakeFiles/runUnitTests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/runUnitTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/runUnitTests.dir/flags.make

CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o: ../test/GtestMain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ziv/Code/poc/cmake-build-test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o -c /home/ziv/Code/poc/test/GtestMain.cpp

CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ziv/Code/poc/test/GtestMain.cpp > CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.i

CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ziv/Code/poc/test/GtestMain.cpp -o CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.s

CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o.requires:

.PHONY : CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o.requires

CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o.provides: CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o.requires
	$(MAKE) -f CMakeFiles/runUnitTests.dir/build.make CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o.provides.build
.PHONY : CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o.provides

CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o.provides.build: CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o


CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o: ../test/LighterBrainTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ziv/Code/poc/cmake-build-test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o -c /home/ziv/Code/poc/test/LighterBrainTests.cpp

CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ziv/Code/poc/test/LighterBrainTests.cpp > CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.i

CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ziv/Code/poc/test/LighterBrainTests.cpp -o CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.s

CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o.requires:

.PHONY : CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o.requires

CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o.provides: CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o.requires
	$(MAKE) -f CMakeFiles/runUnitTests.dir/build.make CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o.provides.build
.PHONY : CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o.provides

CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o.provides.build: CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o


CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o: CMakeFiles/runUnitTests.dir/flags.make
CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o: ../src/master/LighterBrain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ziv/Code/poc/cmake-build-test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o -c /home/ziv/Code/poc/src/master/LighterBrain.cpp

CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ziv/Code/poc/src/master/LighterBrain.cpp > CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.i

CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ziv/Code/poc/src/master/LighterBrain.cpp -o CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.s

CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o.requires:

.PHONY : CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o.requires

CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o.provides: CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o.requires
	$(MAKE) -f CMakeFiles/runUnitTests.dir/build.make CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o.provides.build
.PHONY : CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o.provides

CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o.provides.build: CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o


# Object files for target runUnitTests
runUnitTests_OBJECTS = \
"CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o" \
"CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o" \
"CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o"

# External object files for target runUnitTests
runUnitTests_EXTERNAL_OBJECTS =

runUnitTests: CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o
runUnitTests: CMakeFiles/runUnitTests.dir/build.make
runUnitTests: googletest/googletest/libgtest.a
runUnitTests: CMakeFiles/runUnitTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ziv/Code/poc/cmake-build-test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable runUnitTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runUnitTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/runUnitTests.dir/build: runUnitTests

.PHONY : CMakeFiles/runUnitTests.dir/build

CMakeFiles/runUnitTests.dir/requires: CMakeFiles/runUnitTests.dir/test/GtestMain.cpp.o.requires
CMakeFiles/runUnitTests.dir/requires: CMakeFiles/runUnitTests.dir/test/LighterBrainTests.cpp.o.requires
CMakeFiles/runUnitTests.dir/requires: CMakeFiles/runUnitTests.dir/src/master/LighterBrain.cpp.o.requires

.PHONY : CMakeFiles/runUnitTests.dir/requires

CMakeFiles/runUnitTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/runUnitTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/runUnitTests.dir/clean

CMakeFiles/runUnitTests.dir/depend:
	cd /home/ziv/Code/poc/cmake-build-test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ziv/Code/poc /home/ziv/Code/poc /home/ziv/Code/poc/cmake-build-test /home/ziv/Code/poc/cmake-build-test /home/ziv/Code/poc/cmake-build-test/CMakeFiles/runUnitTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/runUnitTests.dir/depend
