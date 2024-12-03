#ifndef DIRECTORYMANAGER_H
#define DIRECTORYMANAGER_H

#include <string>
#include <unordered_map>
#include <vector>
#include <stdexcept>

#include "InodeManager.h"

struct DirectoryEntry {
    uint8_t inodeId;          // Inode ID associated with the file/directory
    char fileName[31];        // File or directory name (max 30 chars + null terminator)
};

class DirectoryManager {
public:
    // Constructor
    DirectoryManager();

    // Create the root directory
    void createRootDirectory(uint8_t rootInodeId);

    // Add an entry to a directory
    void addEntry(const std::string& path, const DirectoryEntry& entry);

    // Get an entry from a directory
    DirectoryEntry getEntry(const std::string& path, const std::string& fileName) const;

    // Remove an entry from a directory
    void removeEntry(const std::string& path, const std::string& fileName);

    // Get all entries in a directory
    std::vector<DirectoryEntry> listEntries(const std::string& path) const;
    void loadRootDirectory(uint8_t rootInodeId, const Inode &rootInode);


private:
    std::unordered_map<std::string, std::vector<DirectoryEntry>> directoryTable; // Maps directory paths to entries

    // Helper function to validate directory and file names
    void validateName(const std::string& name) const;

};

#endif // DIRECTORYMANAGER_H
