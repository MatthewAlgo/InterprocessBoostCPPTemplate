# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/matthewalgo/Projects/VSCode/CppBuildSystem/second_interprocess_exe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe

# Include any dependencies generated for this target.
include CMakeFiles/SecondInterProcessExecutable.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SecondInterProcessExecutable.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SecondInterProcessExecutable.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SecondInterProcessExecutable.dir/flags.make

CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.o: CMakeFiles/SecondInterProcessExecutable.dir/flags.make
CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.o: /home/matthewalgo/Projects/VSCode/CppBuildSystem/second_interprocess_exe/source/main.cpp
CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.o: CMakeFiles/SecondInterProcessExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.o -MF CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.o.d -o CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.o -c /home/matthewalgo/Projects/VSCode/CppBuildSystem/second_interprocess_exe/source/main.cpp

CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/matthewalgo/Projects/VSCode/CppBuildSystem/second_interprocess_exe/source/main.cpp > CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.i

CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/matthewalgo/Projects/VSCode/CppBuildSystem/second_interprocess_exe/source/main.cpp -o CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.s

# Object files for target SecondInterProcessExecutable
SecondInterProcessExecutable_OBJECTS = \
"CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.o"

# External object files for target SecondInterProcessExecutable
SecondInterProcessExecutable_EXTERNAL_OBJECTS =

SecondInterprocess: CMakeFiles/SecondInterProcessExecutable.dir/source/main.cpp.o
SecondInterprocess: CMakeFiles/SecondInterProcessExecutable.dir/build.make
SecondInterprocess: _deps/interprocesslibraries-build/libInterProcessLibraries.a
SecondInterprocess: _deps/boost_container-build/libboost_container.a
SecondInterprocess: CMakeFiles/SecondInterProcessExecutable.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SecondInterprocess"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SecondInterProcessExecutable.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SecondInterProcessExecutable.dir/build: SecondInterprocess
.PHONY : CMakeFiles/SecondInterProcessExecutable.dir/build

CMakeFiles/SecondInterProcessExecutable.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SecondInterProcessExecutable.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SecondInterProcessExecutable.dir/clean

CMakeFiles/SecondInterProcessExecutable.dir/depend:
	cd /home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matthewalgo/Projects/VSCode/CppBuildSystem/second_interprocess_exe /home/matthewalgo/Projects/VSCode/CppBuildSystem/second_interprocess_exe /home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe /home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe /home/matthewalgo/Projects/VSCode/CppBuildSystem/build/build_secondinterprocess_exe/CMakeFiles/SecondInterProcessExecutable.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SecondInterProcessExecutable.dir/depend
