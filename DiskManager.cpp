#include "DiskManager.h"
#include "DirectoryManager.h"
#include "InodeManager.h"
#include <iostream>
#include <cstring> // For memset

DiskManager::DiskManager(const std::string& diskFileName, size_t diskSize, size_t blockSize)
    : diskFileName(diskFileName), diskSize(diskSize), blockSize(blockSize) {
    if (blockSize == 0 || diskSize % blockSize != 0) {
        throw std::invalid_argument("Disk size must be a multiple of block size.");
    }
    totalBlocks = diskSize / blockSize;
    openDiskFile();
}

DiskManager::~DiskManager() {
    if (diskFile.is_open()) {
        diskFile.close();
    }
}

void DiskManager::openDiskFile() {
    diskFile.open(diskFileName, std::ios::in | std::ios::out | std::ios::binary);

    // If the file does not exist, create it
    if (!diskFile.is_open()) {
        diskFile.clear();
        diskFile.open(diskFileName, std::ios::out | std::ios::binary);
        diskFile.close();
        diskFile.open(diskFileName, std::ios::in | std::ios::out | std::ios::binary);
    }

    // Resize the file to the disk size if needed
    diskFile.seekp(0, std::ios::end);
    if (diskFile.tellp() < static_cast<std::streampos>(diskSize)) {
        diskFile.seekp(0, std::ios::beg);
        std::vector<char> zeroBlock(blockSize, 0);
        for (size_t i = 0; i < totalBlocks; ++i) {
            diskFile.write(zeroBlock.data(), blockSize);
        }
    }
    diskFile.seekp(0, std::ios::beg);
}

void DiskManager::formatDisk() {
    // Constants for reserved blocks
    const size_t SUPERBLOCK_BLOCK = 0;
    const size_t FREE_BLOCK_VECTOR_BLOCK = 1;
    const size_t INODE_TABLE_START_BLOCK = 2;
    const size_t INODE_TABLE_BLOCKS = 1; // Number of blocks reserved for the inode table

    // Initialize the superblock
    std::vector<char> superblock(blockSize, 0);

    // Write the magic number ("LLFS")
    std::memcpy(superblock.data(), "LLFS", 4);

    // Write the total number of blocks (use fixed-size type for consistency)
    uint32_t fixedTotalBlocks = static_cast<uint32_t>(totalBlocks);
    std::memcpy(superblock.data() + 4, &fixedTotalBlocks, sizeof(fixedTotalBlocks));

    // Write the number of inodes (use fixed-size type for consistency)
    uint32_t numberOfInodes = fixedTotalBlocks / 8; // Example: 1/8th of total blocks for inodes
    std::memcpy(superblock.data() + 8, &numberOfInodes, sizeof(numberOfInodes));

    // Write the superblock to block 0
    writeBlock(SUPERBLOCK_BLOCK, superblock);

    // Initialize the free block vector
    std::vector<char> freeBlockVector(blockSize, 0xFF); // Mark all blocks as free initially

    // Mark reserved blocks (superblock, free block vector, inode table) as allocated
    for (size_t i = 0; i < INODE_TABLE_START_BLOCK + INODE_TABLE_BLOCKS; ++i) {
        size_t byteIndex = i / 8;           // Byte in the free block vector
        size_t bitIndex = i % 8;            // Bit in the byte
        freeBlockVector[byteIndex] &= ~(1 << (7 - bitIndex)); // Set the bit to 0 (allocated)
    }

    // Write the free block vector to block 1
    writeBlock(FREE_BLOCK_VECTOR_BLOCK, freeBlockVector);

    // Initialize the root directory inode (inode 0)
    Inode rootInode = {};
    rootInode.fileType = 2; // Directory type
    rootInode.fileSize = 0; // Initially empty
    std::memset(rootInode.directBlocks, 0, sizeof(rootInode.directBlocks));

    // Write the root inode to the inode table
    std::vector<char> inodeTableBlock(blockSize, 0);
    std::memcpy(inodeTableBlock.data(), &rootInode, sizeof(Inode));
    writeBlock(INODE_TABLE_START_BLOCK, inodeTableBlock);

    // Debug output to verify
    std::cout << "Superblock written with:\n";
    std::cout << "  Magic number: LLFS\n";
    std::cout << "  Total blocks: " << fixedTotalBlocks << "\n";
    std::cout << "  Number of inodes: " << numberOfInodes << "\n";
    std::cout << "Free block vector initialized.\n";
    std::cout << "Root directory initialized with inode 0.\n";
}





void DiskManager::writeBlock(size_t blockNumber, const std::vector<char>& data) {
    if (blockNumber >= totalBlocks) {
        throw std::out_of_range("Block number out of range.");
    }
    if (data.size() != blockSize) {
        throw std::invalid_argument("Data size must match block size.");
    }

    diskFile.seekp(blockNumber * blockSize, std::ios::beg);
    diskFile.write(data.data(), blockSize);
    diskFile.flush();
}

std::vector<char> DiskManager::readBlock(size_t blockNumber) {
    if (blockNumber >= totalBlocks) {
        throw std::out_of_range("Block number out of range.");
    }

    std::vector<char> data(blockSize);
    diskFile.seekg(blockNumber * blockSize, std::ios::beg);
    diskFile.read(data.data(), blockSize);

    return data;
}



size_t DiskManager::getTotalBlocks() const {
    return totalBlocks;
}

void DiskManager::readSuperblock() {
    std::vector<char> superblock = readBlock(0);

    char magicNumber[5] = {0};
    std::memcpy(magicNumber, superblock.data(), 4);
    if (std::string(magicNumber) != "LLFS") {
        throw std::runtime_error("Invalid file system format.");
    }

    size_t totalBlocks = 0;
    std::memcpy(&totalBlocks, superblock.data() + 4, sizeof(totalBlocks));

    size_t numberOfInodes = 0;
    std::memcpy(&numberOfInodes, superblock.data() + 8, sizeof(numberOfInodes));

    std::cout << "Superblock Info:" << std::endl;
    std::cout << "  Magic Number: " << magicNumber << std::endl;
    std::cout << "  Total Blocks: " << totalBlocks << std::endl;
    std::cout << "  Number of Inodes: " << numberOfInodes << std::endl;
}
