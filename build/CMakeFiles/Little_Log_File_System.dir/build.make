# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build

# Include any dependencies generated for this target.
include CMakeFiles/Little_Log_File_System.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Little_Log_File_System.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Little_Log_File_System.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Little_Log_File_System.dir/flags.make

CMakeFiles/Little_Log_File_System.dir/codegen:
.PHONY : CMakeFiles/Little_Log_File_System.dir/codegen

CMakeFiles/Little_Log_File_System.dir/main.cpp.o: CMakeFiles/Little_Log_File_System.dir/flags.make
CMakeFiles/Little_Log_File_System.dir/main.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/main.cpp
CMakeFiles/Little_Log_File_System.dir/main.cpp.o: CMakeFiles/Little_Log_File_System.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Little_Log_File_System.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Little_Log_File_System.dir/main.cpp.o -MF CMakeFiles/Little_Log_File_System.dir/main.cpp.o.d -o CMakeFiles/Little_Log_File_System.dir/main.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/main.cpp

CMakeFiles/Little_Log_File_System.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Little_Log_File_System.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/main.cpp > CMakeFiles/Little_Log_File_System.dir/main.cpp.i

CMakeFiles/Little_Log_File_System.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Little_Log_File_System.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/main.cpp -o CMakeFiles/Little_Log_File_System.dir/main.cpp.s

CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.o: CMakeFiles/Little_Log_File_System.dir/flags.make
CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DiskManager.cpp
CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.o: CMakeFiles/Little_Log_File_System.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.o -MF CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.o.d -o CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DiskManager.cpp

CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DiskManager.cpp > CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.i

CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DiskManager.cpp -o CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.s

# Object files for target Little_Log_File_System
Little_Log_File_System_OBJECTS = \
"CMakeFiles/Little_Log_File_System.dir/main.cpp.o" \
"CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.o"

# External object files for target Little_Log_File_System
Little_Log_File_System_EXTERNAL_OBJECTS =

Little_Log_File_System: CMakeFiles/Little_Log_File_System.dir/main.cpp.o
Little_Log_File_System: CMakeFiles/Little_Log_File_System.dir/DiskManager.cpp.o
Little_Log_File_System: CMakeFiles/Little_Log_File_System.dir/build.make
Little_Log_File_System: CMakeFiles/Little_Log_File_System.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Little_Log_File_System"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Little_Log_File_System.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Little_Log_File_System.dir/build: Little_Log_File_System
.PHONY : CMakeFiles/Little_Log_File_System.dir/build

CMakeFiles/Little_Log_File_System.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Little_Log_File_System.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Little_Log_File_System.dir/clean

CMakeFiles/Little_Log_File_System.dir/depend:
	cd /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles/Little_Log_File_System.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Little_Log_File_System.dir/depend
