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

