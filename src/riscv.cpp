#include "../lib/console.h"
#include "../h/riscv.hpp"

void Riscv::handleSupervisorTrap() {
    uint64 sepc = Riscv::r_sepc() + 4;
    uint64 sstatus = Riscv::r_sstatus();
    uint64 scauseVar, a2, code;
    __asm__ volatile("csrr %[temp],scause":[temp]"=r"(scauseVar));

    __asm__ volatile("mv %[temp1], a0":[temp1]"=r"(code));

    __asm__ volatile("mv %[a2], a2":[a2]"=r"(a2));

    if (scauseVar == (0x09) || scauseVar == 0x08)
    {
        //uint64 a1=r_a1();
        /*uint64 a7=r_a7();
        uint64 a5=r_a5();
        uint64 a6=r_a6();*/
        switch (code) {
            case 0x01: {
                uint64 parameter;
                __asm__ volatile("mv %[parameter], a1":[parameter]"=r"(parameter));
                void *ret = MemoryAllocator::getInstance().mem_alloc(parameter);
                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
                break;
            }
            case 0x02: {
                uint64 parameter;
                __asm__ volatile("mv %[parameter], a1":[parameter]"=r"(parameter));
                void *argT = (void *) parameter;
                uint64 ret = MemoryAllocator::getInstance().mem_free(argT);
                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
                break;
            }
            case 0x11: {
                TCB** t, *temp;
                TCB::Body b=(TCB::Body)a2;
                int ret=0;
                char* s;
                void* arg;

                __asm__ volatile("mv %[t], a1":[t] "=r"(t));
                __asm__ volatile("mv %[s], a7":[s] "=r"(s));
                __asm__ volatile("mv %[arg], a6":[arg] "=r"(arg));

                temp=TCB::create(b, s, arg);
                *t=temp;
                if(temp==nullptr) ret=-1;
                else Scheduler::put(*t);

                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
                break;
            }
            case 0x12: {
                TCB::exit();
                break;
            }
            case 0x13: {
                TCB::dispatch();
                break;
            }
            case 0x14: {
                TCB* t;
                __asm__ volatile("mv %[t], a1":[t] "=r"(t));
                TCB::join(t);
                break;
            }
            case 0x21: {
                Semafor **h;
                uint64 val;
                int ret=0;
                __asm__ volatile("mv %[h], a1" : [h] "=r"(h));

                __asm__ volatile("mv %[val], a7" : [val] "=r"(val));
                *h = Semafor::create(val);
                if (*h == nullptr) ret=-1;
                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
                break;
            }
            case 0x22: {
                Semafor *h;
                int ret=0;

                __asm__ volatile("mv %[h], a1":[h] "=r"(h));

                if (h == nullptr) ret=-1;
                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
                break;
            }
            case 0x23: {
                Semafor *s;
                int ret=0;
                __asm__ volatile("mv %[s], a1" : [s] "=r"(s));

                Semafor::wait(s);

                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
                break;
            }
            case 0x24: {
                Semafor *s;
                int ret=0;
                __asm__ volatile("mv %[s], a1" : [s] "=r"(s));
                if (s == nullptr) ret=-1;
                else Semafor::signal(s);

                __asm__ volatile ("mv a0, %[ret]"::[ret]"r"(ret));
                break;
            }
            case 0x41: {
                __getc();
                break;
            }
            case 0x42: {
                char c;
                __asm__ volatile("mv %[c], a1" : [c] "=r"(c));
                __putc(c);
                break;
            }
            default:{
                break;
            }

        }

        Riscv::w_sepc(sepc);
        Riscv::w_sstatus(sstatus);
    }
}
void Riscv::timerTrap() {
    mc_sip(SIP_SSIP);
}

void Riscv::consoleTrap(){
    //int p = plic_claim();
    console_handler();
    //plic_complete(p);
}
void Riscv::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("li t0, 256");
    __asm__ volatile("csrc sstatus, t0");
    __asm__ volatile("sret");
}