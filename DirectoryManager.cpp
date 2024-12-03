#include "DirectoryManager.h"
#include <cstring> // For strncpy
#include <iostream>

// Constructor
DirectoryManager::DirectoryManager() {
    // Root directory is initialized later with createRootDirectory
}

// Create the root directory
void DirectoryManager::createRootDirectory(uint8_t rootInodeId) {
    if (directoryTable.find("/") != directoryTable.end()) {
        throw std::runtime_error("Root directory already exists.");
    }

    directoryTable["/"] = {}; // Initialize an empty list of entries
}


// Add an entry to a directory
void DirectoryManager::addEntry(const std::string& path, const DirectoryEntry& entry) {
    validateName(entry.fileName);

    if (directoryTable.find(path) == directoryTable.end()) {
        throw std::runtime_error("Directory does not exist: " + path);
    }

    // Check if the file already exists in the directory
    for (const auto& e : directoryTable[path]) {
        if (std::strcmp(e.fileName, entry.fileName) == 0) {
            throw std::runtime_error("File already exists: " + std::string(entry.fileName));
        }
    }

    // Add the entry to the directory
    directoryTable[path].push_back(entry);

    // Debug log
    std::cout << "Added entry: " << entry.fileName << " to path: " << path << std::endl;
}


// Get an entry from a directory
DirectoryEntry DirectoryManager::getEntry(const std::string& path, const std::string& fileName) const {
    if (directoryTable.find(path) == directoryTable.end()) {
        throw std::runtime_error("Directory does not exist: " + path);
    }

    // Search for the file in the directory
    for (const auto& entry : directoryTable.at(path)) {
        if (std::strcmp(entry.fileName, fileName.c_str()) == 0) {
            return entry;
        }
    }

    throw std::runtime_error("File not found: " + fileName);
}

// Remove an entry from a directory
void DirectoryManager::removeEntry(const std::string& path, const std::string& fileName) {
    if (directoryTable.find(path) == directoryTable.end()) {
        throw std::runtime_error("Directory does not exist: " + path);
    }

    auto& entries = directoryTable[path];
    for (auto it = entries.begin(); it != entries.end(); ++it) {
        if (std::strcmp(it->fileName, fileName.c_str()) == 0) {
            entries.erase(it);
            return;
        }
    }

    throw std::runtime_error("File not found: " + fileName);
}

// Get all entries in a directory
std::vector<DirectoryEntry> DirectoryManager::listEntries(const std::string& path) const {
    if (directoryTable.find(path) == directoryTable.end()) {
        throw std::runtime_error("Directory does not exist: " + path);
    }

    // Debug log
    std::cout << "Listing entries in path: " << path << std::endl;
    for (const auto& entry : directoryTable.at(path)) {
        std::cout << " - " << entry.fileName << " (inode: " << int(entry.inodeId) << ")" << std::endl;
    }

    return directoryTable.at(path);
}


// Helper function to validate directory and file names
void DirectoryManager::validateName(const std::string& name) const {
    if (name.empty() || name.size() > 30) {
        throw std::invalid_argument("Invalid name. Must be 1-30 characters long.");
    }
}
