# Learn python functions

## examples for namedtuple
```
import collections

Person = collections.namedtuple('Person', 'name age gender')

bob = Person(name='Bob', age=30, gender='male')

print '\nRepresentation:', bob

jame = Person(name='jane', age=29, gender='female')
print '\nField by name:', jane.name

print '\nField by index: '
for p in [bob, jane]:
    print '%s is a %d year old %s' % p

```

## Itertor & Generators

### Iterators
We use `for` statement for looping over a list.
```
for i in [1, 2, 3]:
    print i,


```

Use join with list
```
>>>','.join(['a', 'b', 'c'])

>>>'a,b,c'
```

### The build-in functin `iter` takes in an iterable orbject (list, string, dict, etc) and returns an iterator.
```
x = iter([1, 2, 3])

x.next()
1
x.next()
2
x.next()
3
```
### Generators simplifies creation of iterators. A generator is a function that produces a sequence of results instead of a single value.
The Generator can only iterate over once. 

`yield` is a keyword that is used like `return`, except the function will return a generator.

To master `yield`, you must understand that **When you call the function, the code you have written in the function body does not run.**.

### Class inheritance
Here is the syntax for subclass definition
```
class DerivedClassName(BaseClassName):
    pass
```

Here is an example for `Employee` inherited from `Person`
```
class Person:
    def __init__(self, first, last):
        self.firstname = first
        self.lastname = last

    def Name(self):
        return self.firstname + ", " + self.lastname


class Employee(Person):
    def __init__(self, first, last, staffnum):
        Person.__init__(self, first, last)
        super().__init__(first, last)   # both work for super class
        self.staffnum = staffnum

    def GetEmployee(self):
        return self.Name() + ", " + self.staffnum
```

The __init__ method of our Employee class explicitly invokes the __init__method of the Person class. We could have used super instead. super().__init__(first, last) is automatically replaced by a call to the superclasses method, in this case __init__:

### Error handling
There are generally two errors
* syntax error.
The parser repeats the offending line and displays a little `arrow` pointing at the earliest point in the line where the eror detected.
* Exceptions
Error detected during execution is called `exception` and are not unconditionally fatal.

Here are some examples for handling exception error
```
while True:
    try:
        x = int(input("Please enter a number: "))
        break
    except ValueError:
        print("Oops! That was no valid number. Try again")
```
Here are the explanations of `try`
* First, the `try` clause` (the statements between `try` and `except`) is executed.
* If no exception occurs, the `except clause` is skipped and execution of the `try` statement is finished.
* If an exception occurs during execution of the try clause, the rest of the clause is skipped. Then if its type matches the exception named after the `except` keyword, the except  clause is executed, and then execution continues after `try` statement.
* If an exception occurs which does not match the exception name in the next except clause, it is passed on to outer `try` statement.

A `try` statement may have more than one except clause, to specifiy handlers for different exceptions. An except clause may name multiple exceptions as a parenthesized tuple, for example:
```
... except (RuntimeError, TypeError, NameError):
...     pass
```

The except clause may specify a variable after exception name. 

The `raise` statement allows the programmer to force a specified exception to occur. For example:
```
raise NameError('HiThere')
```
### `__init__.py`

`__init__.py` for handling the python module recursively loading

### zip
`zip` will return `list`
###` __getattr__`
Only when method is not defined, __getattr__ will be called.
```
class A(object):
    def __init__(self, a, b):
        self.a1 = a
        self.b1 = b
        print('init')
    def mydefault(self, *args):
        print 'default' + str(args[0])
    def __getattr__(self, name):
        print 'other fn: ', name
        return self.mydefault

a1 = A(10, 20)
a1.fn1(33)
a1.fn2('hello')
### print
`from __future__ import print_function` makes the print function from python3

### `_` underscore

one `_` in python means private for example `_me` is private variable `class _me` is private classes. And they will be ignored when `from module import *` 
