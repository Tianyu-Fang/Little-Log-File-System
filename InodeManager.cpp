#include "InodeManager.h"
#include <iostream>

// Constructor
InodeManager::InodeManager(size_t totalInodes)
    : totalInodes(totalInodes), inodeBitmap(totalInodes, false), inodeTable(totalInodes) {
    // Initialize all inodes as unused (type = 0)
    for (auto& inode : inodeTable) {
        inode.fileType = 0; // Mark as unused
    }
}

// Allocate an inode
int InodeManager::allocateInode() {
    for (size_t i = 0; i < totalInodes; ++i) {
        if (!inodeBitmap[i]) {
            inodeBitmap[i] = true; // Mark inode as allocated
            inodeTable[i].fileType = 1; // Default to file type
            return static_cast<int>(i); // Return inode ID
        }
    }
    throw std::runtime_error("No free inodes available.");
}

// Free an inode
void InodeManager::freeInode(size_t inodeId) {
    checkInodeId(inodeId);
    if (!inodeBitmap[inodeId]) {
        throw std::runtime_error("Inode is already free.");
    }
    inodeBitmap[inodeId] = false;       // Mark as free
    inodeTable[inodeId] = Inode();      // Reset inode data
    inodeTable[inodeId].fileType = 0;   // Explicitly mark as unused
}

// Get inode metadata
Inode InodeManager::getInode(size_t inodeId) const {
    checkInodeId(inodeId);
    if (!inodeBitmap[inodeId]) {
        throw std::runtime_error("Inode is not allocated.");
    }
    return inodeTable[inodeId];
}

// Update inode metadata
void InodeManager::updateInode(size_t inodeId, const Inode& inode) {
    checkInodeId(inodeId);
    if (!inodeBitmap[inodeId]) {
        throw std::runtime_error("Inode is not allocated.");
    }
    inodeTable[inodeId] = inode;
}

// Save inode table to raw data
std::vector<uint8_t> InodeManager::saveInodeTable() const {
    std::vector<uint8_t> data(totalInodes * sizeof(Inode));
    uint8_t* rawPtr = data.data();
    for (const auto& inode : inodeTable) {
        std::memcpy(rawPtr, &inode, sizeof(Inode));
        rawPtr += sizeof(Inode);
    }
    return data;
}

// Load inode table from raw data
void InodeManager::loadInodeTable(const std::vector<uint8_t>& data) {
    if (data.size() != totalInodes * sizeof(Inode)) {
        throw std::invalid_argument("Invalid inode table size.");
    }
    const uint8_t* rawPtr = data.data();
    for (auto& inode : inodeTable) {
        std::memcpy(&inode, rawPtr, sizeof(Inode));
        rawPtr += sizeof(Inode);
    }
    // Update inodeBitmap based on file types
    for (size_t i = 0; i < totalInodes; ++i) {
        inodeBitmap[i] = inodeTable[i].fileType != 0;
    }
}

// Helper function to check inode ID bounds
void InodeManager::checkInodeId(size_t inodeId) const {
    if (inodeId >= totalInodes) {
        throw std::out_of_range("Inode ID out of range.");
    }
}

// Get the total number of inodes
size_t InodeManager::getTotalInodes() const {
    return totalInodes;
}

void InodeManager::initializeRootInode() {
    if (!inodeBitmap[0]) {
        // Mark inode 0 as allocated
        inodeBitmap[0] = true;

        // Initialize root inode
        Inode rootInode = {};
        rootInode.fileType = 2; // Directory
        rootInode.fileSize = 0;
        std::fill(std::begin(rootInode.directBlocks), std::end(rootInode.directBlocks), 0);

        inodeTable[0] = rootInode; // Save the root inode
        std::cout << "Root inode initialized in InodeManager.\n";
    }
}
