# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /home/neil/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/neil/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/mnt/e/程式碼練習/Design_Pattern/Abstract Factory/CPP"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/e/程式碼練習/Design_Pattern/Abstract Factory/CPP/build"

# Include any dependencies generated for this target.
include CMakeFiles/Abstract_Factory_run.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Abstract_Factory_run.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Abstract_Factory_run.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Abstract_Factory_run.dir/flags.make

CMakeFiles/Abstract_Factory_run.dir/main.cpp.o: CMakeFiles/Abstract_Factory_run.dir/flags.make
CMakeFiles/Abstract_Factory_run.dir/main.cpp.o: ../main.cpp
CMakeFiles/Abstract_Factory_run.dir/main.cpp.o: CMakeFiles/Abstract_Factory_run.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/e/程式碼練習/Design_Pattern/Abstract Factory/CPP/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Abstract_Factory_run.dir/main.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Abstract_Factory_run.dir/main.cpp.o -MF CMakeFiles/Abstract_Factory_run.dir/main.cpp.o.d -o CMakeFiles/Abstract_Factory_run.dir/main.cpp.o -c "/mnt/e/程式碼練習/Design_Pattern/Abstract Factory/CPP/main.cpp"

CMakeFiles/Abstract_Factory_run.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Abstract_Factory_run.dir/main.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/e/程式碼練習/Design_Pattern/Abstract Factory/CPP/main.cpp" > CMakeFiles/Abstract_Factory_run.dir/main.cpp.i

CMakeFiles/Abstract_Factory_run.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Abstract_Factory_run.dir/main.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/e/程式碼練習/Design_Pattern/Abstract Factory/CPP/main.cpp" -o CMakeFiles/Abstract_Factory_run.dir/main.cpp.s

# Object files for target Abstract_Factory_run
Abstract_Factory_run_OBJECTS = \
"CMakeFiles/Abstract_Factory_run.dir/main.cpp.o"

# External object files for target Abstract_Factory_run
Abstract_Factory_run_EXTERNAL_OBJECTS =

Abstract_Factory_run: CMakeFiles/Abstract_Factory_run.dir/main.cpp.o
Abstract_Factory_run: CMakeFiles/Abstract_Factory_run.dir/build.make
Abstract_Factory_run: CMakeFiles/Abstract_Factory_run.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/e/程式碼練習/Design_Pattern/Abstract Factory/CPP/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Abstract_Factory_run"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Abstract_Factory_run.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Running for Checkout Abstract_Factory"
	./Abstract_Factory_run -E echo compile finish

# Rule to build all files generated by this target.
CMakeFiles/Abstract_Factory_run.dir/build: Abstract_Factory_run
.PHONY : CMakeFiles/Abstract_Factory_run.dir/build

CMakeFiles/Abstract_Factory_run.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Abstract_Factory_run.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Abstract_Factory_run.dir/clean

CMakeFiles/Abstract_Factory_run.dir/depend:
	cd "/mnt/e/程式碼練習/Design_Pattern/Abstract Factory/CPP/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/e/程式碼練習/Design_Pattern/Abstract Factory/CPP" "/mnt/e/程式碼練習/Design_Pattern/Abstract Factory/CPP" "/mnt/e/程式碼練習/Design_Pattern/Abstract Factory/CPP/build" "/mnt/e/程式碼練習/Design_Pattern/Abstract Factory/CPP/build" "/mnt/e/程式碼練習/Design_Pattern/Abstract Factory/CPP/build/CMakeFiles/Abstract_Factory_run.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Abstract_Factory_run.dir/depend

