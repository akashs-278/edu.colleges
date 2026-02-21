#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
main()
{
    int pid;
    pid = fork();
    if (pid < 0)
    {
        printf("Unable to create Child process!\n");
    }
    else if (pid == 0)
    {
        printf("Child --> pid = %d and Parent --> ppid = %d\n", getpid(), getppid());
    }
    else
    {
        printf("Parent --> pid = %d\n", getpid());
    }
}