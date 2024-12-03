cmake_minimum_required(VERSION 3.29)
project(Little_Log_File_System)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 20)

# Main Program Target
add_executable(Little_Log_File_System
        main.cpp
        DiskManager.cpp
        DiskManager.h
        FreeBlockManager.cpp
        FreeBlockManager.h
        InodeManager.cpp
        InodeManager.h
        DirectoryManager.cpp
        DirectoryManager.h
        LLFS.cpp
        LLFS.h
        CrashRecovery.cpp
        CrashRecovery.h
)

# Test Target
add_executable(DiskTest
        Test/DiskTest.cpp
        DiskManager.cpp
        DiskManager.h
)

# Define TEST_BUILD for the DiskTest target
target_compile_definitions(DiskTest PRIVATE TEST_BUILD)

#cmake -S . -B build
#cmake --build build --target Little_Log_File_System
#cmake --build build --target DiskTest
#./build/DiskTest



## Test target
#add_executable(FreeBlockManagerTest
#        Test/FreeBlockManagerTest.cpp
#        FreeBlockManager.cpp
#        FreeBlockManager.h
#)
#
## Define TEST_BUILD for the test target
#target_compile_definitions(FreeBlockManagerTest PRIVATE TEST_BUILD)

#cmake -S . -B build
#cmake --build build --target Little_Log_File_System
#cmake --build build --target FreeBlockManagerTest
#./build/FreeBlockManagerTest


#add_executable(InodeManagerTest
#        Test/InodeManagerTest.cpp
#        InodeManager.cpp
#        InodeManager.h
#)
#
#target_compile_definitions(InodeManagerTest PRIVATE TEST_BUILD)
#cmake -S . -B build
#cmake --build build --target Little_Log_File_System
#cmake --build build --target InodeManagerTest
#./build/InodeManagerTest

#add_executable(DirectoryManagerTest
#        Test/DirectoryManagerTest.cpp
#        DirectoryManager.cpp
#)
#
#target_compile_definitions(DirectoryManagerTest PRIVATE TEST_BUILD)
#cmake -S . -B build
#cmake --build build --target Little_Log_File_System
#cmake --build build --target DirectoryManagerTest
#./build/DirectoryManagerTest

#add_executable(LLFSTest
#        Test/LLFSTest.cpp
#        LLFS.cpp
#        DiskManager.cpp
#        FreeBlockManager.cpp
#        InodeManager.cpp
#        DirectoryManager.cpp
#)
#
#target_compile_definitions(LLFSTest PRIVATE TEST_BUILD)

#cmake -S . -B build
#cmake --build build --target Little_Log_File_System
#cmake --build build --target LLFSTest
#./build/LLFSTest

#add_executable(CrashRecoveryTest
#        Test/CrashRecoveryTest.cpp
#        CrashRecovery.cpp
#        DiskManager.cpp
#        FreeBlockManager.cpp
#        InodeManager.cpp
#        DirectoryManager.cpp
#)
#
#target_compile_definitions(CrashRecoveryTest PRIVATE TEST_BUILD)

#cmake -S . -B build
#cmake --build build --target Little_Log_File_System
#cmake --build build --target CrashRecoveryTest
#./build/CrashRecoveryTest
