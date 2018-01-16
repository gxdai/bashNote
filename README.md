# bashNote

## difference between > and >>
* The ">" sign is used for redirecting the output of a program to something other than stdout (standard output, which is the terminal by default).

* The >> appends to a file or creates the file if it doesn't exist.

## Difference between $() and ${}

* `$(command)` is the same as `` `command` `` (!!!!). It stands for process substitution; it means, run `` `command` `` and put its output here. So

    ```
    echo "Today is $(date). A fine day."
    ```
* `${variable}` is just a disambiguation mechanism, so you can say `${var}text` when you mean the contents of variable `var`, followed by `text`, (as apposed to `$vartext`)

## Manipulation strings

### string length

${#string}

```
string=abcdeijodjgdjdj
echo ${#string}

```

### Length of matching substring at beginning of string

expr match "$string" '$substring'

expr "$string : '$substring'

```
string=abcABC123ABCabc

echo `expr match "$string" 'abc[A-Z]*.2'`
echo `expr "$string" : 'abc[A-Z]*.2'`
```

## Math operation
`echo "$((20+5))"`

## jot description

`jot -r 10 1 1000`, randomly generate 10 numbers between 1 and 1000



## Difference between [ and [[
`[[` is an improvement over `[`. 

    1. For example, with `[` you have to write
    `if [ -f $file]`
    to correctly hand empty strings or file names with spaces in them. With `[[` the quotes are unnecessary:
    `if [[ -f $file ]]`
    2. You can use `&&`, `||`, `<`, `>` with `[[`, but not with `[`.
    3. `[[` is more compatible with regular expression. With `[` you might write
    `if [ "$answer" = y -o "$answer" = yes ]`
    With `[[` you can write this as
    `if [[ $answer =~ ^y(es)?$ ]]`
    4. Patten matching
    `if [[ $ANSWER = y* ]]`

