#include "../h/syscall_c.hpp"


void* mem_alloc(size_t size){
    uint64 ret;

    __asm__ volatile("mv a1,%[size]"::[size]"r"(size));
    __asm__ volatile("li a0,0x01");

    __asm__ volatile ("ecall");

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));

    return (void*)ret;
}

int mem_free(void * adr) {
    uint64 ret;

    __asm__ volatile ("mv a1,%[adr]"::[adr]"r"(adr));
    __asm__ volatile("li a0,0x02");

    __asm__ volatile ("ecall");

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));

    return ret;
}

int thread_create(thread_t *h, void (*b)(void *), void *a) {
    //uint64* stack = (uint64*) __mem_alloc(DEFAULT_STACK_SIZE);
    char* stack = (char*) mem_alloc(DEFAULT_STACK_SIZE);
    uint64 ret;
    thread_t *handle = h;
    uint64* body = (uint64*) b;
    void* arg = a;

    if(stack == nullptr) return -1;
    stack+=DEFAULT_STACK_SIZE - 1;

    __asm__ volatile("mv a7, %[stack]"::[stack]"r"(stack));
    __asm__ volatile("mv a6, %[arg]"::[arg]"r"(arg));
    __asm__ volatile("mv a2, %[body]"::[body]"r"(body));
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
    __asm__ volatile("li a0, 0x11");

    __asm__ volatile("ecall");

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    return ret;
}

int thread_exit() {
    uint64 ret;

    __asm__ volatile("li a0, 0x12");

    __asm__ volatile("ecall");

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    return ret;
}

void thread_dispatch() {
    __asm__ volatile("li a0, 0x13");

    __asm__ volatile("ecall");
}

void thread_join(thread_t handle){
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));

    __asm__ volatile("li a0, 0x14");

    __asm__ volatile("ecall");
}

int sem_open(sem_t* handle, unsigned int init){
    uint64 ret;

    __asm__ volatile("mv a7, %[init]"::[init]"r"(init));
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
    __asm__ volatile("li a0, 0x21");

    __asm__ volatile("ecall");

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    return ret;
}

int sem_close(sem_t handle){
    uint64 ret;

    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
    __asm__ volatile("li a0, 0x22");

    __asm__ volatile("ecall");

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));

    return ret;
}

int sem_signal(sem_t id){
    uint64 ret;

    __asm__ volatile("mv a1, %[id]"::[id]"r"(id));
    __asm__ volatile("li a0, 0x24");

    __asm__ volatile("ecall");

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    return ret;
}
int sem_wait(sem_t id){
    uint64 ret;

    __asm__ volatile("mv a1, %[id]"::[id]"r"(id));
    __asm__ volatile("li a0, 0x23");

    __asm__ volatile("ecall");

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    return ret;
}


char getc() {
    //return __getc();
    char ret;
    __asm__ volatile("li a0, 0x41");

    __asm__ volatile("ecall");

    __asm__ volatile("mv %[ret], a0":[ret]"=r"(ret));
    return ret;
}

void putc(char c) {
    __asm__ volatile("mv a1, %[c]"::[c]"r"(c));
    __asm__ volatile("li a0, 0x42");

    __asm__ volatile("ecall");
    //__putc(c);
}
