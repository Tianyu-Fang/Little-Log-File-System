#include "../FreeBlockManager.h"
#include <iostream>
#include <cassert>

#ifdef TEST_BUILD
int main() {
    // Initialize FreeBlockManager with 4096 blocks
    FreeBlockManager fbm(4096);

    // Test allocation
    int block = fbm.allocateBlock();
    assert(!fbm.isBlockFree(block)); // Block should now be allocated

    // Test freeing a block
    fbm.freeBlock(block);
    assert(fbm.isBlockFree(block)); // Block should now be free again

    // Test reserved blocks
    for (int i = 0; i < 10; ++i) {
        assert(!fbm.isBlockFree(i)); // Reserved blocks should not be free
    }

    // Test vector save and load
    auto savedBitmap = fbm.getFreeBlockVector();
    FreeBlockManager fbm2(4096);
    fbm2.loadFreeBlockVector(savedBitmap);
    assert(fbm2.isBlockFree(block)); // Loaded bitmap should match original

    std::cout << "All FreeBlockManager tests passed!" << std::endl;
    return 0;
}
#endif
