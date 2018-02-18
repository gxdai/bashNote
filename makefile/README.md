# A simple tutorial for makefile

Here are three files, `hellofunc.c`, `hellomake.c`, `hellomake.h`.

Normally the command is 
```
gcc -o hellomake hellomake.c hellofunc.c -I.
```

### Shortcomings
* typing error
* compile all files if you changed one file

## Makefile

### makefile1
```
hellomake: hellomake.c hellofunc.c  # The rule depends on two files
    gcc -o hellmake hellofunc.c hellomake.c -I.
```
