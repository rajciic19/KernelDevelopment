
#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_H
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_H

#include <stdbool.h>
#include "../lib/hw.h"

struct MemChunk{
    size_t size;
    MemChunk* next;
    bool used;
};

class MemoryAllocator{
private:
    void join();
    MemChunk *first_addr;
    bool first=true;
public:

    MemoryAllocator() {};
    MemoryAllocator(const MemoryAllocator&) = delete;
    MemoryAllocator& operator=(const MemoryAllocator&) = delete;

    static MemoryAllocator& getInstance();
    void* mem_alloc(size_t);
    int mem_free(void*);
};
#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_H
