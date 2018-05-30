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
There must be a tap before any command for makefile


### makefile2


### `make -f filename`
Specify the the makefilename


#### Basic makefile
The basic makefile is composed of 
```
target: dependencies
[tab]   system command
```
Here is an example
```
all:
    g++ main.cpp hello.cpp factorial.cpp -o hello
```
The target is called `all`. This is the default target for makefiles. The make utility will execute this target if no other one is specified. And on dependencies for target `all`. 

**Using dependencies**  is good. If you modify a single file in your project, you don'n need to recompile everything.

```
all: hello

hello: main.o factorial.o hello.o
    g++ main.o factorial.o hello.o -o hello
main.o : main.cpp
    g++ -c main.cpp
factorial.o: factorial.cpp
    g++ -c factorial.cpp
hello.o: hello.cpp
    g++ -c hello.cpp
clean:
    rm *o hello
```

Using variables would be nice and clean to see the makefile
```
CC=g++
CFLAGS=-c -Wall

all: hello

hello: main.o factorial.o hello.o
    $(CC) main.o factorial.o hello.o -o hello

main.o: main.cpp
    $(CC) $(CFLAGS) main.cpp

factorial.o: factorial.cpp
    $(CC) $(FLAGS) factorial.cpp

hello.o:    hello.cpp
    $(CC) $(CFLAGS) hello.cpp

clean: 
    rm *o hello
```

Here is some explanantions:
* `$@` the name of the file being generated
* `$<` the first prerequisite (dependency)
* `$^` all the dependencies.
Here a new example
```
CC=g++
CFLAGS=-c -Wall
LDFLAGS
SOURCES=main.cpp hello.cpp factorial.cpp
OBJECTIVES=$(SOURCES:.cpp=.o)       # replace .cpp with .o
EXECUTABLE=hello

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTIVES)
    $(CC) $(LDFLAGS) $(OBJECTIVES) -o $@        # $@ the name of the file being generated

.cpp.o:
    $(CC) $(FLAGS) $< -o $@                     # $< the first prerequisite, $@ the name of the file being generated.
```

## makefile examples
```
[name of rule] : [list of other rules, separated by spaces] [list of sources, separated by spaces]

[TAB] command to execute in the event that the rule is violated
```
**rule name is just a name**
