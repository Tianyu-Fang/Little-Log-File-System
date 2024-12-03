#ifndef CRASHRECOVERY_H
#define CRASHRECOVERY_H

#include "DiskManager.h"
#include "FreeBlockManager.h"
#include "InodeManager.h"
#include "DirectoryManager.h"

class CrashRecovery {
public:
    CrashRecovery(DiskManager& diskManager, FreeBlockManager& freeBlockManager,
                  InodeManager& inodeManager, DirectoryManager& directoryManager);

    // Perform crash recovery
    void recover();

private:
    DiskManager& diskManager;
    FreeBlockManager& freeBlockManager;
    InodeManager& inodeManager;
    DirectoryManager& directoryManager;

    // Validate the superblock
    void validateSuperblock();

    // Rebuild the free block vector
    void rebuildFreeBlockVector();

    // Validate inodes
    void validateInodes();

    // Validate directory entries
    void validateDirectories();
};

#endif // CRASHRECOVERY_H
