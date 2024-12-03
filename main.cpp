#include <iostream>
#include <vector>
#include <string>
#include "DiskManager.h"
#include "FreeBlockManager.h"
#include "InodeManager.h"
#include "DirectoryManager.h"
#include "CrashRecovery.h"
#include "LLFS.h"

void printHelp() {
    std::cout << "Available commands:\n";
    std::cout << "  format                     - Format the disk\n";
    std::cout << "  create <filename>          - Create a new file\n";
    std::cout << "  write <filename> <data>    - Write data to a file\n";
    std::cout << "  read <filename>            - Read data from a file\n";
    std::cout << "  delete <filename>          - Delete a file\n";
    std::cout << "  recover                    - Perform crash recovery\n";
    std::cout << "  exit                       - Exit the program\n";
}

int main() {
    // Constants
    const std::string diskName = "vdisk";
    const size_t diskSize = 2 * 1024 * 1024; // 2 MB
    const size_t blockSize = 512;

    // Try crash recovery before starting the main loop
    try {
        std::cout << "Performing crash recovery...\n";

        DiskManager diskManager(diskName, diskSize, blockSize);

        // Check if the disk is formatted
        auto superblock = diskManager.readBlock(0);
        if (std::all_of(superblock.begin(), superblock.end(), [](char c) { return c == 0; })) {
            std::cout << "Disk is unformatted. Formatting the disk...\n";
            diskManager.formatDisk();
            std::cout << "Disk formatted successfully. Proceeding with recovery...\n";
        }

        FreeBlockManager freeBlockManager(diskManager.getTotalBlocks());
        InodeManager inodeManager(diskSize / (blockSize * 8)); // Example: 1 inode per 8 blocks
        DirectoryManager directoryManager;

        CrashRecovery recovery(diskManager, freeBlockManager, inodeManager, directoryManager);
        recovery.recover();

        std::cout << "Crash recovery completed successfully.\n";
    } catch (const std::exception& e) {
        std::cerr << "Crash recovery failed: " << e.what() << "\n";
        return 1; // Exit if recovery fails
    }






    std::cout << "Welcome to the Little Log File System (LLFS)!\n";
    std::cout << "Type 'help' for a list of commands.\n";

    LLFS fileSystem(diskName, diskSize, blockSize);

    std::string command;
    while (true) {
        std::cout << "> ";
        std::cin >> command;

        if (command == "help") {
            printHelp();
        } else if (command == "format") {
            try {
                fileSystem.formatFileSystem();
                std::cout << "Disk formatted successfully.\n";
            } catch (const std::exception& e) {
                std::cerr << "Error: " << e.what() << "\n";
            }
        } else if (command == "create") {
            std::string fileName;
            std::cin >> fileName;
            try {
                fileSystem.createFile(fileName);
                std::cout << "File '" << fileName << "' created successfully.\n";
            } catch (const std::exception& e) {
                std::cerr << "Error: " << e.what() << "\n";
            }
        } else if (command == "write") {
            std::string fileName, data;
            std::cin >> fileName;
            std::cin.ignore(); // Ignore whitespace
            std::getline(std::cin, data); // Read the rest of the line as data
            try {
                fileSystem.writeFile(fileName, std::vector<char>(data.begin(), data.end()));
                std::cout << "Data written to file '" << fileName << "' successfully.\n";
            } catch (const std::exception& e) {
                std::cerr << "Error: " << e.what() << "\n";
            }
        } else if (command == "read") {
            std::string fileName;
            std::cin >> fileName;
            try {
                auto data = fileSystem.readFile(fileName);
                std::cout << "Data read from file '" << fileName << "':\n";
                std::cout << std::string(data.begin(), data.end()) << "\n";
            } catch (const std::exception& e) {
                std::cerr << "Error: " << e.what() << "\n";
            }
        } else if (command == "delete") {
            std::string fileName;
            std::cin >> fileName;
            try {
                fileSystem.deleteFile(fileName);
                std::cout << "File '" << fileName << "' deleted successfully.\n";
            } catch (const std::exception& e) {
                std::cerr << "Error: " << e.what() << "\n";
            }
        } else if (command == "recover") {
            try {
                DiskManager diskManager(diskName, diskSize, blockSize);
                FreeBlockManager freeBlockManager(diskManager.getTotalBlocks());
                InodeManager inodeManager(diskSize / (blockSize * 8)); // Example ratio: 1 inode per 8 blocks
                DirectoryManager directoryManager;
                CrashRecovery recovery(diskManager, freeBlockManager, inodeManager, directoryManager);

                recovery.recover();
                std::cout << "Crash recovery completed successfully.\n";
            } catch (const std::exception& e) {
                std::cerr << "Error: " << e.what() << "\n";
            }
        } else if (command == "exit") {
            std::cout << "Exiting LLFS. Goodbye!\n";
            break;
        } else {
            std::cout << "Unknown command. Type 'help' for a list of commands.\n";
        }
    }

    return 0;
}
