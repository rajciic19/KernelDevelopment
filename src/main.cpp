
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"

extern "C" void SuperTrap();

void userMain();

void mainWrapper(void*){
    userMain();
}


int main() {
    //MemoryAllocator& allocator = MemoryAllocator::getInstance();
    Riscv::w_stvec((uint64) SuperTrap | 1);

    thread_t t;
    thread_create(&t, mainWrapper, nullptr);

    thread_join(t);

    /*
    int* prt0 = (int*) mem_alloc(10*sizeof(int));
    prt0[0]=1;
    prt0[1]=2;
    prt0[2]=3;
    prt0[3]=4;
    prt0[4]=5;
    prt0[5]=6;
    prt0[6]=7;
    prt0[7]=8;
    prt0[8]=9;
    prt0[9]=10;

    int* prt1 = (int*) mem_alloc(10*sizeof(int));
    prt1[0]=11;
    prt1[1]=2;
    prt1[2]=3;
    prt1[3]=4;
    prt1[4]=5;
    prt1[5]=6;
    prt1[6]=7;
    prt1[7]=8;
    prt1[8]=9;
    prt1[9]=10;

    mem_free(prt0);
    mem_free(prt1);

    int* prt2 = (int*) mem_alloc(10*sizeof(int));
    prt2[0]=11;
    prt2[1]=12;
    prt2[2]=13;
    prt2[3]=14;
    prt2[4]=15;
    prt2[5]=16;
    prt2[6]=17;
    prt2[7]=18;
    prt2[8]=19;
    prt2[9]=20;

    mem_free(prt2);*/

    return 0;
}
