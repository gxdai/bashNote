# Interactive Use of the Shell
## 2.7 Bash Shell Expansions
Each command line undergoes a number of transformations before it is executed by the Shell. These transformations are called *Shell expansions*. 
* `ls -l \*html`: *filename expansion*.
![bash expansion](./bashExpansion.png)
* Command history
<img alt="commands history" src="./cmd_history.png" width="600">

### Brace and Tilde Expansions (Page 60)
*Brace expansion* provides a shorthand for similar words on command line, example:
* `nano memo{Sep,Oct}2011.txt` becomes `nano memoSep2011.txt memoOct2011.txt1
* `ls chap{0..3}.pdf` becomes `ls chap0.pdf chap1.pdf chap2.pdf chap3.pdf`. (**\.\.** works for numbers and single letter)
* `~` expands the user's own home directory, `~+` the current directory, `~-` the previous directory.
### Variable Expansion

`var=value` (sets variable value). **NO white space is allowed immediately before or after the equal sign (=)**. For example
```
ldir=/usr/local

echo $ldir
```
This will print out `/usr/local`

IF there are blank (proceded by a backslash \\). `unset var` to remove any variable *var*.


The *extent* of a variable name can be delineated by braces ({ and }). For example
```
x=abc
ech ${x}de
```



