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
include CMakeFiles/LLFS_Benchmark.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/LLFS_Benchmark.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/LLFS_Benchmark.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LLFS_Benchmark.dir/flags.make

CMakeFiles/LLFS_Benchmark.dir/codegen:
.PHONY : CMakeFiles/LLFS_Benchmark.dir/codegen

CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.o: CMakeFiles/LLFS_Benchmark.dir/flags.make
CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DiskManager.cpp
CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.o: CMakeFiles/LLFS_Benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.o -MF CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.o.d -o CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DiskManager.cpp

CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DiskManager.cpp > CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.i

CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DiskManager.cpp -o CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.s

CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.o: CMakeFiles/LLFS_Benchmark.dir/flags.make
CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/FreeBlockManager.cpp
CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.o: CMakeFiles/LLFS_Benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.o -MF CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.o.d -o CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/FreeBlockManager.cpp

CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/FreeBlockManager.cpp > CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.i

CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/FreeBlockManager.cpp -o CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.s

CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.o: CMakeFiles/LLFS_Benchmark.dir/flags.make
CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/InodeManager.cpp
CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.o: CMakeFiles/LLFS_Benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.o -MF CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.o.d -o CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/InodeManager.cpp

CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/InodeManager.cpp > CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.i

CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/InodeManager.cpp -o CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.s

CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.o: CMakeFiles/LLFS_Benchmark.dir/flags.make
CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DirectoryManager.cpp
CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.o: CMakeFiles/LLFS_Benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.o -MF CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.o.d -o CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DirectoryManager.cpp

CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DirectoryManager.cpp > CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.i

CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/DirectoryManager.cpp -o CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.s

CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.o: CMakeFiles/LLFS_Benchmark.dir/flags.make
CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/LLFS.cpp
CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.o: CMakeFiles/LLFS_Benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.o -MF CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.o.d -o CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/LLFS.cpp

CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/LLFS.cpp > CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.i

CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/LLFS.cpp -o CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.s

CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.o: CMakeFiles/LLFS_Benchmark.dir/flags.make
CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/CrashRecovery.cpp
CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.o: CMakeFiles/LLFS_Benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.o -MF CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.o.d -o CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/CrashRecovery.cpp

CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/CrashRecovery.cpp > CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.i

CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/CrashRecovery.cpp -o CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.s

CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.o: CMakeFiles/LLFS_Benchmark.dir/flags.make
CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.o: /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/Test/LLFS_Benchmark.cpp
CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.o: CMakeFiles/LLFS_Benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.o -MF CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.o.d -o CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.o -c /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/Test/LLFS_Benchmark.cpp

CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/Test/LLFS_Benchmark.cpp > CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.i

CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/Test/LLFS_Benchmark.cpp -o CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.s

# Object files for target LLFS_Benchmark
LLFS_Benchmark_OBJECTS = \
"CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.o" \
"CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.o" \
"CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.o" \
"CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.o" \
"CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.o" \
"CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.o" \
"CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.o"

# External object files for target LLFS_Benchmark
LLFS_Benchmark_EXTERNAL_OBJECTS =

LLFS_Benchmark: CMakeFiles/LLFS_Benchmark.dir/DiskManager.cpp.o
LLFS_Benchmark: CMakeFiles/LLFS_Benchmark.dir/FreeBlockManager.cpp.o
LLFS_Benchmark: CMakeFiles/LLFS_Benchmark.dir/InodeManager.cpp.o
LLFS_Benchmark: CMakeFiles/LLFS_Benchmark.dir/DirectoryManager.cpp.o
LLFS_Benchmark: CMakeFiles/LLFS_Benchmark.dir/LLFS.cpp.o
LLFS_Benchmark: CMakeFiles/LLFS_Benchmark.dir/CrashRecovery.cpp.o
LLFS_Benchmark: CMakeFiles/LLFS_Benchmark.dir/Test/LLFS_Benchmark.cpp.o
LLFS_Benchmark: CMakeFiles/LLFS_Benchmark.dir/build.make
LLFS_Benchmark: CMakeFiles/LLFS_Benchmark.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable LLFS_Benchmark"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLFS_Benchmark.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LLFS_Benchmark.dir/build: LLFS_Benchmark
.PHONY : CMakeFiles/LLFS_Benchmark.dir/build

CMakeFiles/LLFS_Benchmark.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LLFS_Benchmark.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LLFS_Benchmark.dir/clean

CMakeFiles/LLFS_Benchmark.dir/depend:
	cd /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build /Users/tianyu/Documents/NEU/2024Fall/CS5600/Little-Log-File-System/build/CMakeFiles/LLFS_Benchmark.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/LLFS_Benchmark.dir/depend

