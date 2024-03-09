#include "../h/scheduler.hpp"
#include "../h/TCB.hpp"

Scheduler::Node* Scheduler::head = nullptr;
Scheduler::Node* Scheduler::tail = nullptr;
TCB* Scheduler::idleThread = nullptr;

TCB* Scheduler::get(){
    if(idleThread==nullptr) initialize();
    if(head==nullptr) return idleThread;
    Node* temp=head;
    TCB* thread=temp->thread;
    head=head->next;

    if(head==nullptr) tail=nullptr;

    delete temp;
    return thread;
}
void  Scheduler::put(TCB* thread){
    if(idleThread==nullptr) initialize();
    if(thread==nullptr) return;
    Node* temp = new Node(thread, nullptr);

    (head == nullptr ? head : tail->next) = temp;
    tail = temp;
}

void Scheduler::initialize() {
    static bool initialized = false;
    if (!initialized) {
        TCB::Body fun = TCB::idleThread;
        idleThread = TCB::create(fun, 0, nullptr);
        idleThread->done=1;
        initialized = true;
    }
}

void *Scheduler::Node::operator new(size_t size) {
    return MemoryAllocator::getInstance().mem_alloc(size);
}

void Scheduler::Node::operator delete(void *ptr) {
    MemoryAllocator::getInstance().mem_free(ptr);
}
