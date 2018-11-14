# whether to init parental class
The `__init__` in the parental class is overrided by the derived class.

* The base-class `__init__` is overrided by the derive-class `__init__`.

## pricipal

* When the aim is to keep the initialization performed by the base-class, pure inheritance. Avoid define `__init__` in derived class.
* When the aim to replace the initialization performed by the base-class. Define `__init__` in the derived class.
* When the aim to add the initialization performed by  the base-class. Define `__init__` in the derived class, and explictly call `baseclass.__init__(self, args)`

## override

The method in the derive-class is overriding the method in base-class.


**Explictly call methods in base class`super(derive-class, self).method(args)` or `base-class.method(self, args)`**

## understring `(_)` in python
* For storing the value of last expression.
* For ignoring the specific values.
* To give special meannings and functions to name of variables or funciton.
   * **\_single\_leading\_underscore\_** for declaring *private* variables, functions, methods and classes in a module. And it will be ignored when `from module import *`.
   * **\_\_doule\_leading\_underscore**
     * This is about syntax rather than a convention. *Double underscore* will mangle the attribute names of a class to avoid conflicts of attributes names `__method ---> _Classname__method`
   * **\__double\_leading\_and\_double\_trailing\_underscore\_\_**: This is convention for special variables or methods.
* To use as "Internationalization" 
* To separate the digits of numbers.
