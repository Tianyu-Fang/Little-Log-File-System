#ifndef DISKMANAGER_H
#define DISKMANAGER_H

#include <string>
#include <vector>
#include <fstream>
#include <stdexcept>

class DiskManager {
public:
    // Constructor to initialize the disk manager
    DiskManager(const std::string& diskFileName, size_t diskSize, size_t blockSize = 512);

    // Destructor to close the file
    ~DiskManager();

    // Format the disk (initialize metadata)
    void formatDisk();

    // Write data to a specific block
    void writeBlock(size_t blockNumber, const std::vector<char>& data);

    // Read data from a specific block
    std::vector<char> readBlock(size_t blockNumber);

    // Get the total number of blocks on the disk
    size_t getTotalBlocks() const;

    void readSuperblock();

private:
    std::string diskFileName;   // Name of the disk file
    size_t diskSize;            // Total size of the disk in bytes
    size_t blockSize;           // Block size in bytes
    size_t totalBlocks;         // Total number of blocks on the disk
    std::fstream diskFile;      // File stream for disk operations

    // Helper function to open the disk file
    void openDiskFile();
};

#endif // DISKMANAGER_H
