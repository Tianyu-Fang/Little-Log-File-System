#ifdef TEST_BUILD
#include "../DiskManager.h"
#include <iostream>
#include <cassert>

int main() {
    DiskManager dm("vdisk", 2 * 1024 * 1024); // 2 MB disk
    dm.formatDisk();

    std::vector<char> data(512, 'A');
    dm.writeBlock(5, data);

    std::vector<char> readData = dm.readBlock(5);
    assert(data == readData);

    std::cout << "DiskManager test passed!" << std::endl;
    return 0;
}
#endif
