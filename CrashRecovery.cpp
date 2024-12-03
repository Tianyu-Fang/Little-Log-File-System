#include "CrashRecovery.h"
#include <cstring> // For memcmp
#include <iostream>

CrashRecovery::CrashRecovery(DiskManager& diskManager, FreeBlockManager& freeBlockManager,
                             InodeManager& inodeManager, DirectoryManager& directoryManager)
    : diskManager(diskManager), freeBlockManager(freeBlockManager),
      inodeManager(inodeManager), directoryManager(directoryManager) {}

// Perform crash recovery
void CrashRecovery::recover() {
    validateSuperblock();
    rebuildFreeBlockVector();
    validateInodes();
    validateDirectories();
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
    // Validate the root directory
    if (directoryManager.listEntries("/").empty()) {
        throw std::runtime_error("Root directory is missing or uninitialized.");
    }

    // Check that all directory entries refer to valid inodes
    auto rootEntries = directoryManager.listEntries("/");
    for (const auto& entry : rootEntries) {
        try {
            inodeManager.getInode(entry.inodeId); // Ensure inode exists
        } catch (const std::exception&) {
            throw std::runtime_error("Directory entry refers to invalid inode.");
        }
    }

    std::cout << "Directory entries validated successfully.\n";
}

