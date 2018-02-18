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

- For example, with `[` you have to write

    ```Bash
    if [ -f $file]
    ```
  to correctly hand empty strings or file names with spaces in them. With `[[` the quotes are unnecessary:
    ```Bash
    if [[ -f $file ]]
    ```
- You can use `&&`, `||`, `<`, `>` with `[[`, but not with `[`.
- `[[` is more compatible with regular expression. With `[` you might write
    ```Bash
    if [ "$answer" = y -o "$answer" = yes ]
    ```
  With `[[` you can write this as
    ```Bash
    if [[ $answer =~ ^y(es)?$ ]]
    ```
- Patten matching
    ```Bash
    if [[ $ANSWER = y* ]]
    ```

## Regular expression
### Characters
|ch     |legends|                 example|        sample match|                  
|---    |:---:  |:---:                 |         :---:       |
|`\d`   |One digits 0-9|                `file_\d\d`|  `file_25`|               
|`\w`   |word characters|`\w-\w\w\w`            | `A-b_1`|
|`\s`   |space, newline, tab|`a\sb`               | `a b`|
|`\D`   |Not a digit|   `\D\D\D`                | `ABC`|
|`\W`   | Not a word| `\W\W\W\W`                |`*-+=)`|
|`\S`   |Not a space|  `\S\S\S\S`               | `Yoyo`|
### Quantifiers
|quantifier|    legend  | Example| sample match|
|---       |:---:     | :---: | :---:    |
|`+`       | one or more| `\w-\w+`| `A-b_1`     |
|`{3}`     | 3times more| `\D{3}` | `ABC`|
|`{2,4}`   | 2 to 4 times| `\d{2,4}`| `156`|
|`{3,}`    | 3 or more  | `\w{3,}`  | `regex_tutorial`|
|`*`       | 0 or more  | `A*B*C`   | `AAACCC`|
|`?`       | 1 or none  | `plurals?`| `plural`|
### More characters


## () and {} in makefile
There is no difference for () and {} in Makefile


## Special parameters
Special Parameters

The shell treats several parameters specially. These parameters may only be referenced; assignment to them is not allowed.

"*" Expands to the positional parameters, starting from one. When the expansion occurs within double quotes, it expands to a single word with the value of each parameter separated by the first character of the IFS special variable. That is, "$*" is equivalent to "$1c$2c...", where c is the first character of the value of the IFS variable. If IFS is unset, the parameters are separated by spaces. If IFS is null, the parameters are joined without intervening separators.

"@" Expands to the positional parameters, starting from one. When the expansion occurs within double quotes, each parameter expands to a separate word. That is, "$@" is equivalent to "$1" "$2" ... If the double-quoted expansion occurs within a word, the expansion of the first parameter is joined with the beginning part of the original word, and the expansion of the last parameter is joined with the last part of the original word. When there are no positional parameters, "$@" and  $@ expand to nothing (i.e., they are removed).
