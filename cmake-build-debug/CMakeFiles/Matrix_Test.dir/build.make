# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/leaves/CLionProjects/MatrixMultiplication

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Matrix_Test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Matrix_Test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Matrix_Test.dir/flags.make

CMakeFiles/Matrix_Test.dir/Matrix_Test.cpp.o: CMakeFiles/Matrix_Test.dir/flags.make
CMakeFiles/Matrix_Test.dir/Matrix_Test.cpp.o: ../Matrix_Test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Matrix_Test.dir/Matrix_Test.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Matrix_Test.dir/Matrix_Test.cpp.o -c /Users/leaves/CLionProjects/MatrixMultiplication/Matrix_Test.cpp

CMakeFiles/Matrix_Test.dir/Matrix_Test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Matrix_Test.dir/Matrix_Test.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/leaves/CLionProjects/MatrixMultiplication/Matrix_Test.cpp > CMakeFiles/Matrix_Test.dir/Matrix_Test.cpp.i

CMakeFiles/Matrix_Test.dir/Matrix_Test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Matrix_Test.dir/Matrix_Test.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/leaves/CLionProjects/MatrixMultiplication/Matrix_Test.cpp -o CMakeFiles/Matrix_Test.dir/Matrix_Test.cpp.s

# Object files for target Matrix_Test
Matrix_Test_OBJECTS = \
"CMakeFiles/Matrix_Test.dir/Matrix_Test.cpp.o"

# External object files for target Matrix_Test
Matrix_Test_EXTERNAL_OBJECTS =

Matrix_Test: CMakeFiles/Matrix_Test.dir/Matrix_Test.cpp.o
Matrix_Test: CMakeFiles/Matrix_Test.dir/build.make
Matrix_Test: lib/libgtest_maind.a
Matrix_Test: lib/libgtestd.a
Matrix_Test: CMakeFiles/Matrix_Test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Matrix_Test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Matrix_Test.dir/link.txt --verbose=$(VERBOSE)
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -D TEST_TARGET=Matrix_Test -D TEST_EXECUTABLE=/Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug/Matrix_Test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=Matrix_Test_TESTS -D CTEST_FILE=/Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug/Matrix_Test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -P /Applications/CLion.app/Contents/bin/cmake/mac/share/cmake-3.17/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
CMakeFiles/Matrix_Test.dir/build: Matrix_Test

.PHONY : CMakeFiles/Matrix_Test.dir/build

CMakeFiles/Matrix_Test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Matrix_Test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Matrix_Test.dir/clean

CMakeFiles/Matrix_Test.dir/depend:
	cd /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/leaves/CLionProjects/MatrixMultiplication /Users/leaves/CLionProjects/MatrixMultiplication /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug /Users/leaves/CLionProjects/MatrixMultiplication/cmake-build-debug/CMakeFiles/Matrix_Test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Matrix_Test.dir/depend

