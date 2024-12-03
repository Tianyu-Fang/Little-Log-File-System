#ifdef TEST_BUILD
#include "../DiskManager.h"
#include "../InodeManager.h"
#include <iostream>
#include <cassert>

int main() {
    try {
        DiskManager diskManager("vdisk", 2 * 1024 * 1024, 512); // 2 MB disk, 512-byte blocks

        // Format the disk
        diskManager.formatDisk();

        // Read and verify the superblock
        auto superblock = diskManager.readBlock(0);
        assert(std::memcmp(superblock.data(), "LLFS", 4) == 0);
        std::cout << "Superblock verified.\n";

        // Read and verify the root inode
        auto inodeTableBlock = diskManager.readBlock(2);
        Inode rootInode;
        std::memcpy(&rootInode, inodeTableBlock.data(), sizeof(Inode));
        assert(rootInode.fileType == 2); // Directory
        std::cout << "Root directory inode verified.\n";

        std::cout << "FormatDisk test passed successfully.\n";
    } catch (const std::exception& e) {
        std::cerr << "Test failed: " << e.what() << "\n";
        return 1;
    }

    return 0;
}
#endif

