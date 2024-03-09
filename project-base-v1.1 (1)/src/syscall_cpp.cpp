#include "../h/syscall_cpp.hpp"


Thread::Thread() {
    body = nullptr;
    arg = nullptr;
}

Thread::~Thread() {
    delete myHandle;
}
int Thread::start(){
    if(body) return thread_create(&myHandle, body, arg);
    else return thread_create(&myHandle, Thread::ThreadWrapper,this);

}
void Thread::dispatch(){
    thread_dispatch();
}

Thread::Thread(void (*b)(void *), void *a) {
    body = b;
    arg = a;
}

void Thread::ThreadWrapper(void *thread) {
    ((Thread*)thread)->run();
}

void Thread::join() {
    thread_join(myHandle);
}


Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore(){
    sem_close(myHandle);
}

int Semaphore::wait(){
    return sem_wait(myHandle);
}

int Semaphore::signal(){
    return sem_signal(myHandle);
}


char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}


void *operator new(size_t size) {
    return mem_alloc(size);
}

void operator delete(void *adr) {
    mem_free(adr);
}