# Linux-IPC-Semaphores
Ex05-Linux IPC-Semaphores

# AIM:
To Write a C program that implements a producer-consumer system with two processes using Semaphores.

# DESIGN STEPS:

### Step 1:

Navigate to any Linux environment installed on the system or installed inside a virtual environment like virtual box/vmware or online linux JSLinux (https://bellard.org/jslinux/vm.html?url=alpine-x86.cfg&mem=192) or docker.

### Step 2:

Write the C Program using Linux Process API - Sempahores

### Step 3:

Execute the C Program for the desired output. 

# PROGRAM:

## Write a C program that implements a producer-consumer system with two processes using Semaphores.
```

 * sem.c  - demonstrates a basic producer-consumer
 *                            implementation.              */
#include <stdio.h>	 /* standard I/O routines.              */
#include <stdlib.h>      /* rand() and srand() functions        */
#include <unistd.h>	 /* fork(), etc.                        */
#include <time.h>	 /* nanosleep(), etc.                   */
#include <sys/types.h>   /* various type definitions.           */
#include <sys/ipc.h>     /* general SysV IPC structures         */
#include <sys/sem.h>	 /* semaphore functions and structs.    */
#define NUM_LOOPS	20	 /* number of loops to perform. */
union semun {
    int val;                    /* value for SETVAL */
    struct semid_ds *buf;       /* buffer for IPC_STAT, IPC_SET */
    unsigned short int *array;  /* array for GETALL, SETALL */
    struct seminfo *__buf;      /* buffer for IPC_INFO */
};


int main(int argc, char* argv[]) {
    int sem_set_id;              /* ID of the semaphore set.       */
    union semun sem_val;         /* semaphore value, for semctl(). */
    int child_pid;               /* PID of our child process.      */
    int i;                       /* counter for loop operation.    */
    struct sembuf sem_op;        /* structure for semaphore ops.   */
    int rc;                      /* return value of system calls.  */
    struct timespec delay;       /* used for wasting time.

 /* create a private semaphore set with one semaphore in it, */
    /* with access only to the owner.                           */
    sem_set_id = semget(IPC_PRIVATE, 1, 0600);
    if (sem_set_id == -1) {
        perror("main: semget");
        exit(1);
    }
    printf("semaphore set created, semaphore set id '%d'.\n", sem_set_id);

/* initialize the first (and single) semaphore in our set to '0'. */
    sem_val.val = 0;
    rc = semctl(sem_set_id, 0, SETVAL, sem_val);
    if (rc == -1) {
        perror("main: semctl");
        exit(1);
    }
  /* fork-off a child process, and start a producer/consumer job. */
    child_pid = fork();
    switch (child_pid) {
        case -1:  /* fork() failed */
            perror("fork");
            exit(1);
        case 0:  /* child process here */
            for (i = 0; i < NUM_LOOPS; i++) {
                 /* block on the semaphore, unless its value is non-negative. */
                sem_op.sem_num = 0;
                sem_op.sem_op = -1;
                sem_op.sem_flg = 0;
                semop(sem_set_id, &sem_op, 1);
                printf("consumer: '%d'\n", i);
                fflush(stdout);
            }
            break;
        default: /* parent process here */
            for (i = 0; i < NUM_LOOPS; i++) {
                printf("producer: '%d'\n", i);
                fflush(stdout);
                /* increase the value of the semaphore by 1. */
                sem_op.sem_num = 0;
                sem_op.sem_op = 1;
                sem_op.sem_flg = 0;
                semop(sem_set_id, &sem_op, 1);
                /* pause execution for a little bit, to allow the */
                /* child process to run and handle some requests. */
                /* this is done about 25% of the time. */
                if (rand() > 3 * (RAND_MAX / 4)) {
                    delay.tv_sec = 0;
                    delay.tv_nsec = 10;
                    nanosleep(&delay, NULL);
                }
            }
             /* Remove the semaphore set */
            if (NUM_LOOPS >= 10) {
                semctl(sem_set_id, 0, IPC_RMID, sem_val);
            }
            break;
    }

    return 0;
}
```



## OUTPUT
![WhatsApp Image 2024-10-08 at 9 25 47 PM](https://github.com/user-attachments/assets/863fdd80-95a1-4673-bf64-bffb4a885bd3)





# RESULT:
The program is executed successfully.
