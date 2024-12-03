#ifndef FREEBLOCKMANAGER_H
#define FREEBLOCKMANAGER_H

#include <vector>
#include <stdexcept>
#include <cstdint>

class FreeBlockManager {
public:
    // Constructor
    FreeBlockManager(size_t totalBlocks);

    // Allocate the next free block
    int allocateBlock();

    // Free a specific block
    void freeBlock(size_t blockNumber);

    // Check if a block is free
    bool isBlockFree(size_t blockNumber) const;

    // Get the free block vector as raw data (for saving to disk)
    std::vector<uint8_t> getFreeBlockVector() const;

    // Load the free block vector from raw data (for restoring from disk)
    void loadFreeBlockVector(const std::vector<uint8_t>& data);

private:
    size_t totalBlocks;           // Total number of blocks in the system
    std::vector<uint8_t> bitmap;  // Bitmap for free/allocated blocks

    // Helper function to check bounds
    void checkBlockNumber(size_t blockNumber) const;
};

#endif // FREEBLOCKMANAGER_H
