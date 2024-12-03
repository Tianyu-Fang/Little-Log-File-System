#ifndef INODEMANAGER_H
#define INODEMANAGER_H

#include <vector>
#include <cstdint>
#include <stdexcept>

struct Inode {
    uint32_t fileSize;          // File size in bytes
    uint8_t fileType;           // 0 = unused, 1 = file, 2 = directory
    uint16_t directBlocks[10];  // Direct block pointers
    uint16_t singleIndirect;    // Single indirect block pointer
    uint16_t doubleIndirect;    // Double indirect block pointer
};

class InodeManager {
public:
    // Constructor
    InodeManager(size_t totalInodes);

    // Allocate an inode
    int allocateInode();

    // Free an inode
    void freeInode(size_t inodeId);

    // Get inode metadata
    Inode getInode(size_t inodeId) const;

    // Update inode metadata
    void updateInode(size_t inodeId, const Inode& inode);

    // Save inode table to raw data (for writing to disk)
    std::vector<uint8_t> saveInodeTable() const;

    // Load inode table from raw data (for restoring from disk)
    void loadInodeTable(const std::vector<uint8_t>& data);

    // Get the total number of inodes
    size_t getTotalInodes() const;

private:
    size_t totalInodes;            // Total number of inodes
    std::vector<bool> inodeBitmap; // Bitmap for inode allocation
    std::vector<Inode> inodeTable; // Array of inodes

    // Helper function to check inode ID bounds
    void checkInodeId(size_t inodeId) const;
};

#endif // INODEMANAGER_H
