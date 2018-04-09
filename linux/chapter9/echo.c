/****** the echo command ********/
#include<stdlib.h>
#include<stdio.h>

int main(int argc, char *argv[]) {
    int i = 1;          // begins with 1
    while (i < argc) {
        printf("%s", argv[i++]);    // outputs trings
        printf(" ");                // output space
    }
    printf("\n");                   // terminates output line
    return EXIT_SUCCESS;            // return exit status
}
