cmake_minimum_required(VERSION 3.29)
project(Little_Log_File_System)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 20)

# Main Program Target
add_executable(Little_Log_File_System
        main.cpp
        DiskManager.cpp
        DiskManager.h
)

# Test Target
add_executable(DiskTest
        Test/DiskTest.cpp
        DiskManager.cpp
        DiskManager.h
)

# Define TEST_BUILD for the DiskTest target
target_compile_definitions(DiskTest PRIVATE TEST_BUILD)

