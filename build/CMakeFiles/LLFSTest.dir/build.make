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
include CMakeFiles/LLFSTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/LLFSTest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/LLFSTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LLFSTest.dir/flags.make

CMakeFiles/LLFSTest.dir/codegen:
.PHONY : CMakeFiles/LLFSTest.dir/codegen

CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.o: CMakeFiles/LLFSTest.dir/flags.make
CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/Test/LLFSTest.cpp
CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.o: CMakeFiles/LLFSTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.o -MF CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.o.d -o CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/Test/LLFSTest.cpp

CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/Test/LLFSTest.cpp > CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.i

CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/Test/LLFSTest.cpp -o CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.s

CMakeFiles/LLFSTest.dir/LLFS.cpp.o: CMakeFiles/LLFSTest.dir/flags.make
CMakeFiles/LLFSTest.dir/LLFS.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/LLFS.cpp
CMakeFiles/LLFSTest.dir/LLFS.cpp.o: CMakeFiles/LLFSTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/LLFSTest.dir/LLFS.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LLFSTest.dir/LLFS.cpp.o -MF CMakeFiles/LLFSTest.dir/LLFS.cpp.o.d -o CMakeFiles/LLFSTest.dir/LLFS.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/LLFS.cpp

CMakeFiles/LLFSTest.dir/LLFS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLFSTest.dir/LLFS.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/LLFS.cpp > CMakeFiles/LLFSTest.dir/LLFS.cpp.i

CMakeFiles/LLFSTest.dir/LLFS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLFSTest.dir/LLFS.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/LLFS.cpp -o CMakeFiles/LLFSTest.dir/LLFS.cpp.s

CMakeFiles/LLFSTest.dir/DiskManager.cpp.o: CMakeFiles/LLFSTest.dir/flags.make
CMakeFiles/LLFSTest.dir/DiskManager.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DiskManager.cpp
CMakeFiles/LLFSTest.dir/DiskManager.cpp.o: CMakeFiles/LLFSTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/LLFSTest.dir/DiskManager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LLFSTest.dir/DiskManager.cpp.o -MF CMakeFiles/LLFSTest.dir/DiskManager.cpp.o.d -o CMakeFiles/LLFSTest.dir/DiskManager.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DiskManager.cpp

CMakeFiles/LLFSTest.dir/DiskManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLFSTest.dir/DiskManager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DiskManager.cpp > CMakeFiles/LLFSTest.dir/DiskManager.cpp.i

CMakeFiles/LLFSTest.dir/DiskManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLFSTest.dir/DiskManager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DiskManager.cpp -o CMakeFiles/LLFSTest.dir/DiskManager.cpp.s

CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.o: CMakeFiles/LLFSTest.dir/flags.make
CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/FreeBlockManager.cpp
CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.o: CMakeFiles/LLFSTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.o -MF CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.o.d -o CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/FreeBlockManager.cpp

CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/FreeBlockManager.cpp > CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.i

CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/FreeBlockManager.cpp -o CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.s

CMakeFiles/LLFSTest.dir/InodeManager.cpp.o: CMakeFiles/LLFSTest.dir/flags.make
CMakeFiles/LLFSTest.dir/InodeManager.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/InodeManager.cpp
CMakeFiles/LLFSTest.dir/InodeManager.cpp.o: CMakeFiles/LLFSTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/LLFSTest.dir/InodeManager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LLFSTest.dir/InodeManager.cpp.o -MF CMakeFiles/LLFSTest.dir/InodeManager.cpp.o.d -o CMakeFiles/LLFSTest.dir/InodeManager.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/InodeManager.cpp

CMakeFiles/LLFSTest.dir/InodeManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLFSTest.dir/InodeManager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/InodeManager.cpp > CMakeFiles/LLFSTest.dir/InodeManager.cpp.i

CMakeFiles/LLFSTest.dir/InodeManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLFSTest.dir/InodeManager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/InodeManager.cpp -o CMakeFiles/LLFSTest.dir/InodeManager.cpp.s

CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.o: CMakeFiles/LLFSTest.dir/flags.make
CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DirectoryManager.cpp
CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.o: CMakeFiles/LLFSTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.o -MF CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.o.d -o CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DirectoryManager.cpp

CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DirectoryManager.cpp > CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.i

CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DirectoryManager.cpp -o CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.s

# Object files for target LLFSTest
LLFSTest_OBJECTS = \
"CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.o" \
"CMakeFiles/LLFSTest.dir/LLFS.cpp.o" \
"CMakeFiles/LLFSTest.dir/DiskManager.cpp.o" \
"CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.o" \
"CMakeFiles/LLFSTest.dir/InodeManager.cpp.o" \
"CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.o"

# External object files for target LLFSTest
LLFSTest_EXTERNAL_OBJECTS =

LLFSTest: CMakeFiles/LLFSTest.dir/Test/LLFSTest.cpp.o
LLFSTest: CMakeFiles/LLFSTest.dir/LLFS.cpp.o
LLFSTest: CMakeFiles/LLFSTest.dir/DiskManager.cpp.o
LLFSTest: CMakeFiles/LLFSTest.dir/FreeBlockManager.cpp.o
LLFSTest: CMakeFiles/LLFSTest.dir/InodeManager.cpp.o
LLFSTest: CMakeFiles/LLFSTest.dir/DirectoryManager.cpp.o
LLFSTest: CMakeFiles/LLFSTest.dir/build.make
LLFSTest: CMakeFiles/LLFSTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable LLFSTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLFSTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LLFSTest.dir/build: LLFSTest
.PHONY : CMakeFiles/LLFSTest.dir/build

CMakeFiles/LLFSTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LLFSTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LLFSTest.dir/clean

CMakeFiles/LLFSTest.dir/depend:
	cd /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles/LLFSTest.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/LLFSTest.dir/depend

