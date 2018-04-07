# Chapter 3 Filters and Regular Expression

Many usefule *pipelines* are presented in this chapter. *Regular expression* provide standard ways to specify *patterns* in textual data for applications such as **grep**, **sed/vi**, and **awk**.

## Leading and trailing lines: `head` and `tail`
The command **head** and **tail** are available for displaying the leading and trailing  lines of a file, respectively.
```
head [-k] [file ...]
```
```
tail [-k] [file ...]
```
## Character Translation: tr
The command `tr1` copys standard input to standard output, subtituting or delete specified characters. For example,
```
tr A-Z a-z <file1> file2
```
Creates *file2* as a copy of *file1* with all uppercase letters translated to the corresponding lowercase ones. Another exammple:
```
tr TAB % <file1> file2
```
TAB is CTRL+V. This command will allow you to see TAB in *file1* as % in *file2*.
```
tr string1 string2
```
## TAB Expansion
**expand**          (substitudes spaces for tabs)
**unexpand**        (substitudes tabs for spaces)
Example
```
expand 6 < file
```
Replace each TAB in *file* for spaces, assuming that TAB stops are 6 spaces apart (default 8).

## Folding Text lines
**fold**
```
fold < file
```
The **fold** will break up long lines yb insertting a NEWLINE character where necessary. The default is to limit lines to a length of 80 characters.
* f     treats all uppercase letters as lowercase letter
* n     sort by increasing magnitude
* r     reverses the sense of comparisons and sorts lines in reverse order.

Example:
```
ls -l | sort -n --key=5,6.0
ls -l | sort -nr --key=5,6.0
```
sort the file by increasing byte count.

## grep
<img src="./grep.png" alt="grep argument" width="500">
