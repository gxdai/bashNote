#!/bin/bash
## conslut my contacts for args given

for x in "$@"
do echo '$x = ' $x; grep -i "$x" ./myContactList
done
