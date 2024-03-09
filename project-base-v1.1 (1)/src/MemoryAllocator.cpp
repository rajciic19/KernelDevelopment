#include "../h/MemoryAllocator.h"

MemoryAllocator& MemoryAllocator::getInstance() {
    static MemoryAllocator singleton;
    return singleton;
}

void* MemoryAllocator::mem_alloc(size_t size){
    if(first==true){
        first_addr=(MemChunk*)HEAP_START_ADDR;
        first_addr->size=((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR);
        first_addr->next=nullptr;
        first_addr->used=false;
        first=false;
    }
    if(first_addr==nullptr) return nullptr;
    size+=sizeof(MemChunk);
    if(size%MEM_BLOCK_SIZE==0) size/=MEM_BLOCK_SIZE;
    else size=size/MEM_BLOCK_SIZE+1;
    size*=MEM_BLOCK_SIZE;

    MemChunk* temp=first_addr;
    for(;temp!=nullptr && (temp->size<size || temp->used==true);temp=temp->next);
    if(temp==nullptr) return nullptr;

    if(temp->size==size)
    {
        temp->used=true;
    }
    else{
        MemChunk* new_chunk=(MemChunk*)((uint64)temp+size);
        new_chunk->size=temp->size-size;
        new_chunk->used=false;
        new_chunk->next=temp->next;
        temp->next=new_chunk;
        temp->used=true;
        temp->size=size;
    }

    return (void*)((uint64)temp+sizeof(MemChunk));
}

int MemoryAllocator::mem_free(void* address){

    address=(void*)((uint64)address-sizeof(MemChunk));
    if((uint64)address<(uint64)HEAP_START_ADDR || (uint64)address>(uint64)HEAP_END_ADDR) return -1;
    if(first==true) return -1;
    if(first_addr==nullptr) return -1;


    MemChunk* temp=(MemChunk*) address;
    if(temp->used==false) return -1;
    temp->used=false;

    join();

    return 0;
}

void MemoryAllocator::join(){

    MemChunk* temp=first_addr;
    MemChunk* prev=nullptr;

    for(;temp!=nullptr;temp=temp->next)
    {
        if(prev==nullptr || (temp->used==true || prev->used==true)){
            prev=temp;
        }
        else{
            prev->next=temp->next;
            prev->size+=temp->size;
        }
    }
}

