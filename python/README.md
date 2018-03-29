# Learn python functions

## examples for namedtuple
```
import collections

Person = collections.namedtuple('Person', 'name age gender')

bob = Person(name='Bob', age=30, gender='male')

print '\nRepresentation:', bob

jame = Person(name='jane', age=29, gender='female')
print '\nField by name:', jane.name

print '\nField by index: '
for p in [bob, jane]:
    print '%s is a %d year old %s' % p

```

## Itertor & Generators

### Iterators
We use `for` statement for looping over a list.
```
for i in [1, 2, 3]:
    print i,


```

Use join with list
```
>>>','.join(['a', 'b', 'c'])

>>>'a,b,c'


### The build-in functin `iter` takes in an iterable orbject (list, string, dict, etc) and returns an iterator.
```
x = iter([1, 2, 3])

x.next()
1
x.next()
2
x.next()
3
```