#include "../LLFS.h"
#include <iostream>
#include <cassert>

#ifdef TEST_BUILD
int main() {
    LLFS fs("vdisk", 2 * 1024 * 1024); // 2 MB disk
    fs.formatFileSystem();

    // Create and write to a file
    fs.createFile("file1.txt");
    std::vector<char> data(1024, 'A'); // 1024 bytes of 'A'
    fs.writeFile("file1.txt", data);

    // Read back the file
    auto readData = fs.readFile("file1.txt");
    assert(readData == data);

    // Delete the file
    fs.deleteFile("file1.txt");

    std::cout << "All LLFS tests passed!" << std::endl;
    return 0;
}
#endif
