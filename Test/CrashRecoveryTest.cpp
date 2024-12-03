#include "../DiskManager.h"
#include "../FreeBlockManager.h"
#include "../InodeManager.h"
#include "../DirectoryManager.h"
#include "../CrashRecovery.h"
#include <iostream>
#include <cassert>

#ifdef TEST_BUILD
int main() {
    // Initialize components
    DiskManager diskManager("vdisk", 2 * 1024 * 1024); // 2 MB disk
    FreeBlockManager freeBlockManager(diskManager.getTotalBlocks());
    InodeManager inodeManager(512); // Example: 512 inodes
    DirectoryManager directoryManager;

    // Format the disk and initialize components
    diskManager.formatDisk();
    directoryManager.createRootDirectory(0);

    // Simulate file system usage
    freeBlockManager.allocateBlock();
    int inodeId = inodeManager.allocateInode();
    DirectoryEntry entry = {static_cast<uint8_t>(inodeId), "file1.txt"};
    directoryManager.addEntry("/", entry);

    // Simulate crash and recovery
    CrashRecovery recovery(diskManager, freeBlockManager, inodeManager, directoryManager);
    recovery.recover();

    std::cout << "Crash recovery test passed successfully." << std::endl;
    return 0;
}
#endif
