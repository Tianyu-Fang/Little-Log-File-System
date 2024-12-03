#include "FreeBlockManager.h"

// Constructor
FreeBlockManager::FreeBlockManager(size_t totalBlocks)
    : totalBlocks(totalBlocks), bitmap((totalBlocks + 7) / 8, 0xFF) {
    // Mark blocks 0 through 9 as reserved (not free)
    for (size_t i = 0; i < 10; ++i) {
        bitmap[i / 8] &= ~(1 << (i % 8));
    }
}

// Allocate the next free block
int FreeBlockManager::allocateBlock() {
    for (size_t i = 0; i < totalBlocks; ++i) {
        if (isBlockFree(i)) {
            bitmap[i / 8] &= ~(1 << (i % 8)); // Mark block as allocated
            return static_cast<int>(i);
        }
    }
    throw std::runtime_error("No free blocks available.");
}

// Free a specific block
void FreeBlockManager::freeBlock(size_t blockNumber) {
    checkBlockNumber(blockNumber);
    bitmap[blockNumber / 8] |= (1 << (blockNumber % 8)); // Mark block as free
}

// Check if a block is free
bool FreeBlockManager::isBlockFree(size_t blockNumber) const {
    checkBlockNumber(blockNumber);
    return (bitmap[blockNumber / 8] & (1 << (blockNumber % 8))) != 0;
}

// Get the free block vector as raw data
std::vector<uint8_t> FreeBlockManager::getFreeBlockVector() const {
    return bitmap;
}

// Load the free block vector from raw data
void FreeBlockManager::loadFreeBlockVector(const std::vector<uint8_t>& data) {
    if (data.size() != bitmap.size()) {
        throw std::invalid_argument("Invalid free block vector size.");
    }
    bitmap = data;
}

// Helper function to check bounds
void FreeBlockManager::checkBlockNumber(size_t blockNumber) const {
    if (blockNumber >= totalBlocks) {
        throw std::out_of_range("Block number out of range.");
    }
}
