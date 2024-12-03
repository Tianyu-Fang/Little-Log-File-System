#include "../InodeManager.h"
#include <iostream>
#include <cassert>

#ifdef TEST_BUILD
int main() {
    InodeManager im(128); // Initialize with 128 inodes

    // Test allocation
    int inodeId = im.allocateInode();
    assert(inodeId == 0); // First inode ID should be 0

    // Test updating inode metadata
    Inode inode = im.getInode(inodeId);
    inode.fileSize = 1024;
    im.updateInode(inodeId, inode);

    Inode updatedInode = im.getInode(inodeId);
    assert(updatedInode.fileSize == 1024);

    // Test freeing an inode
    im.freeInode(inodeId);
    try {
        im.getInode(inodeId);
        assert(false); // Should not reach here
    } catch (const std::runtime_error&) {
        // Expected behavior
    }

    // Test saving and loading inode table
    auto savedData = im.saveInodeTable();
    InodeManager im2(128);
    im2.loadInodeTable(savedData);

    std::cout << "All InodeManager tests passed!" << std::endl;
    return 0;
}
#endif
//
// Created by Tianyu on 2024/12/2.
//
