
#include "../h/riscv.hpp"


TCB *TCB::running = nullptr;

void TCB::yield(TCB::Context *old_context, TCB::Context *running_context) {
    __asm__ volatile("sd ra, 0*8(a0)");
    __asm__ volatile("sd sp, 1*8(a0)");
    __asm__ volatile("ld ra, 0*8(a1)");
    __asm__ volatile("ld sp, 1*8(a1)");
}

TCB::TCB(Body b, char *s, void *a, uint64 ts) {
    this->body=b;
    this->stack=s;
    this->arg=a;
    this->time_slice=ts;
    this->context.ra = (uint64)threadWrapper;
    this->context.sp = (uint64)s;
    this->done = false;
    this->semaphore=Semafor::create(0);
}

TCB* TCB::create(Body b,char* s, void* a) {
    if(running==nullptr) {
        running=new TCB(nullptr, nullptr, nullptr, DEFAULT_TIME_SLICE);
    }
    return new TCB(b, s, a, DEFAULT_TIME_SLICE);
}

void TCB::dispatch() {
    TCB* old=running;
    if(!running->done){
        Scheduler::put(running);
    }
    running=Scheduler::get();


    yield(&old->context, &running->context);
}

int TCB::exit() {
    if(running==nullptr) return -1;
    running->done = true;
    Semafor::signal(running->semaphore);
    dispatch();
    return 0;
}

void TCB::join(TCB *thread) {
    if (!thread || thread->done) return;
    Semafor::wait(thread->semaphore);
}

void TCB::idleThread(void* arg) {
    while (true) {
        thread_dispatch();
    }
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg);
    thread_exit();
}

void *TCB::operator new(size_t size) {
    return MemoryAllocator::getInstance().mem_alloc(size);
}

void TCB::operator delete(void *address) {
    MemoryAllocator::getInstance().mem_free(address);
}
