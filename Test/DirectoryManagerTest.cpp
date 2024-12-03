#include "../DirectoryManager.h"
#include <iostream>
#include <cassert>

#ifdef TEST_BUILD
int main() {
    DirectoryManager dm;

    // Create root directory
    dm.createRootDirectory(0);

    // Add entries to root
    DirectoryEntry file1 = {1, "file1.txt"};
    DirectoryEntry file2 = {2, "file2.txt"};
    dm.addEntry("/", file1);
    dm.addEntry("/", file2);

    // Test listing entries
    auto entries = dm.listEntries("/");
    assert(entries.size() == 2);

    // Test retrieving entries
    auto retrievedFile1 = dm.getEntry("/", "file1.txt");
    assert(retrievedFile1.inodeId == 1);

    // Test removing entries
    dm.removeEntry("/", "file1.txt");
    entries = dm.listEntries("/");
    assert(entries.size() == 1);

    // Test error cases
    try {
        dm.addEntry("/", file2); // Duplicate file
        assert(false); // Should not reach here
    } catch (const std::runtime_error&) {
        // Expected
    }

    try {
        dm.getEntry("/", "nonexistent.txt");
        assert(false); // Should not reach here
    } catch (const std::runtime_error&) {
        // Expected
    }

    std::cout << "All DirectoryManager tests passed!" << std::endl;
    return 0;
}
#endif
