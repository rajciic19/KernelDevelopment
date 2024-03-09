
#include "../h/semaphore.hpp"

Semafor *Semafor::create(int val) {
    Semafor* sem = new Semafor(val);
    sem->head=nullptr;
    sem->tail=nullptr;
    return sem;
}

void Semafor::wait(Semafor * sem) {
    if(--sem->value<0)
    {
        Block* temp = new Block(TCB::running, nullptr);
        if(sem->head==nullptr) sem->head=temp;
        else sem->tail->next=temp;
        sem->tail=temp;
        TCB::running->setDone();
        TCB::dispatch();
    }
}

void Semafor::signal(Semafor *sem) {
    if(sem->value++<0){
        if(sem->head==nullptr) return;
        TCB* thread=sem->head->thread;
        Block* temp = sem->head;
        sem->head=sem->head->next;
        delete temp;
        if(!sem->head) sem->tail=sem->head;
        thread->done=0;
        Scheduler::put(thread);
    }
}

Semafor::Semafor(int val) {
    this->head=nullptr;
    this->tail=nullptr;
    this->value=val;
}

void *Semafor::operator new(size_t size) {
    return MemoryAllocator::getInstance().mem_alloc(size);
}

void Semafor::operator delete(void *ptr) {
    MemoryAllocator::getInstance().mem_free(ptr);
}

void *Block::operator new(size_t size) {
    return MemoryAllocator::getInstance().mem_alloc(size);
}

void Block::operator delete(void *ptr) {
    MemoryAllocator::getInstance().mem_free(ptr);
}
