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
include dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/depend.make

# Include the progress variables for this target.
include dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/progress.make

# Include the compile flags for this target's objects.
include dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/flags.make

dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/scheduler_factory.cc.o: dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/flags.make
dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/scheduler_factory.cc.o: ../dox/scheduler/scheduler_factory.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yousong/workspace/cpp_learning/senior-detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/scheduler_factory.cc.o"
	cd /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dox_scheduler_scheduler_factory.dir/scheduler_factory.cc.o -c /home/yousong/workspace/cpp_learning/senior-detection/dox/scheduler/scheduler_factory.cc

dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/scheduler_factory.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dox_scheduler_scheduler_factory.dir/scheduler_factory.cc.i"
	cd /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yousong/workspace/cpp_learning/senior-detection/dox/scheduler/scheduler_factory.cc > CMakeFiles/dox_scheduler_scheduler_factory.dir/scheduler_factory.cc.i

dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/scheduler_factory.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dox_scheduler_scheduler_factory.dir/scheduler_factory.cc.s"
	cd /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yousong/workspace/cpp_learning/senior-detection/dox/scheduler/scheduler_factory.cc -o CMakeFiles/dox_scheduler_scheduler_factory.dir/scheduler_factory.cc.s

# Object files for target dox_scheduler_scheduler_factory
dox_scheduler_scheduler_factory_OBJECTS = \
"CMakeFiles/dox_scheduler_scheduler_factory.dir/scheduler_factory.cc.o"

# External object files for target dox_scheduler_scheduler_factory
dox_scheduler_scheduler_factory_EXTERNAL_OBJECTS =

BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/scheduler_factory.cc.o
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/build.make
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_choreography.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_classic.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_scheduler_choreography_context.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_scheduler_classic_context.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_scheduler_processor.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_scheduler_processor_context.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_croutine_croutine.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_time_rate.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_time_clock.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_time_time.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_time_duration.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_common_file.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_common_global_data.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_proto_dox_conf_proto.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_proto_run_mode_conf_proto.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_proto_scheduler_conf_proto.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_proto_choreography_conf_proto.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_proto_monopoly_conf_proto.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_proto_transport_conf_proto.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_proto_perf_conf_proto.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_binary.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_proto_component_conf_proto.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_proto_qos_profile_proto.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: BuildProducts/opt/dox/lib/libdox_proto_classic_conf_proto.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: /usr/local/lib/libprotobuf.so
BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so: dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yousong/workspace/cpp_learning/senior-detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so"
	cd /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dox_scheduler_scheduler_factory.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/build: BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so

.PHONY : dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/build

dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/clean:
	cd /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler && $(CMAKE_COMMAND) -P CMakeFiles/dox_scheduler_scheduler_factory.dir/cmake_clean.cmake
.PHONY : dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/clean

dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/depend:
	cd /home/yousong/workspace/cpp_learning/senior-detection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yousong/workspace/cpp_learning/senior-detection /home/yousong/workspace/cpp_learning/senior-detection/dox/scheduler /home/yousong/workspace/cpp_learning/senior-detection/build /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler /home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dox/scheduler/CMakeFiles/dox_scheduler_scheduler_factory.dir/depend

