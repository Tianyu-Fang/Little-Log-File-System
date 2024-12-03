#include "CrashRecovery.h"
#include "DirectoryManager.h"
#include "InodeManager.h"
#include <cstring> // For memcmp
#include <iostream>

CrashRecovery::CrashRecovery(DiskManager& diskManager, FreeBlockManager& freeBlockManager,
                             InodeManager& inodeManager, DirectoryManager& directoryManager)
    : diskManager(diskManager), freeBlockManager(freeBlockManager),
      inodeManager(inodeManager), directoryManager(directoryManager) {}

// Perform crash recovery
void CrashRecovery::recover() {
    std::cout << "Performing crash recovery...\n";

    validateSuperblock();
    rebuildFreeBlockVector();
    inodeManager.initializeRootInode(); // Ensure root inode exists
    validateDirectories();

    std::cout << "Crash recovery completed successfully.\n";
}


// Validate the superblock
void CrashRecovery::validateSuperblock() {
    std::vector<char> superblock = diskManager.readBlock(0);

    // Check if the block is entirely empty (uninitialized)
    if (std::all_of(superblock.begin(), superblock.end(), [](char c) { return c == 0; })) {
        throw std::runtime_error("Invalid superblock: Disk is not formatted.");
    }

    // Check the magic number
    if (std::memcmp(superblock.data(), "LLFS", 4) != 0) {
        throw std::runtime_error("Invalid superblock: Magic number mismatch.");
    }

    // Validate total blocks
    uint32_t superblockTotalBlocks;
    std::memcpy(&superblockTotalBlocks, superblock.data() + 4, sizeof(uint32_t));
    uint32_t diskManagerTotalBlocks = static_cast<uint32_t>(diskManager.getTotalBlocks());
    if (superblockTotalBlocks != diskManagerTotalBlocks) {
        throw std::runtime_error("Invalid superblock: Total blocks mismatch.");
    }

    std::cout << "Superblock validated successfully." << std::endl;
    std::cout << "Superblock total blocks: " << superblockTotalBlocks << std::endl;
    std::cout << "DiskManager total blocks: " << diskManagerTotalBlocks << std::endl;
}



// Rebuild the free block vector
void CrashRecovery::rebuildFreeBlockVector() {
    // Read the free block vector from disk (Block 1)
    std::vector<char> freeBlockVector = diskManager.readBlock(1);
    freeBlockManager.loadFreeBlockVector(std::vector<uint8_t>(freeBlockVector.begin(), freeBlockVector.end()));

    std::cout << "Free block vector restored successfully." << std::endl;
}

// Validate inodes
void CrashRecovery::validateInodes() {
    // Iterate over all inodes to ensure their integrity
    for (size_t i = 0; i < inodeManager.getTotalInodes(); ++i) {
        try {
            Inode inode = inodeManager.getInode(i);

            // Validate allocated blocks
            for (size_t j = 0; j < 10; ++j) {
                if (inode.directBlocks[j] != 0) {
                    if (!freeBlockManager.isBlockFree(inode.directBlocks[j])) {
                        throw std::runtime_error("Inconsistent free block vector for inode.");
                    }

                    // Mark block as allocated in the free block manager
                    freeBlockManager.allocateBlock();
                }
            }
        } catch (const std::runtime_error&) {
            // Ignore unallocated inodes
        }
    }

    std::cout << "Inode table validated successfully." << std::endl;
}

// Validate directory entries
void CrashRecovery::validateDirectories() {
    std::cout << "Validating directories...\n";

    // Validate the root directory (inode 0)
    try {
        Inode rootInode = inodeManager.getInode(0); // Fetch inode 0
        directoryManager.loadRootDirectory(0, rootInode); // Load the root directory

        std::cout << "Root directory validated successfully.\n";
    } catch (const std::exception& e) {
        throw std::runtime_error("Directory validation failed: " + std::string(e.what()));
    }

    std::cout << "Root directory entries:\n";
    for (const auto& entry : directoryManager.listEntries("/")) {
        std::cout << " - " << entry.fileName << " (inode ID: " << int(entry.inodeId) << ")\n";
    }

    // std::cout << "Validating additional directories...\n";
    //
    // // Additional directory validation logic can go here
}



