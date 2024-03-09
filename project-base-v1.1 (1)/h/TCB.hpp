#ifndef PROJECT_BASE_V1_1_TCB_HPP
#define PROJECT_BASE_V1_1_TCB_HPP

#include "scheduler.hpp"
#include "semaphore.hpp"
#include "syscall_c.hpp"

class TCB{
private:


    struct Context{
        uint64 ra, sp;
    };


    Context context;

    uint64 time_slice;

    Semafor* semaphore;

    char* stack;
    void* arg;

    friend class Riscv;
    friend class Semaphore;
public:
    using Body=void(*)(void*);
    Body body;
    static TCB* running;
    bool done;


    TCB(Body, char*, void*, uint64);

    static TCB* create(Body, char*, void*);

    static void yield(Context* old_context, Context* running_context);

    static void dispatch();

    static int exit();

    static void join(TCB* thread);

    static void idleThread(void* arg);

    static void threadWrapper();

    void setDone() { done=1;}

    void* operator new(size_t size);
    void operator delete(void* address);
};

#endif
