# RE module explannation
## Match characters
`[]` is usually used for specifying a character class.


Metacharacters are not active inside classes. `[abc$]` will match any of `a, b, c, $`. `$` is usually a metacharacter, but inside a character class, it's stripeed of its special natures.

`[^abc]` not inside the class

```
\d
\D
\w
\W
\s
\S
```
## Repeat module
* `*`: 0 or more times.
* `+`: 1 or more times.
* `group`: Determine if the RE matches at the beginning of the string.
* `search`: Scan through a string, looking for any location where this RE matches.
* `findall`: Find all substrings where the RE matches, and returns them as a list.
* `finditer`: Find all substrings where the RE matches, return them as an iterator.
* `|` for A or B matching. `A|B`.
* `^`, `\A`: match the begining of a line or not matching inside `[]`.
* `$`, `\Z`: match the end of a line. To match `$`, use `\$`, or inside `[]`.
* `\b`: match at the begining or end of the word. `\bclass\b` would match only `class`.
* `()`: grouping operation.
* `+`: match 1 or more repitition
* `?`: match 0 or 1 time.
* `m.group`: contains all the matching groups.
