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
include googletest/googletest/CMakeFiles/gtest.dir/depend.make

# Include the progress variables for this target.
include googletest/googletest/CMakeFiles/gtest.dir/progress.make

# Include the compile flags for this target's objects.
include googletest/googletest/CMakeFiles/gtest.dir/flags.make

googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: googletest/googletest/CMakeFiles/gtest.dir/flags.make
googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: ../googletest/googletest/src/gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ziv/Code/poc/cmake-build-test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o"
	cd /home/ziv/Code/poc/cmake-build-test/googletest/googletest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest.dir/src/gtest-all.cc.o -c /home/ziv/Code/poc/googletest/googletest/src/gtest-all.cc

googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/src/gtest-all.cc.i"
	cd /home/ziv/Code/poc/cmake-build-test/googletest/googletest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ziv/Code/poc/googletest/googletest/src/gtest-all.cc > CMakeFiles/gtest.dir/src/gtest-all.cc.i

googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/src/gtest-all.cc.s"
	cd /home/ziv/Code/poc/cmake-build-test/googletest/googletest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ziv/Code/poc/googletest/googletest/src/gtest-all.cc -o CMakeFiles/gtest.dir/src/gtest-all.cc.s

googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.requires:

.PHONY : googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.requires

googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.provides: googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.requires
	$(MAKE) -f googletest/googletest/CMakeFiles/gtest.dir/build.make googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.provides.build
.PHONY : googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.provides

googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.provides.build: googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o


# Object files for target gtest
gtest_OBJECTS = \
"CMakeFiles/gtest.dir/src/gtest-all.cc.o"

# External object files for target gtest
gtest_EXTERNAL_OBJECTS =

googletest/googletest/libgtest.a: googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o
googletest/googletest/libgtest.a: googletest/googletest/CMakeFiles/gtest.dir/build.make
googletest/googletest/libgtest.a: googletest/googletest/CMakeFiles/gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ziv/Code/poc/cmake-build-test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgtest.a"
	cd /home/ziv/Code/poc/cmake-build-test/googletest/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean_target.cmake
	cd /home/ziv/Code/poc/cmake-build-test/googletest/googletest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
googletest/googletest/CMakeFiles/gtest.dir/build: googletest/googletest/libgtest.a

.PHONY : googletest/googletest/CMakeFiles/gtest.dir/build

googletest/googletest/CMakeFiles/gtest.dir/requires: googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.requires

.PHONY : googletest/googletest/CMakeFiles/gtest.dir/requires

googletest/googletest/CMakeFiles/gtest.dir/clean:
	cd /home/ziv/Code/poc/cmake-build-test/googletest/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean.cmake
.PHONY : googletest/googletest/CMakeFiles/gtest.dir/clean

googletest/googletest/CMakeFiles/gtest.dir/depend:
	cd /home/ziv/Code/poc/cmake-build-test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ziv/Code/poc /home/ziv/Code/poc/googletest/googletest /home/ziv/Code/poc/cmake-build-test /home/ziv/Code/poc/cmake-build-test/googletest/googletest /home/ziv/Code/poc/cmake-build-test/googletest/googletest/CMakeFiles/gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : googletest/googletest/CMakeFiles/gtest.dir/depend

