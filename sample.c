#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void foo()
{
    bar();
}

void bar()
{
    baz();
}

void baz()
{
}

int main(int argc, char *argv[])
{
    printf("main\n");
    foo();
    return 0;
}
