
#include "../h/syscall_cpp.hpp"
#include "../h/riscv.hpp"
#include "../test/printing.hpp"

extern "C" void SuperTrap();

/*void userMain();
void testMain();

void mainWrapper(void*){
    //userMain();
    testMain();
}*/

class WorkerA: public Thread {
    int workerBodyA(int* arg, int n,  int m);
    int* mat;
    int n,m;
public:
    WorkerA(int* mat, int n, int m):Thread() {
        this->mat=mat;
        this->n=n;
        this->m=m;
    }

    void run() override {
        workerBodyA(mat,n,m);
    }
};


int WorkerA::workerBodyA(int* arg, int n, int m) {
    int sum=0;
    for(int i=0;i<m;i++)
        sum+=arg[i];
    printString("thread finished!\n");
    //printString("Sum: %d", sum);
    return sum;
}

void main() {
    Riscv::w_stvec((uint64) SuperTrap | 1);

    //Thread *t=new Thread(nullptr, nullptr);

   /* t->join();

    printString("\nMain finished!\n\n");

    delete t;
    return 0;*/


    int m=3;
    int n=3;
    int matrix[3][3]={1,2,3,
                      4,5,6,
                      7,8,9};

    Thread* threads[3];

    for(int i=0;i<n;i++){
        threads[i] = new WorkerA(matrix[i], i, m);
    }
    for(int i=0;i<n;i++){
        threads[i]->start();
    }
    for(int i=0;i<n;i++){
        threads[i]->join();
    }

    for(int i=0;i<n;i++){
        delete threads[i];
    }
    //t->join();
    printString("\nMain finished!\n\n");

    //delete t;

}
