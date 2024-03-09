#ifndef PROJECT_BASE_V1_1_SYSCALL_C_HPP
#define PROJECT_BASE_V1_1_SYSCALL_C_HPP

#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/TCB.hpp"
#include "../h/semaphore.hpp"
#include "../lib/mem.h"

class TCB;
class Semafor;

typedef TCB* thread_t;
typedef Semafor* sem_t;

void* mem_alloc (size_t size);

int mem_free (void* adr);

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg);

int thread_exit();

void thread_dispatch();

void thread_join( thread_t handle);

int sem_open(sem_t* handle, unsigned init);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

const int EOF = -1;
char getc ();

void putc (char);

#endif