# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build

# Utility rule file for maintainer-clean.

# Include any custom commands dependencies for this target.
include CMakeFiles/maintainer-clean.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/maintainer-clean.dir/progress.make

CMakeFiles/maintainer-clean:
	rm -rf *

maintainer-clean: CMakeFiles/maintainer-clean
maintainer-clean: CMakeFiles/maintainer-clean.dir/build.make
.PHONY : maintainer-clean

# Rule to build all files generated by this target.
CMakeFiles/maintainer-clean.dir/build: maintainer-clean
.PHONY : CMakeFiles/maintainer-clean.dir/build

CMakeFiles/maintainer-clean.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/maintainer-clean.dir/cmake_clean.cmake
.PHONY : CMakeFiles/maintainer-clean.dir/clean

CMakeFiles/maintainer-clean.dir/depend:
	cd /home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime /home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime /home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build /home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build /home/thangnn/aosp/source/vendor/hello_someip/extern/capicxx-someip-runtime/build/CMakeFiles/maintainer-clean.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/maintainer-clean.dir/depend

