#include "LLFS.h"
#include <cstring> // For memcpy

// Constructor
LLFS::LLFS(const std::string& diskName, size_t diskSize, size_t blockSize)
    : diskManager(diskName, diskSize, blockSize),
      freeBlockManager(diskSize / blockSize),
      inodeManager(diskSize / (blockSize * 8)), // Example: 1 inode per 8 blocks
      blockSize(blockSize) {}

// Format the file system
void LLFS::formatFileSystem() {
    // Format the disk
    diskManager.formatDisk();

    // Initialize the root directory
    directoryManager.createRootDirectory(0);
}

// Create a file
void LLFS::createFile(const std::string& fileName) {
    // Allocate an inode for the file
    int inodeId = inodeManager.allocateInode();

    // Initialize the inode
    Inode inode = {};
    inode.fileType = 1; // File type
    inodeManager.updateInode(inodeId, inode);

    // Add the file to the root directory
    DirectoryEntry entry = {static_cast<uint8_t>(inodeId), ""};
    std::strncpy(entry.fileName, fileName.c_str(), sizeof(entry.fileName) - 1);
    directoryManager.addEntry("/", entry);
}

// Write data to a file
void LLFS::writeFile(const std::string& fileName, const std::vector<char>& data) {
    // Find the file in the root directory
    DirectoryEntry entry = directoryManager.getEntry("/", fileName);
    Inode inode = inodeManager.getInode(entry.inodeId);

    // Allocate blocks for the file
    size_t dataSize = data.size();
    size_t numBlocks = (dataSize + blockSize - 1) / blockSize; // Round up

    for (size_t i = 0; i < numBlocks; ++i) {
        size_t blockNumber = freeBlockManager.allocateBlock();

        // Write a block of data
        size_t offset = i * blockSize;
        size_t chunkSize = std::min(blockSize, dataSize - offset);
        std::vector<char> blockData(data.begin() + offset, data.begin() + offset + chunkSize);
        blockData.resize(blockSize, 0); // Pad with zeros
        diskManager.writeBlock(blockNumber, blockData);

        // Update inode
        if (i < 10) {
            inode.directBlocks[i] = blockNumber;
        } else {
            throw std::runtime_error("File size exceeds direct block limit.");
        }
    }

    inode.fileSize = dataSize;
    inodeManager.updateInode(entry.inodeId, inode);
}

// Read data from a file
std::vector<char> LLFS::readFile(const std::string& fileName) {
    // Find the file in the root directory
    DirectoryEntry entry = directoryManager.getEntry("/", fileName);
    Inode inode = inodeManager.getInode(entry.inodeId);

    // Read data from the file's blocks
    std::vector<char> data(inode.fileSize);
    size_t bytesRead = 0;

    for (size_t i = 0; i < 10 && bytesRead < inode.fileSize; ++i) {
        size_t blockNumber = inode.directBlocks[i];
        if (blockNumber == 0) break;

        std::vector<char> blockData = diskManager.readBlock(blockNumber);

        size_t chunkSize = std::min(blockSize, inode.fileSize - bytesRead);
        std::copy(blockData.begin(), blockData.begin() + chunkSize, data.begin() + bytesRead);
        bytesRead += chunkSize;
    }

    return data;
}

// Delete a file
void LLFS::deleteFile(const std::string& fileName) {
    // Find the file in the root directory
    DirectoryEntry entry = directoryManager.getEntry("/", fileName);
    Inode inode = inodeManager.getInode(entry.inodeId);

    // Free allocated blocks
    for (size_t i = 0; i < 10; ++i) {
        if (inode.directBlocks[i] != 0) {
            freeBlockManager.freeBlock(inode.directBlocks[i]);
        }
    }

    // Free the inode
    inodeManager.freeInode(entry.inodeId);

    // Remove the file from the directory
    directoryManager.removeEntry("/", fileName);
}

// Create a directory
void LLFS::createDirectory(const std::string& dirName) {
    throw std::runtime_error("Directory creation is not implemented.");
}

// Delete a directory
void LLFS::deleteDirectory(const std::string& dirName) {
    throw std::runtime_error("Directory deletion is not implemented.");
}

std::vector<DirectoryEntry> LLFS::listDirectory(const std::string& path) {
    return directoryManager.listEntries(path);
}
