#ifdef BENCHMARK_TEST

#include <iostream>
#include <vector>
#include <string>
#include <chrono>
#include <cassert>
#include "../LLFS.h"

void benchmarkWrite(LLFS &fileSystem, const std::string &fileName, const std::string &data, int iterations, size_t maxFileSize) {
    using namespace std::chrono;

    // Ensure the data fits within the file size limit
    if (data.size() > maxFileSize) {
        throw std::runtime_error("Data size exceeds file size limit for direct blocks.");
    }

    auto start = high_resolution_clock::now();

    for (int i = 0; i < iterations; ++i) {
        fileSystem.writeFile(fileName, std::vector<char>(data.begin(), data.end()));
    }

    auto end = high_resolution_clock::now();
    duration<double> elapsed = end - start;

    std::cout << "Write benchmark for " << iterations << " iterations completed in "
              << elapsed.count() << " seconds." << std::endl;
}

void benchmarkRead(LLFS &fileSystem, const std::string &fileName, int iterations) {
    using namespace std::chrono;

    auto start = high_resolution_clock::now();

    for (int i = 0; i < iterations; ++i) {
        auto data = fileSystem.readFile(fileName);
        (void)data; // Prevent compiler optimization
    }

    auto end = high_resolution_clock::now();
    duration<double> elapsed = end - start;

    std::cout << "Read benchmark for " << iterations << " iterations completed in "
              << elapsed.count() << " seconds." << std::endl;
}

void functionalTest(LLFS &fileSystem) {
    std::string testData = "Hello, LLFS!";
    fileSystem.createFile("testfile.txt");
    fileSystem.writeFile("testfile.txt", std::vector<char>(testData.begin(), testData.end()));
    auto readData = fileSystem.readFile("testfile.txt");

    assert(std::string(readData.begin(), readData.end()) == testData);
    std::cout << "Functional test passed!" << std::endl;
}



int main() {
    const std::string diskName = "vdisk";
    const size_t diskSize = 2 * 1024 * 1024; // 2 MB
    const size_t blockSize = 512;
    const size_t directBlockCount = 10; // Matches current inode design
    const size_t maxFileSize = directBlockCount * blockSize;

    LLFS fileSystem(diskName, diskSize, blockSize);

    std::cout << "Formatting disk...\n";
    fileSystem.formatFileSystem();

    // Functional Test
    std::cout << "Running functional test...\n";
    functionalTest(fileSystem);

    // Performance Benchmarking
    std::string largeData(maxFileSize, 'A'); // Data size fits within the direct block limit
    fileSystem.createFile("largefile.txt");

    std::cout << "Running write benchmark...\n";
    benchmarkWrite(fileSystem, "largefile.txt", largeData, 10, maxFileSize); // Write 10 times

    std::cout << "Running read benchmark...\n";
    benchmarkRead(fileSystem, "largefile.txt", 10); // Read 10 times

    return 0;
}


#endif // BENCHMARK_TEST
