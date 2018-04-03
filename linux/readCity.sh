#!/bin/bash
 
echo -n "Enter the name of a city: "        # -n do not ouput trailing newline
read CITY
echo -n "$CITY is "
case $CITY in 
    London | Paris | Berlin | Rome) echo -n "in Europe";;       # ) used to terminate a patten list
'New York' | Chicago | Washington) echo -n "in USA";;           # each clause must be ended with ";;"
Tokyo | Beijing | Bangalore) echo -n "in Asia";;
*) echo -n "some place - but I don't know where";;
esac                    # esac to terminate case
