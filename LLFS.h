#ifndef LLFS_H
#define LLFS_H

#include "DiskManager.h"
#include "FreeBlockManager.h"
#include "InodeManager.h"
#include "DirectoryManager.h"
#include <string>
#include <vector>

class LLFS {
public:
    // Constructor
    LLFS(const std::string& diskName, size_t diskSize, size_t blockSize = 512);

    // Format the file system
    void formatFileSystem();

    // Create a file
    void createFile(const std::string& fileName);

    // Write data to a file
    void writeFile(const std::string& fileName, const std::vector<char>& data);

    // Read data from a file
    std::vector<char> readFile(const std::string& fileName);

    // Delete a file
    void deleteFile(const std::string& fileName);

    // Create a directory
    void createDirectory(const std::string& dirName);

    // Delete a directory
    void deleteDirectory(const std::string& dirName);

    std::vector<DirectoryEntry> listDirectory(const std::string &path);

private:
    DiskManager diskManager;
    FreeBlockManager freeBlockManager;
    InodeManager inodeManager;
    DirectoryManager directoryManager;

    size_t blockSize;
};

#endif // LLFS_H
