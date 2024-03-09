#ifndef PROJECT_BASE_V1_1_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_SCHEDULER_HPP
#include "../h/MemoryAllocator.h"

class TCB;


class Scheduler
{
private:
    struct Node{
        TCB* thread;
        Node* next;

        Node(TCB* t, Node* n){
            thread = t;
            next = n;
        }
        void *operator new(size_t size);
        void operator delete(void *ptr);
    };
    static TCB* idleThread;

    static Node* head, *tail;
    friend class TCB;
    friend class Riscv;
public:
    Scheduler(){
        head=nullptr;
        tail=nullptr;
    }

    Scheduler(const Scheduler&) = delete;
    Scheduler& operator=(const Scheduler&) = delete;

    static TCB* get();
    static void put(TCB* thread);
    static void initialize();
};

#endif






