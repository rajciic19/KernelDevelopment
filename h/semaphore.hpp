#ifndef PROJECT_BASE_V1_1_SEMAPHORE_H
#define PROJECT_BASE_V1_1_SEMAPHORE_H
#include "TCB.hpp"

struct Block{
    TCB* thread;
    Block* next;

    Block(TCB* t, Block* n){
        thread = t;
        next = n;
    }
    void *operator new(size_t size);
    void operator delete(void *ptr);
};

class Semafor{
private:
    int value;
    Block* head, *tail;

    friend class TCB;
    friend class Riscv;
public:

    Semafor(int);

    static Semafor* create(int);

    static void wait(Semafor*);
    static void signal(Semafor*);

    void *operator new(size_t size);
    void operator delete(void *ptr);

};
#endif
