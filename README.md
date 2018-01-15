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
