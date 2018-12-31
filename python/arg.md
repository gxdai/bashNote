# arg and kargs in python funciton
## `*args` and `**kargs`

`*args` and `**kargs` allow you to pass a variable number of arguments to function.

* `*args` is a **non-keyworded**  variable length of arguments.
* `**kargs` is a **keyworded** variable length of arguments.

`*` could be used with list, tuple for expansion
`**` could be used with dict for expansion.
## CMD arguments
`required=True` means the argument must be provided.
```
import argparse
ap = argparse.ArgumentParser()
ap.add_argument('-n', '--name', required=True,
                help='name of the user')
```
## Parsing a command-line
Pass a sequence of argument strings to `parse_args()`. By the default, the arguments are taken from `sys.argv[1:]`, but any list of strings can be used.

Return of `parse_args()` is a `namespace` containing the arguments to the command.

Examples:
```
import argparse
parser = argparse.ArgumentParser(
                                 description='Example')
parser.add_argument('--noarg', action='store_true',
                    default=False)
```
## Argument Actions
* `store`: save the value
* `store_const`: save a value as part of the argument specification, rather than a value that comes from the arguments being parsed.
* `store_true`, `store_false`: save the appropriate boolean values.
* `append`: save the value to a list.
* `append_const`: save a value defined in the argument specification to a list.
* `version`: print version details.
## `add_argument()` method
* `dest`: the attribute for the object return by parse\_args()
