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
CMAKE_SOURCE_DIR = /home/yousong/workspace/cpp_learning/senior-detection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yousong/workspace/cpp_learning/senior-detection/build

# Include any dependencies generated for this target.
include dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/depend.make

# Include the progress variables for this target.
include dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/progress.make

# Include the compile flags for this target's objects.
include dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/flags.make

dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/processor.cc.o: dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/flags.make
dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/processor.cc.o: ../dox/scheduler/processor.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yousong/workspace/cpp_learning/senior-detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/processor.cc.o"
	cd /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cyber_scheduler_processor.dir/processor.cc.o -c /home/yousong/workspace/cpp_learning/senior-detection/dox/scheduler/processor.cc

dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/processor.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cyber_scheduler_processor.dir/processor.cc.i"
	cd /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yousong/workspace/cpp_learning/senior-detection/dox/scheduler/processor.cc > CMakeFiles/cyber_scheduler_processor.dir/processor.cc.i

dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/processor.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cyber_scheduler_processor.dir/processor.cc.s"
	cd /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yousong/workspace/cpp_learning/senior-detection/dox/scheduler/processor.cc -o CMakeFiles/cyber_scheduler_processor.dir/processor.cc.s

# Object files for target cyber_scheduler_processor
cyber_scheduler_processor_OBJECTS = \
"CMakeFiles/cyber_scheduler_processor.dir/processor.cc.o"

# External object files for target cyber_scheduler_processor
cyber_scheduler_processor_EXTERNAL_OBJECTS =

BuildProducts/opt/dox/lib/libcyber_scheduler_processor.so: dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/processor.cc.o
BuildProducts/opt/dox/lib/libcyber_scheduler_processor.so: dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/build.make
BuildProducts/opt/dox/lib/libcyber_scheduler_processor.so: BuildProducts/opt/dox/lib/libcyber_scheduler_processor_context.so
BuildProducts/opt/dox/lib/libcyber_scheduler_processor.so: dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yousong/workspace/cpp_learning/senior-detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../BuildProducts/opt/dox/lib/libcyber_scheduler_processor.so"
	cd /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cyber_scheduler_processor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/build: BuildProducts/opt/dox/lib/libcyber_scheduler_processor.so

.PHONY : dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/build

dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/clean:
	cd /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler && $(CMAKE_COMMAND) -P CMakeFiles/cyber_scheduler_processor.dir/cmake_clean.cmake
.PHONY : dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/clean

dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/depend:
	cd /home/yousong/workspace/cpp_learning/senior-detection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yousong/workspace/cpp_learning/senior-detection /home/yousong/workspace/cpp_learning/senior-detection/dox/scheduler /home/yousong/workspace/cpp_learning/senior-detection/build /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dox/scheduler/CMakeFiles/cyber_scheduler_processor.dir/depend

