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
