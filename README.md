# Little Log File System

# Little Log File System (LLFS)

The **Little Log File System (LLFS)** is a simplified file system implementation designed for educational purposes. It demonstrates the key principles of file system design, including disk management, metadata handling, crash recovery, and persistence.

---

## Features

- **Persistent File System**:
    - Stores core data structures (e.g., free block vector, inode table) on disk for robustness.
- **File Operations**:
    - Create, write, read, and delete files.
- **Directory Management**:
    - Supports a root directory with mapping of file names to inodes.
- **Crash Recovery**:
    - Validates and repairs file system metadata after crashes.
- **Performance Benchmarks**:
    - Measures read and write performance for large files.

---

## Architecture

The LLFS system is modular, with the following key components:

1. **DiskManager**:
    - Manages block-level disk I/O operations.
2. **FreeBlockManager**:
    - Tracks free and allocated blocks using a bitmap.
3. **InodeManager**:
    - Maintains metadata for files and directories.
4. **DirectoryManager**:
    - Maps file names to inode IDs within the root directory.
5. **CrashRecovery**:
    - Detects and repairs inconsistencies in file system metadata.

---

## Data Structures

- **Superblock (Block 0)**:
    - Contains metadata about the file system (e.g., magic number, total blocks).
- **Free Block Vector (Block 1)**:
    - Tracks block allocation using a bitmap.
- **Inode Table (Blocks 2 onward)**:
    - Stores metadata for files and directories.

---

## Getting Started

### Prerequisites

- **C++ Compiler**: Requires support for C++20.
- **CMake**: Version 3.20 or higher.

### Build Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/LLFS.git
   cd LLFS
   ```
2. Build the project:
   ```bash
   mkdir build && cd build
   cmake ..
   cmake --build .
   ```
3. Run the main program:
   ```bash
   ./build/Little_Log_File_System
   ```
4. Run benchmarks:
   ```bash
   ./build/LLFS_Benchmark
   ```

---

## Commands (Main Program)

- `format`:
    - Formats the disk, initializing all metadata structures.
- `create <filename>`:
    - Creates a new file in the root directory.
- `write <filename> <data>`:
    - Writes data to the specified file.
- `read <filename>`:
    - Reads and displays data from the specified file.
- `delete <filename>`:
    - Deletes the specified file.
- `exit`:
    - Exits the program.

---

## Sample Outputs

### Main Program

```
> format
Formatting disk...
Disk formatted successfully.
> create file1.txt
File 'file1.txt' created successfully.
> write file1.txt Hello, LLFS!
Data written to file 'file1.txt'.
> read file1.txt
Data read from file 'file1.txt':
Hello, LLFS!
> delete file1.txt
File 'file1.txt' deleted successfully.
> exit
Exiting LLFS. Goodbye!
```

### Benchmark Program

```
Formatting disk...
Superblock written with:
  Magic number: LLFS
  Total blocks: 4096
  Number of inodes: 512
Root directory initialized with inode 0.
Running functional test...
Added entry: testfile.txt to path: /
File 'testfile.txt' written with size: 12 bytes across 1 blocks.
Functional test passed!
Running write benchmark...
Write benchmark for 10 iterations completed in 0.001987 seconds.
Running read benchmark...
Read benchmark for 10 iterations completed in 0.002334 seconds.
```

---

## Limitations

- **File Size**: Limited to 10 blocks per file (due to direct block pointers).
- **Directory Structure**: Only supports a flat directory (root only).
- **Journaling**: No journaling mechanism for crash resilience.
- **Disk Size**: Fixed during initialization.

---

## Future Work

- Support for larger files using indirect block pointers.
- Hierarchical directory structures.
- Journaling for atomic updates and better crash recovery.
- Dynamic disk resizing.
- Performance optimization through caching and deferred updates.

---


